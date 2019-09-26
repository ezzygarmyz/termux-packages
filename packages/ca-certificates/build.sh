TERMUX_PKG_HOMEPAGE=https://curl.haxx.se/docs/caextract.html
TERMUX_PKG_DESCRIPTION="Common CA certificates"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=20190828
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://curl.haxx.se/ca/cacert.pem
# If the checksum has changed, it may be time to update the package version:
TERMUX_PKG_SHA256=38b6230aa4bee062cd34ee0ff6da173250899642b1937fc130896290b6bd91e3
TERMUX_PKG_SKIP_SRC_EXTRACT=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make_install() {
	local CERTDIR=$TERMUX_PREFIX/etc/tls
	local CERTFILE=$CERTDIR/cert.orig.pem

	mkdir -p $CERTDIR

	termux_download $TERMUX_PKG_SRCURL \
		$CERTFILE \
		$TERMUX_PKG_SHA256
	touch $CERTFILE

	# Build java keystore which is split out into a ca-certificates-java subpackage:
	local KEYUTIL_JAR=$TERMUX_PKG_CACHEDIR/keyutil-0.4.0.jar
	termux_download \
		https://github.com/use-sparingly/keyutil/releases/download/0.4.0/keyutil-0.4.0.jar \
		$KEYUTIL_JAR \
		18f1d2c82839d84949b1ad015343c509e81ef678c24db6112acc6c0761314610

	local JAVA_KEYSTORE_DIR=$PREFIX/lib/jvm/openjdk-9/lib/security
	mkdir -p $JAVA_KEYSTORE_DIR

	java -jar $KEYUTIL_JAR \
		--import \
		--new-keystore $JAVA_KEYSTORE_DIR/jssecacerts \
		--password changeit \
		--force-new-overwrite \
		--import-pem-file $CERTFILE

	mkdir -p $CERTDIR/user-certs.d
	echo "Place your PEM certificates here and then execute command 'update-ca-certificates'." > $CERTDIR/user-certs.d/README.txt

	sed "s|@TERMUX_PREFIX@|$TERMUX_PREFIX|g" \
		$TERMUX_PKG_BUILDER_DIR/update-ca-certificates.sh \
		> $TERMUX_PREFIX/bin/update-ca-certificates
	chmod 700 $TERMUX_PREFIX/bin/update-ca-certificates
}

termux_step_create_debscripts() {
	echo "#!$TERMUX_PREFIX/bin/sh" > ./postinst
	echo "exec $TERMUX_PREFIX/bin/update-ca-certificates" >> ./postinst
}
