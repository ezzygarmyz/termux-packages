TERMUX_PKG_HOMEPAGE=https://myrepos.branchable.com/
TERMUX_PKG_DESCRIPTION="tool to manage all your version control repos"
TERMUX_PKG_VERSION='1.20160123'
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://deb.debian.org/debian/pool/main/m/myrepos/myrepos_${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_DEPENDS="git, perl"
TERMUX_PKG_PLATFORM_INDEPENDENT=yes
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX"
TERMUX_PKG_SHA256=ef35760591133a456ecc39b2fb6f568d81b40f174b78d3a7720ba6150dc3761d
