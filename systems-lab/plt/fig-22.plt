# Thinking In Systems - Donella Meadows
# Figure 22. Population Growth
reset 
set termopt enhanced
set terminal pngcairo size 1200, 800
set output "build/fig-22.png"
unset key

set xlabel "Years"
set ylabel "Population [billion]"
set title "Population over Time"

plot [2000:2120][0:25] "build/fig-22.dat" u 1:2 with lines
