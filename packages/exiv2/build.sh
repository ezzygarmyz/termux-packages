TERMUX_PKG_HOMEPAGE=https://exiv2.org/
TERMUX_PKG_DESCRIPTION="Exif, Iptc and XMP metadata manipulation library and tools"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.27.4
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/Exiv2/exiv2/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=9fb2752c92f63c9853e0bef9768f21138eeac046280f40ded5f37d06a34880d9
TERMUX_PKG_DEPENDS="libandroid-support, libc++, libexpat, zlib"
TERMUX_PKG_BREAKS="exiv2-dev"
TERMUX_PKG_REPLACES="exiv2-dev"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DEXIV2_ENABLE_VIDEO=ON
-DEXIV2_ENABLE_BUILD_SAMPLES=OFF"
