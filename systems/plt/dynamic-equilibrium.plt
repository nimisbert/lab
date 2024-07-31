# Donella Meadows - Thinking In Systems
# Figure 7. Constant outflow, inflow turned on after 5 minutes,
#           and the resulting changes in the stock of water
reset 
set termopt enhanced 
set terminal pngcairo size 800, 600
set output "dynamic-equilibrium.png"
set multiplot layout 2,1
set grid 

# - Plot of the stock
set title "Stock of water in the tub"
set xlabel "minutes"
set ylabel "gallons"
unset key
plot [0:10][0:50] "./dat/dynamic-equilibrium.dat" u 1:2 w l 

# - Plot of the flow
set title "Flow of water over time"
set xlabel "minutes"
set ylabel "gallons/minutes"
set key
plot [0:10][0:10] "" u 1:4 w l lt 2 title "outflow", \
                  "" u 1:3 w l lt 1 title "inflow"

unset multiplot
