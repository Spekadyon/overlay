# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Interface for GDB to Atmel AVR JTAGICE in circuit emulator"
HOMEPAGE="http://avarice.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DOCS="AUTHORS ChangeLog doc/*.txt"

src_prepare() {
	eapply "${FILESDIR}"/avarice-gcc5.patch
	eapply "${FILESDIR}"/avarice-nullptr.patch
	eapply_user
}
