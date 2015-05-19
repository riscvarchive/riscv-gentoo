EAPI="5"
inherit eutils autotools git-r3

DESCRIPTION="RISC-V proxy kernel"
HOMEPAGE="http://riscv.org/download.html#tab_pk"
EGIT_REPO_URI="git://github.com/riscv/riscv-pk"
EGIT_COMMIT="3f9b5d7ab80d11eb11739d9a02b4d0b66ace058b"

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
