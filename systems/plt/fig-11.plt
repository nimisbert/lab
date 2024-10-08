# Thinking In Systems - Donella Meadows
# Figure 11. Coffee Temperature
reset 
set termopt enhanced
set terminal pngcairo size 1200,800
set output "fig-11.png"
unset key

set xlabel "minutes"
set ylabel "temperature (°C)"
set title "Temperature over time"

plot [0:8][0:100] "build/fig-11.dat" u 1:2 with lines, \
    "" u 1:3 with lines, \
    "" u 1:4 with lines, \
    "" u 1:5 with lines, \
    "" u 1:6 with lines, \
    "" u 1:7 with lines, \
    "" u 1:8 with lines
