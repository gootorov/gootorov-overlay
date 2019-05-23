# Copyright 2019 Igor Gutorov
# Distributed under the terms of the MIT License

EAPI=7

inherit cmake-utils

CMAKE_MIN_VERSION=3.8.0

SRC_URI="https://github.com/MaskRay/ccls/archive/${PV}.tar.gz -> ${PF}.tar.gz"
S="${WORKDIR}/${PF}"

DESCRIPTION="C/C++/ObjC language server supporting cross references, hierarchies, completion and semantic highlighting"
HOMEPAGE="https://github.com/MaskRay/ccls"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
REQUIRED_USE=""

DEPEND="sys-devel/clang
		sys-devel/llvm
		dev-libs/rapidjson"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		-DSYSTEM_CLANG=ON
		-DCMAKE_PREFIX_PATH="/usr/lib/llvm/$(llvm-config --version | cut -d . -f 1)"
	)
	cmake-utils_src_configure
}
