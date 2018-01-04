# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit flag-o-matic toolchain-funcs

SRC_URI="ftp://sourceware.org/pub/newlib/${P}.tar.gz"
KEYWORDS="riscv"

export CBUILD=${CBUILD:-${CHOST}}
export CTARGET=${CTARGET:-${CHOST}}
if [[ ${CTARGET} == ${CHOST} ]] ; then
	if [[ ${CATEGORY} == cross-* ]] ; then
		export CTARGET=${CATEGORY#cross-}
	fi
fi

DESCRIPTION="Newlib is a C library intended for use on embedded systems"
HOMEPAGE="https://sourceware.org/newlib/"

LICENSE="NEWLIB LIBGLOSS GPL-2"
SLOT="0"
IUSE="nls threads unicode crosscompile_opts_headers-only"
RESTRICT="strip"

NEWLIBBUILD="${WORKDIR}/build"

src_prepare() {
    epatch "${FILESDIR}/${P}-riscv.patch"
	default
}

src_configure() {
	# we should fix this ...
	unset LDFLAGS
	CHOST=${CTARGET} strip-unsupported-flags

	local myconf=(
		# Disable legacy syscall stub code in newlib.  These have been
		# moved to libgloss for a long time now, so the code in newlib
		# itself just gets in the way.
		--disable-newlib-supplied-syscalls
	)
	[[ ${CTARGET} == "spu" ]] \
		&& myconf+=( --disable-newlib-multithread ) \
		|| myconf+=( $(use_enable threads newlib-multithread) )

	mkdir -p "${NEWLIBBUILD}"
	cd "${NEWLIBBUILD}"

	ECONF_SOURCE=${S} \
	econf \
		$(use_enable unicode newlib-mb) \
		$(use_enable nls) \
		"${myconf[@]}"
}

src_compile() {
	emake -C "${NEWLIBBUILD}" CFLAGS_FOR_TARGET="${CFLAGS} -U_FORTIFY_SOURCE -fno-PIC"
}

src_install() {
	cd "${NEWLIBBUILD}"
	emake -j1 DESTDIR="${D}" install
#	env -uRESTRICT CHOST=${CTARGET} prepallstrip
	# minor hack to keep things clean
	rm -fR "${D}"/usr/share/info
	rm -fR "${D}"/usr/info
}
