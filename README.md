Gentoo on RISC-V

This repository contains the port of Gentoo to RISC-V.  It holds the
relevant Gentoo infastructure files and contains patches for packages
that have yet to be upstreamed.

Installing the RISC-V Cross Compiler

This repository contains toolchain patches that allow a RISC-V cross
compiler to be bootstrapped via crossdev, Gentoo's standard cross
compilation tool.  While a number of configurations may work, the
toolchain tends to be a bit flaky when it comes to mixing versions
arbitrarily.  The following configuration is known to work:

# layman --add riscv
# crossdev -t riscv64-unknown-linux-gnu \
    --ov-output /usr/local/portage/ \
    --binutils ~2.25 \
    --kernel ~3.14 \
    --gcc ~4.9.2 \
    --libc ~2.20

Cross-Compiling a Gentoo Base System

