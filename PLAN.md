# Comparing Branch Prediction Circuits

Implement a functioning RISC-V chip, with a bunch of different branch prediction circuitry, and compare and contrast.

* Define goal
* gather data
* keep sources
* Document plan
* note design decisions
* practice on siliconchipcookies

1. Introduction
    - Context
    - motivation
    - objectives
    - outline of work
    - outline of report
2. Background/SOTA
3. Design/Implementation
4. References
5. Appendices

## Links of papers read
[arrow](https://arxiv.org/pdf/2107.07169)
[risc-v manual unprivileged](https://riscv.org/wp-content/uploads/2019/12/riscv-spec-20191213.pdf)
[risc-v simd core](https://github.com/openhwgroup/core-v-polara-apu)
[spike](https://github.com/riscv-software-src/riscv-isa-sim/blob/master/README.md)
[olympia: outoforder superscalar](https://github.com/riscv-software-src/riscv-perf-model)
[risc-v software](https://github.com/riscv-software-src)
[risc-v assembly manual](https://github.com/riscv-non-isa/riscv-asm-manual)
[risc-v extensions](https://en.wikichip.org/wiki/risc-v/standard_extensions)
[announcing public review of crypto extension](https://riscv.org/blog/2021/09/risc-v-cryptography-extensions-task-group-announces-public-review-of-the-scalar-cryptography-extensions/)
[yosys: open synthesis suite](https://yosyshq.net/yosys/)
[more docs on yosys](https://yosyshq.readthedocs.io/projects/yosys/en/latest/index.html)
[riscv-boom branch prediction circuit](https://docs.boom-core.org/en/latest/sections/branch-prediction/)
[opensouce RISC-V cpu core implemented in Verilog from scratch in one night](https://github.com/darklife/darkriscv)
[securing branch predictors with two level encryption](https://dl.acm.org/doi/10.1145/3404189)

## TODO
* get latex template
* learn risc-v assembly
* read papers on branch prediction
* read up on branch prediction implementations
* compile and run programs on milkv
* gather risc-v implementations and play around with them, learn how they work (fazyrv, darkriscv etc)
* implement risc-v chip
* start implementing branch prediction circuits

## look into
* how do compilers work with riscv extensions? answer: compiler intrinsics
* riscv assembler?
* von neumann vs harvard?
* how do fpgas work? what is look up table?

## compare
* energy consumption
* area on a die
* speed
* maybe number of LUT on FPGA?
* security (from side channel attack for example)
* branch prediction accuracy
