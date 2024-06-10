# @brief Interpolating splines
# @source Gnuplot In Action
reset 
set termopt enhanced
set terminal pngcairo
set output "figure_3_4.png"

set key top left

plot "./dataset/prices.dat" u 1:2 w p pt 6, \
     "./dataset/prices.dat" u 1:2 smooth csplines, \
     "./dataset/prices.dat" u 1:2 smooth mcsplines, \
     "./dataset/prices.dat" u 1:2 smooth bezier
