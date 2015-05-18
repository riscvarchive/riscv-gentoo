EAPI="5"
inherit eutils autotools git-r3

DESCRIPTION="RISC-V proxy kernel"
HOMEPAGE="http://riscv.org/download.html#tab_pk"
EGIT_REPO_URI="git://github.com/riscv/riscv-pk"
EGIT_COMMIT="b2251a985c46fb0399d154557937cd5535f6f1af"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="riscv"
IUSE=""

DEPEND=""

src_configure() {
        mkdir build
        cd build
        export ECONF_SOURCE=".."
        econf
}

src_compile() {
        cd build
        emake
}

src_install() {
        cd build
        emake DESTDIR="${D}" install
}
