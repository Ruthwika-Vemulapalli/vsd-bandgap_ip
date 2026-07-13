# Bandgap Reference Design Flow

## Overview

This project implements a CMOS Bandgap Reference using the SkyWater SKY130 Open PDK.

The complete analog IC design flow includes:

1. Circuit Design
2. Pre-layout Simulation
3. Temperature Characterization
4. Corner Analysis
5. Layout Design
6. DRC Verification
7. Layout Extraction
8. LVS Verification
9. Post-layout Simulation

---

## Design Flow

Specification
│
▼
Circuit Design
│
▼
Pre-layout Simulation
│
▼
TT / FF / SS Verification
│
▼
Layout Design (Magic)
│
▼
DRC Verification
│
▼
Extraction (ext2spice)
│
▼
LVS (Netgen)
│
▼
Post-layout Simulation

---

## Repository Flow

[200~bandgap/prelayout
│
▼
bandgap/layout
│
▼
results/Layout
│
▼
results/Extraction
│
▼
results/LVS
│
▼
results/PostLayout~

---

## Current Status

| Stage | Status |
|--------|--------|
| Circuit Design | ✅ |
| Pre-layout Simulation | ✅ |
| Layout Design | ✅ |
| DRC Verification | ✅ |
| Layout Extraction | ✅ |
| LVS Verification | ✅ |
| Post-layout Simulation | 🚧 In Progress |

