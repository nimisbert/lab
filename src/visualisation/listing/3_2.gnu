# @brief Plotting a function for different values of a parameter
# @source Gnuplot In Action 
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "figure_3_2.png"

set sample 1000

g(x,s) = exp(-0.5*(x/s)**2)/s

plot g(x,1), \
     g(x,2), \
     g(x,3)
