EAPI="5"
inherit eutils autotools git-r3

DESCRIPTION="RISC-V front-end server"
HOMEPAGE="http://riscv.org/download.html#tab_fesvr"
EGIT_REPO_URI="git://github.com/riscv/riscv-fesvr"
EGIT_COMMIT="a008ee600b4c9a8e74456d2496720673a5545ac2"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64"
IUSE=""

src_prepare() {
        epatch "${FILESDIR}/${P}-destdir.patch"
}
