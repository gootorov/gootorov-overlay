# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit versionator
SRC_URI="https://wire-app.wire.com/linux/wire-${PV}-x86_64.AppImage -> ${PN}"
S="${WORKDIR}"

DESCRIPTION="End-to-end encrypted chats, calls and files, protected by European privacy laws."
HOMEPAGE="https://wire.com/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_install() {
	dobin ${DISTDIR}/${PN}
}
