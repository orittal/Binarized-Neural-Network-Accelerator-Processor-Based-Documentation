# Binarized Neural Network Accelerator Processor Based

This repository contains the design, implementation, and verification of a specialized hardware accelerator for **Binarized Neural Networks (BNNs)**, integrated directly into the pipeline of a **DLX RISC processor**. 

The project addresses the "Power & Memory Wall" in edge-device deep learning by replacing energy-heavy floating-point operations with highly efficient binary bitwise logic (XNOR and Popcount operations).

### Key Features & Architecture
* **ISA Extension:** Introduction of custom DLX instructions designed to handle batch bitwise operations within a single clock cycle.
* **Pipeline Integration:** Direct extension of the DLX execution stage (ALU), routing BNN-specific opcodes to dedicated hardware logic to avoid coprocessor bus overhead.
* **Performance Boost:** Achieves an **99%** instruction count reduction.
* **Low Hardware Overhead:** Significant throughput gains with only a **94% area increase** relative to the original DLX core.
* **Accuracy vs. Efficiency Trade-off:** Implementing hardware binarization resulting in a minor **11%** accurace degration, whie drasticly reducing memory footprint and computational complexity. 

### Tech Stack / Tools
* **Hardware Description Language:** Verilog
* **Simulation & Verification:** Xilinx Vivado / ModelSim
* **Architecture:** DLX RISC Core
