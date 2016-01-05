EAPI="5"
inherit eutils autotools git-r3

DESCRIPTION="RISC-V ISA golden model"
HOMEPAGE="http://riscv.org/download.html#tab_spike"
EGIT_REPO_URI="git://github.com/riscv/riscv-isa-sim"
EGIT_COMMIT="0f622f0e89ff62022b59ac0124fcdf8198da020d"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64"
IUSE=""

DEPEND="sys-libs/riscv-fesvr"
