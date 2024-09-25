# Thinking In Systems - Donella Meadows
# Figure 11. Coffee Temperature
reset 
set termopt enhanced
set terminal pngcairo size 1200,800
set output "fig-19.png"
unset key

set xlabel "hours"
set ylabel "temperature (°C)"
set title "Temperature over time"

plot [0:24][-6:20] "build/fig-19.dat" u 1:2 with lines, \
    "" u 1:3 with lines, \
    "" u 1:4 with lines, \
    "" u 1:5 with lines, \
