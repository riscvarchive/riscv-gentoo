EAPI="5"
inherit eutils autotools git-r3

DESCRIPTION="RISC-V ISA golden model"
HOMEPAGE="http://riscv.org/download.html#tab_spike"
EGIT_REPO_URI="git://github.com/riscv/riscv-isa-sim"
EGIT_COMMIT="75207d80bd3ed11997d3df56048cc3edf09cc96a"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64"
IUSE=""

DEPEND="sys-libs/riscv-fesvr"
