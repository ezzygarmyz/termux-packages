TERMUX_PKG_HOMEPAGE=https://www.gnupg.org/related_software/libgpg-error/
TERMUX_PKG_DESCRIPTION="Small library that defines common error values for all GnuPG components"
TERMUX_PKG_VERSION=1.27
TERMUX_PKG_SRCURL=https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=4f93aac6fecb7da2b92871bb9ee33032be6a87b174f54abf8ddf0911a22d29d2
TERMUX_PKG_RM_AFTER_INSTALL="share/common-lisp"

termux_step_post_extract_package () {
	# Upstream only has Android definitions for platform-specific lock objects.
	# See https://lists.gnupg.org/pipermail/gnupg-devel/2014-January/028203.html
	# for how to generate a lock-obj header file on devices.

	# For aarch64 this was generated on a device:
	cp $TERMUX_PKG_BUILDER_DIR/lock-obj-pub.aarch64-unknown-linux-android.h $TERMUX_PKG_SRCDIR/src/syscfg/

	if [ $TERMUX_ARCH = i686 ]; then
		# Android i686 has same config as arm (verified by generating a file on a i686 device):
		cp $TERMUX_PKG_SRCDIR/src/syscfg/lock-obj-pub.arm-unknown-linux-androideabi.h \
		   $TERMUX_PKG_SRCDIR/src/syscfg/lock-obj-pub.linux-android.h
	elif [ $TERMUX_ARCH = x86_64 ]; then
		# FIXME: Generate on device.
		cp $TERMUX_PKG_BUILDER_DIR/lock-obj-pub.aarch64-unknown-linux-android.h \
			$TERMUX_PKG_SRCDIR/src/syscfg/lock-obj-pub.linux-android.h
	fi
}
