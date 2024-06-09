# @brief An unsuitable default plot range: plot sin(x), x, x-(x**3)/6
# @source Gnuplot In Action
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "figure2.2.png"

plot sin(x),x,x-(x**3)/6
