# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# gentoo-x86: sys-devel/binutils-2.25
# riscv-gnu-toolchain: 5d0c96cfdae1657dacf7cf48ba1b121790e9c342

EAPI="4"

PATCHVER="1.1"
ELF2FLT_VER=""
inherit toolchain-binutils

KEYWORDS="riscv"

PATCHES=("${FILESDIR}/${P}-riscv-${PR}.patch")
