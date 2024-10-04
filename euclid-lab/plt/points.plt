reset 
set termopt enhanced
set terminal pngcairo size 1200, 800
set output "points.png"
unset key

plot "build/points.dat" u 1:2 with points ls 7 # circle
