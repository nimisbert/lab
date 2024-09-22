# Donella Meadows - Thinking In Systems
# Figure 18. The furnace warms a cool room, as heat leats from it
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "room-temperature.png"

set xlabel "hour"
set ylabel "temperature °C"
set title "One stock with two balancing loops"

plot [0:8][0:20] "dat/one-stock.dat" u 1:2 w l t "room temperature", \
                 "" u 1:3 w l t "thermostat setting", \
                 "" u 1:4 w l t "outside temperature"
