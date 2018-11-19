TERMUX_PKG_HOMEPAGE=https://newsboat.org/
TERMUX_PKG_DESCRIPTION="RSS/Atom feed reader for the text console"
TERMUX_PKG_VERSION=2.13
TERMUX_PKG_SHA256=c73613b4f08c875bae2c4e7828e67291e7599e9cabed528089f8378f520b335e
TERMUX_PKG_SRCURL=https://newsboat.org/releases/${TERMUX_PKG_VERSION}/newsboat-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_DEPENDS="libandroid-support, libandroid-glob, json-c, libsqlite, libcurl, libxml2, stfl, ncurses, openssl"
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_RM_AFTER_INSTALL="share/locale"
TERMUX_PKG_REVISION=1
TERMUX_PKG_CONFLICTS=newsbeuter
TERMUX_PKG_REPLACES=newsbeuter
termux_step_pre_configure() {
	cp $TERMUX_PKG_BUILDER_DIR/lockf.c $TERMUX_PKG_SRCDIR/src/
}
