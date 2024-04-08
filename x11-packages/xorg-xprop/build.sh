TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="Utility to print properties of X11 windows"
# Licenses: MIT, HPND
TERMUX_PKG_LICENSE="custom"
TERMUX_PKG_LICENSE_FILE="COPYING"
TERMUX_PKG_MAINTAINER="Rafael Kitover <rkitover@gmail.com>"
TERMUX_PKG_VERSION="1.2.7"
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/app/xprop-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=4436e3148bb91a162406230d9f736a49ca8b50b74790015dc15d78d6ce8e825f
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libx11"
TERMUX_PKG_BUILD_DEPENDS="xorg-util-macros"
