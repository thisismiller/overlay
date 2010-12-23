# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit cmake-utils

DESCRIPTION="C++ benchmarking framework"
HOMEPAGE="http://blog.quibb.org/cppbench"
SRC_URI="https://bitbucket.org/thisismiller/cppbench/get/${PV}.tar.bz2 ->
${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-util/cmake"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

src_configure () {
	local mycmakeargs="-DBUILD_EXAMPLES:BOOL=False
		-DINCLUDE_INSTALL_DIR:STRING=include/cppbench"
	cmake-utils_src_configure
}
