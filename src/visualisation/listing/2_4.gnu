# @brief Plotting from a file: plot "data21.dat" using 1:2, "data21.dat" u 1:3
# @source Gnuplot In Action
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "figure_2_4.png"

plot "./dataset/prices.dat" u 1:2, "./dataset/prices.dat" u 1:3
