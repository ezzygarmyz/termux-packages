TERMUX_PKG_HOMEPAGE=http://www.underbit.com/products/mad/
TERMUX_PKG_DESCRIPTION="MAD ID3 tag manipulation library"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.16.2
TERMUX_PKG_SRCURL=https://ftp-osl.osuosl.org/pub/gentoo/distfiles/07/libid3tag-${TERMUX_PKG_VERSION}.codeberg.tar.gz
#TERMUX_PKG_SRCURL=https://github.com/tenacityteam/libid3tag/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=02721346d554c4b4aa3966b134152be65eb4df1fb9322d2d019133238d2ba017
TERMUX_PKG_DEPENDS="zlib"
TERMUX_PKG_BREAKS="libid3tag-dev"
TERMUX_PKG_REPLACES="libid3tag-dev"
