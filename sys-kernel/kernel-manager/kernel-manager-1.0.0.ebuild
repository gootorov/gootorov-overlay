# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit versionator
EGIT_REPO_URI="https://github.com/gootorov/kernel-manager.git"
S="${WORKDIR}"

DESCRIPTION="Simple tool to update or rebuild your kernel"
HOMEPAGE="https://github.com/gootorov/kernel-manager"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	sys-kernel/genkernel-next
	sys-kernel/dracut
"

src_install() {
        dobin ${DISTDIR}/src/${A}
}
