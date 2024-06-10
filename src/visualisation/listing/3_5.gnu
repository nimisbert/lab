# @brief Influence of the weight parameter on approximate splines
# @source Gnuplot In Action
reset 
set termopt enhanced
set terminal pngcairo
set output "figure_3_5.png"

set key top left

plot "./dataset/prices.dat" u 1:2 w p pt 6 t "data", \
     "./dataset/prices.dat" u 1:2:(10e6)  smooth acsplines title "w=10e6", \
     "./dataset/prices.dat" u 1:2:(10e1)  smooth acsplines title "w=10e1", \
     "./dataset/prices.dat" u 1:2:(10e-1) smooth acsplines title "w=10e-1", \
     "./dataset/prices.dat" u 1:2:(10e-6) smooth acsplines title "w=10e-6"
