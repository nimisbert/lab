# @brief Current athletic world-record running times as a function of competition distance
# @source Gnuplot In Action
reset 
set termopt enhanced 
set terminal pngcairo 
set output "figure_3_1.png"

plot [:12000] "./dataset/records.dat" u 1:2 title "Men" w p, \
              "" u 1:3 title "Women" w p, \
              0.14*x, 0.16*x
