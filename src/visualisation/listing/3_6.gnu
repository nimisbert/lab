# @brief Visualizing point distributions using kernel density estimates and cumul. distrib.
# @source Gnuplot In Action
reset 
set termopt enhanced
set terminal pngcairo
set output "figure_3_6.png"
set key top right

plot "./dataset/measurements.dat" u 1:(-0.1)  w p pt 7 t "Data", \
     ""                           u 1:(1/12.) smooth kdens bandwidth 0.1 t "Bandwidth 0.1", \
     ""                           u 1:(1/12.) s      kdens bandwidth 0.2 t "Bandwidth 0.2", \
     ""                           u 1:(1/12.) s      cumul               t "Cumulative"
