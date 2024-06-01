# @brief Basic Gnuplot script 
# @date 2024
# @author nimisbert
reset
### Set the output to png
set termopt enhanced
set terminal pngcairo size 800,600
### File to write to 
set output "tuto1.png"
### Title & label
set title "Tutorial 1"
set xlabel "abscissa"
set ylabel "ordinate"
### Grid on
set grid

# plot [-3*pi:3*pi] [-1.5:1.5] sin(x) linetype 7 linecolor 0 with linespoints
plot [-3*pi:3*pi] [-1.5:1.5] sin(x) lt 7 lc 0 w lp, cos(x) lt 7 lc 0

