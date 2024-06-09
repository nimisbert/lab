# @brief Your first plot:plot sin(x)
# @source Gnuplot In Action
reset 
set termopt enhanced
set terminal pngcairo size 800,600
set output "figure_2_1.png"

plot sin(x)
