# @brief Any column can be used for either he x or y axis
# @source Gnuplot In Action
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "figure_2_6.png"

plot "./dataset/prices.dat" u 2:3 with points
