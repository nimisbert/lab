# Donella Meadows - Thinking In Systems
# Figure 22. Population growth based on 2007 births and deaths
reset 
set termopt enhanced 
set terminal pngcairo size 800,600
set output "population.png"

set xlabel "year"
set ylabel "population (billions)"
set title "Population growth with fertility and mortality rates of 2007"

unset key

plot [2000:2120][0:25] "dat/population.dat" u 1:2 w l
