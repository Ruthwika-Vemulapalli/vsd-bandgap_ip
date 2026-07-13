# Layout Methodology

## Objective

The layout was implemented using Magic VLSI with the SkyWater SKY130A Open PDK. A hierarchical approach was adopted to improve modularity, simplify verification, and enable independent validation of each building block.

---

## Hierarchical Layout

The complete Bandgap Reference layout consists of the following cells:

- NFET Array
- PFET Array
- PNP Array
- Resistor Bank
- Starter Circuit
- Top-level Integration

Each block was designed, verified, and then instantiated into the top-level layout.

---

## Design Considerations

### Device Matching

- Symmetric placement of matched devices
- Common orientation where applicable
- Uniform routing for matched current paths

### Routing

- Metal1 used for local routing
- Higher metal layers reserved for interconnections
- Minimized parasitic resistance

### Guard Rings

Guard rings and substrate connections were incorporated wherever required to reduce substrate noise.

---

## Layout Blocks

### NFET Array

Image:

results/Layout/nfets.png

Purpose:

Implements the self-biased current mirror and startup circuitry.

---

### PFET Array

Image:

results/Layout/pfets.png

Purpose:

Provides PMOS current mirrors and bias generation.

---

### PNP Array

Image:

results/Layout/pnp10.png

Purpose:

Implements CTAT voltage generation using parasitic PNP devices.

---

### Resistor Bank

Image:

results/Layout/resbank.png

Purpose:

Implements PTAT voltage generation using high-resistance polysilicon resistors.

---

### Top Layout

Image:

results/Layout/top.png

Purpose:

Hierarchical integration of all layout cells.

---

## Verification

The completed layout was verified using Magic DRC before extraction.

