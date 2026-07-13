# LVS and Post-layout Verification

## Layout Extraction

Layout extraction was performed using Magic.

Commands:

magic
extract all
ext2spice

Generated Files:

- nfets.ext
- pfets.ext
- pnpt1.ext
- resbank.ext
- starternfet.ext

Generated SPICE Netlists:

- nfets.spice
- pfets.spice
- pnpt1.spice
- resbank.spice
- starternfet.spice

---

## DRC Verification

All individual layout blocks were verified using Magic DRC.

Status:

✅ No DRC violations observed.

---

## LVS Verification

Netgen was used to compare the extracted layout netlists with the schematic netlists.

Verification Flow

Schematic

↓

Magic Extraction

↓

SPICE Netlist

↓

Netgen LVS

↓

Matched Devices

↓

Matched Nets

The generated LVS reports are stored under:

results/LVS/

---

## Post-layout Simulation

Extracted SPICE netlists generated from Magic are used for post-layout verification.

Current Status

- Extraction Completed
- Individual Cell Verification Completed
- Top-level Post-layout Simulation Under Progress

