# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-lang/perl/perl-5.20.2.ebuild,v 1.11 2015/06/16 13:20:30 dilfridge Exp $

EAPI=5

inherit eutils alternatives flag-o-matic toolchain-funcs multilib multiprocessing autotools

PATCH_VER=1

PERL_OLDVERSEN="5.20.0 5.20.1"
MODULE_AUTHOR=SHAY

SHORT_PV="${PV%.*}"
MY_P="perl-${PV/_rc/-RC}"
MY_PV="${PV%_rc*}"

DESCRIPTION="Larry Wall's Practical Extraction and Report Language"

SRC_URI="
	mirror://cpan/src/5.0/${MY_P}.tar.bz2
	mirror://cpan/authors/id/${MODULE_AUTHOR:0:1}/${MODULE_AUTHOR:0:2}/${MODULE_AUTHOR}/${MY_P}.tar.bz2
	mirror://gentoo/${MY_P}-patches-${PATCH_VER}.tar.xz
	http://dev.gentoo.org/~dilfridge/distfiles/${MY_P}-patches-${PATCH_VER}.tar.xz
         https://raw.github.com/arsv/perl-cross/releases/${P}-cross-0.9.7.tar.gz 
"
HOMEPAGE="http://www.perl.org/"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0/${SHORT_PV}"
KEYWORDS="cross-compiling"
IUSE="berkdb debug doc gdbm ithreads"

RDEPEND="
	berkdb? ( sys-libs/db:* )
	gdbm? ( >=sys-libs/gdbm-1.8.3 )
	app-arch/bzip2
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	!prefix? ( elibc_FreeBSD? ( sys-freebsd/freebsd-mk-defs ) )
"
PDEPEND="
	>=app-admin/perl-cleaner-2.5
	>=virtual/perl-File-Temp-0.230.400-r2
	>=virtual/perl-Data-Dumper-2.154.0
"
# bug 390719, bug 523624

S="${WORKDIR}/${MY_P}"

src_configure() {
        ./configure \
                    --target=${CTARGET} \
                    --prefix=${EPREFIX}/usr \
                    || die "configure failed"
}

src_compile() {
        make || die "make failed"
}
