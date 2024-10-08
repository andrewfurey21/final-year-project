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

## Objectives
## Plan

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
[branch prediction](https://en.wikipedia.org/wiki/Branch_predictor)

## look into
* how do compilers work with riscv extensions? answer: compiler intrinsics
* riscv assembler? answer: just use gnu as
* von neumann vs harvard?
* how do fpgas work? what is look up table?

## on writing well
### Write for your audience
* who am i writing this for?
* top 1-3 takeaways from this paper

### Write simply
* fewer than 30 words per sentence.
* ordinary words and simple sentences
* remove fluff: if you can remove something without losing meaning, do it.
* avoid jargon, if you can't explain it so that the audience knows what youre talking about.

### Remove weasel words
* replace adjective with data

### Apply the so what test
* every sentence, ask so what.

### Add a structure
* situation: context
* complication: why it matters
* resolution: action

### Be pursuasive
* use active voice: the data center efficiency improved vs the the data center efficiency was improved

### Non obsolete writing
* avoid using references that change with time/location

## compare
* energy consumption
* area on a die
* speed
* maybe number of LUT on FPGA?
* security (from side channel attack for example)
* branch prediction accuracy
* compare to different pipeline lengths
* loops vs switch/ifs vs function calls
