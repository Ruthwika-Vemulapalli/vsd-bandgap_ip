.lib "/home/ruthwika/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt

.include "top.spice"

VDD vdd 0 dc 1.8

XU0 vdd vref 0 top

.dc VDD 1.8 3.3 0.1

.control

run

set filetype=ascii

wrdata postlayout_supply_dc.txt \
v(vdd) \
v(vref) \
@VDD[i]

quit

.endc

.end


