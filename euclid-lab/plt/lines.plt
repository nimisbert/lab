reset 
set termopt enhanced 
set terminal pngcairo size 1200, 800
set output "lines.png"
unset key

plot "build/lines.dat" u 1:2:3:4 with vectors nohead 
