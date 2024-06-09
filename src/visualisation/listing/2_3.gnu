# @brief Using explicit plot range: plot [][-2:2] sin(x), x, x-(x**3)/6
# @source Gnuplot In Actio
reset 
set termopt enhanced 
set terminal pngcairo size 800,600
set output "figure_2_3.png"

plot [][-2:2] sin(x), x, x-(x**3)/6
