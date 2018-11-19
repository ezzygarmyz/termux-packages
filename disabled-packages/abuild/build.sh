TERMUX_PKG_HOMEPAGE=https://github.com/alpinelinux/abuild
TERMUX_PKG_DESCRIPTION="Build script to build Alpine packages"
TERMUX_PKG_VERSION=3.2.0
TERMUX_PKG_SHA256=45b26674ca416e71612ff7924169a890a2cc45e945ecca33bc382f98e9ec3eb7
TERMUX_PKG_SRCURL=https://github.com/alpinelinux/abuild/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_DEPENDS="openssl"
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_EXTRA_MAKE_ARGS="sysconfdir=$TERMUX_PREFIX/etc"
