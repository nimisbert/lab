reset
set termopt enhanced
set terminal pngcairo size 1200, 800
set output "circles.png"
unset key

plot "build/circles.dat" using 1:2:3:1 with circles lc var notitle 
