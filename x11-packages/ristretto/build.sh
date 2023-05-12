TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/apps/ristretto/start
TERMUX_PKG_DESCRIPTION="The Ristretto Image Viewer is an application that can be used to view, and scroll through images."
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
_MAJOR_VERSION=0.13
TERMUX_PKG_VERSION=${_MAJOR_VERSION}.0
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/apps/ristretto/${_MAJOR_VERSION}/ristretto-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=596676b41daada390c8d83e5bb83be6832a260f4bf0dbcc651ac0b68c0f4e301
TERMUX_PKG_DEPENDS="file, gdk-pixbuf, glib, gtk3, libcairo, libexif, libx11, libxfce4ui, libxfce4util, pango, xfconf"
TERMUX_PKG_RECOMMENDS="tumbler"
