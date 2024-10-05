reset
set termopt enhanced
set terminal pngcairo size 1200, 800
set output "geometry.png"
set autoscale xy
unset key
unset border

plot "build/temp.dat" index "points" using 1:2 with points ls 7 lc "black", \
    "" index "lines" using 1:2:3:4 with vectors nohead lc "black", \
    "" index "circles" using 1:2:3:1 with circles lc "black"
