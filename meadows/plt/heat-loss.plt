# Donella Meadows - Thinking In Systems 
# Figure 20. Furnace not keeping up in leaky house
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "heat-loss.png"

set xlabel "hour"
set ylabel "temperature °C"
set title "Temperature over time in a badly isolated house"

plot [0:24][-5:20] "dat/heat-loss.dat" u 1:2 w l t "room temperature", \
                   "" u 1:3 w l t "thermostat setting", \
                   "" u 1:4 w l t "outside temperature"
