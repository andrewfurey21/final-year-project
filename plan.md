# Comparing Branch Prediction Circuits

Implement a functioning RISC-V chip, with a bunch of different branch prediction circuitry, and compare and contrast.

## compare
* energy consumption
* area on a die
* speed
* maybe number of LUT on FPGA?
* security (from side channel attack for example)
* branch prediction accuracy
* compare to different pipeline lengths
* loops vs switch/ifs vs function calls/returns vs unconditional branch

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

## look into
* how do compilers work with riscv extensions? answer: compiler intrinsics
* riscv assembler? answer: just use gnu as
* von neumann vs harvard?
* what is a microarch?
* how do fpgas work? what is look up table?
* what are the bounds? does it have something to do with halting problem? what are the bounds?!
* pipelining
* superscalar

