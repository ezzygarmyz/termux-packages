TERMUX_PKG_HOMEPAGE=https://github.com/wg/wrk
TERMUX_PKG_DESCRIPTION="Modern HTTP benchmarking tool"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_VERSION=4.1.0
TERMUX_PKG_SRCURL=https://github.com/wg/wrk/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=6fa1020494de8c337913fd139d7aa1acb9a020de6f7eb9190753aa4b1e74271e
TERMUX_PKG_DEPENDS="openssl, luajit"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_KEEP_STATIC_LIBRARIES=true
TERMUX_PKG_EXTRA_MAKE_ARGS="WITH_OPENSSL=$TERMUX_PREFIX/usr WITH_LUAJIT=$TERMUX_PREFIX/usr"

