# Donella Meadows - Thinking In Systems
# Figure 6. Water level in a tub when the plug is pulled
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "./build/fig-06.png"
unset key

set xlabel "minutes"
set ylabel "gallons"
set title "Stock of water in the tub"

plot [0:10][0:50] "build/fig-06.dat" using 1:2 with lines
