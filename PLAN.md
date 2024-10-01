# RISC-V Processor Subsystem Analysis

Maybe compare difference implementations of a risc-v extension.

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
[risc-v crypto](https://github.com/riscv/riscv-crypto) -> includes rtl experimental impl
[announcing public review of crypto extension](https://riscv.org/blog/2021/09/risc-v-cryptography-extensions-task-group-announces-public-review-of-the-scalar-cryptography-extensions/)
[yosys: open synthesis suite](https://yosyshq.net/yosys/)
[more docs on yosys](https://yosyshq.readthedocs.io/projects/yosys/en/latest/index.html)
[riscv-boom branch prediction circuit](https://docs.boom-core.org/en/latest/sections/branch-prediction/)
[opensouce RISC-V cpu core implemented in Verilog from scratch in one night](https://github.com/darklife/darkriscv)

## look into
* how do compilers work with riscv extensions? answer: compiler intrinsics
* riscv assembler?
* von neumann vs harvard?
* how do fpgas work?

## compare
* energy consumption
* area on a die
* speed
* maybe number of LUT on FPGA?

## interesting comparison topics
* branch prediction
* instruction level parallelism
* out of order execution
* alu
* fpu
* cache stuff
* riscv crypto extension
