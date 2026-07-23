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

set filetype=ascii

echo "Temp(C)   VREF(V)" > postlayout_temp_vref.txt

foreach t -40 -35 -30 -25 -20 -15 -10 -5 0 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100 105 110 115 120 125

    reset
    set temp = $t

    echo "===================="
    echo "Requested Temp = " $t

    op

    print v(vref)

    let vref = v(vref)

    echo $t $&vref >> postlayout_temp_vref.txt

end

quit

.endc
