# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# gentoo-x86: sys-devel/binutils-2.24-r3 (that's right -- there's no 2.25 yet!)
# riscv-gnu-toolchain: f06ba6a681552af465926622a16e8e30aa5e4cc2

#PATCHVER="1.0"
ELF2FLT_VER=""
inherit toolchain-binutils

KEYWORDS="-riscv"

PATCHES=("${FILESDIR}/${P}-riscv-${PR}.patch")
