# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# gentoo-x86: sys-devel/binutils-2.25
# riscv-gnu-toolchain: eff2e68ea0889f1f1cb583a9f1be389de0b6f43a

EAPI="4"

PATCHVER="1.1"
ELF2FLT_VER=""
inherit toolchain-binutils

KEYWORDS="riscv"

PATCHES=("${FILESDIR}/${P}-riscv-${PR}.patch")
