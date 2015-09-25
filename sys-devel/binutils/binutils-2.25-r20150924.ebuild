# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# gentoo-x86: sys-devel/binutils-2.25
# riscv-gnu-toolchain: dd2c7916fe153c15faa5abe72e1954b8d81c8196

EAPI="4"

PATCHVER="1.1"
ELF2FLT_VER=""
inherit toolchain-binutils

KEYWORDS="riscv"

PATCHES=("${FILESDIR}/${P}-riscv-${PR}.patch")
