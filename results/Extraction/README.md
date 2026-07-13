# Layout Extraction Results

## Tool

- Magic VLSI 8.3.672
- SKY130A PDK

---

## Successfully Extracted Layout Cells

| Layout Cell | EXT Generated | SPICE Generated |
|--------------|:------------:|:---------------:|
| nfet | ✅ | Internal Cell |
| nfets | ✅ | ✅ |
| pfet | ✅ | Internal Cell |
| pfets | ✅ | ✅ |
| pnpt1 | ✅ | ✅ |
| res1p41 | ✅ | Internal Cell |
| resbank | ✅ | ✅ |
| starternfet | ✅ | ✅ |

---

## Generated Files

- nfets.ext
- nfets.spice
- pfets.ext
- pfets.spice
- pnpt1.ext
- pnpt1.spice
- resbank.ext
- resbank.spice
- starternfet.ext
- starternfet.spice

---

## Notes

The extraction process completed successfully for all individual layout blocks.

The generated SPICE netlists include extracted device connectivity and parasitic capacitances.

Top-level extraction (top.mag) is currently blocked due to a Magic runtime segmentation fault in the local environment.
