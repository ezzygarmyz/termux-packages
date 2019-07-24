TERMUX_PKG_HOMEPAGE=https://dev.yorhel.nl/ncdu
TERMUX_PKG_DESCRIPTION="Disk usage analyzer"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_VERSION=1.14
TERMUX_PKG_REVISION=1
TERMUX_PKG_SHA256=c694783aab21e27e64baad314b7c1ff34541bfa219fe9645ef6780f1c5558c44
TERMUX_PKG_SRCURL=https://dev.yorhel.nl/download/ncdu-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_DEPENDS="ncurses, libandroid-support"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-shell=$TERMUX_PREFIX/bin/bash"
