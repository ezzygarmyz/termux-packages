TERMUX_PKG_HOMEPAGE=https://github.com/spook/sshping
TERMUX_PKG_DESCRIPTION="measure character-echo latency and bandwidth for an interactive ssh session"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.1.4
TERMUX_PKG_SRCURL=https://github.com/spook/sshping/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=589623e3fbe88dc1d423829e821f9d57f09aef0d9a2f04b7740b50909217863a
TERMUX_PKG_DEPENDS="libssh"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	rm -f CMakeLists.txt
}
