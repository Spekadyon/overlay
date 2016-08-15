# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MY_P="CImg-${PV}"

DESCRIPTION="C++ template image processing toolkit"
HOMEPAGE="http://cimg.eu/"
SRC_URI="http://cimg.eu/files/CImg_${PV}.zip"

LICENSE="CeCILL-2 CeCILL-C"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

DEPEND="app-arch/unzip"

S=${WORKDIR}/${MY_P}

src_install() {
	dodoc README.txt
	doheader CImg.h
	use doc && dohtml -r html/
}