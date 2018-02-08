TERMUX_PKG_HOMEPAGE=http://sourceforge.net/projects/dict/
TERMUX_PKG_DESCRIPTION="Provides many low-level data structures which are helpful for writing compilers"
TERMUX_PKG_VERSION=1.3.2
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/project/dict/libmaa/libmaa-${TERMUX_PKG_VERSION}/libmaa-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=59a5a01e3a9036bd32160ec535d25b72e579824e391fea7079e9c40b0623b1c5
termux_step_pre_configure() {
    LDFLAGS+=" -llog"
}

