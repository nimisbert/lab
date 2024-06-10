# @brief The average speed of the current world record holder
# @source Gnuplot In Action
reset 
set termopt enhanced
set terminal pngcairo
set output "figure_3_3.png"

set logscale x

plot [9:][5:11] "./dataset/records.dat" u 2:($1/$2) t "Men" w lp, \
                "./dataset/records.dat" u 3:($1/$3) t "Women" w lp
