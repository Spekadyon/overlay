# Copyright 2018-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python{3_5,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="A wrapper script for Borg backup software that creates and prunes backups"
HOMEPAGE="https://torsion.org/borgmatic/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	app-backup/borgmatic
	>=dev-python/pykwalify-1.6.0
	<dev-python/pykwalify-14.06
	>=dev-python/ruamel-yaml-0.15.0
	<dev-python/ruamel-yaml-0.17.0
	!~dev-python/ruamel-yaml-0.15.0
	>=dev-python/colorama-0.4.1
	<dev-python/colorama-0.5.0
"
RDEPEND="${DEPEND}"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare() {
	sed -i "s/find_packages()/['borgmatic']/g" "${S}/setup.py"
	eapply_user
}
