EAPI="5"
inherit eutils autotools git-r3

DESCRIPTION="RISC-V ISA golden model"
HOMEPAGE="http://riscv.org/download.html#tab_spike"
EGIT_REPO_URI="git://github.com/riscv/riscv-isa-sim"
EGIT_COMMIT="48faf847c28cebfe864c543498a9aaff2feb0fd3"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64"
IUSE=""

DEPEND="sys-libs/riscv-fesvr"
