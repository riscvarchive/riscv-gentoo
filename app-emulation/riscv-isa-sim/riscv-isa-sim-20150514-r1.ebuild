EAPI="5"
inherit eutils autotools git-r3

DESCRIPTION="RISC-V ISA golden model"
HOMEPAGE="http://riscv.org/download.html#tab_spike"
EGIT_REPO_URI="git://github.com/riscv/riscv-isa-sim"
EGIT_COMMIT="e7dd2737f79e6d9d65de423cb785ddc2b0e2838e"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64"
IUSE=""

DEPEND="sys-libs/riscv-fesvr"

src_prepare() {
         epatch "${FILESDIR}"/${P}-revert_mip_encoding.patch
}
