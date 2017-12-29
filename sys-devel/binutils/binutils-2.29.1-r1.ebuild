# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

PATCHVER="3"
ELF2FLT_VER=""
inherit toolchain-binutils

KEYWORDS="riscv"

PATCHES=( "${FILESDIR}/${P}-nogoldtest.patch"
		  "${FILESDIR}/${P}-riscv.patch" )

