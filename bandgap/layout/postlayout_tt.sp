*=========================================================
* Post-layout Bandgap Reference Characterization (TT)
*=========================================================

.lib "/home/ruthwika/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt

.include "top.spice"

VDD vdd 0 DC 2.0

* Top-level extracted layout
XU0 vdd vref 0 top

.op

.control

run

echo "===================================="
echo " POST-LAYOUT TT RESULTS"
echo "===================================="

print v(vref)
print v(vdd)
print @VDD[i]

let iq = abs(@VDD[i])
let power = abs(v(vdd)*@VDD[i])

echo ""
echo "Derived Parameters"

print iq
print power

quit

.endc

.end
