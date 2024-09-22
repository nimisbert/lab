# Donella Meadows - Thinking In Systems
# Figure 13. Growth in savings with various interest rates
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "reinforcing.png"

set xlabel "years"
set ylabel "dollars"
set title "Growth in savings with interest rates"

plot [0:12][0:350] "dat/reinforcing.dat" u 1:2 w l title "8%"
