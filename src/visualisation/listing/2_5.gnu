# @brief Introducing styles and the title keyword
# @source Gnuplot In Action
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "figure_2_5.png"

plot "./dataset/prices.dat" u 1:2 title "PQR" with lines, \
     "./dataset/prices.dat" u 1:3 title "XYZ" with linespoints
