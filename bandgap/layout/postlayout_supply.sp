*=========================================================
* Post-layout Bandgap Reference
* Supply Sweep Characterization (TT)
*=========================================================

.lib "/home/ruthwika/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt

.include "top.spice"

VDD vdd 0 DC 2.0

* Extracted Layout
XU0 vdd vref 0 top

.control

set filetype=ascii

echo "VDD(V) VREF(V) IQ(A) POWER(W)" > postlayout_supply.txt

foreach v 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3

    reset

    alter VDD dc=$v

    op

    let vref = v(vref)
    let iq = abs(@VDD[i])
    let power = abs(v(vdd)*@VDD[i])

    echo $v $&vref $&iq $&power >> postlayout_supply.txt

end

quit

.endc

.end

