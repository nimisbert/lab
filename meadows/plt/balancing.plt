# Donella Meadows - Thinking In Systems
# Figure 11. Coffee temperature as it approaches a room temperature
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "feedbacks.png"
unset key

set xlabel "minutes"
set ylabel "temperature (°C)"
set title "Temperature variation over time"

plot [0:8][0:100] "./dat/feedbacks.dat" u 1:2 with lines, \
                  "./dat/feedbacks.dat" u 1:4 with lines
