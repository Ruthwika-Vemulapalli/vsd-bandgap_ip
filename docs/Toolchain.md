# Toolchain

## Technology

- SkyWater SKY130A Open PDK

---

## Magic

Purpose:

- Layout Design
- DRC Verification
- Layout Extraction

Example Commands

```bash
magic -T sky130A.tech
extract all
ext2spice
Ngspice

Purpose:

Pre-layout Simulation
Temperature Sweep
Corner Analysis
Supply Sweep
Post-layout Simulation
Netgen

Purpose:

Layout versus Schematic (LVS)

Example

netgen -batch lvs
Generated Files
.mag
.ext
.spice
.log
Output Directories
results/

├── CTAT
├── PTAT
├── Ideal_BGR
├── Self_Biased_BGR
├── Layout
├── DRC
├── Extraction
├── LVS
└── PostLayout

