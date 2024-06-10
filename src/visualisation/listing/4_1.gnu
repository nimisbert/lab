# @brief Different types of graphs based on ./dataset/orders.dat data file
reset
set termopt enhanced
set terminal pngcairo
set output "figure_4_1.png"

unset key
set multiplot layout 2,2 margins 0.06,0.95,0.085,0.95 spacing 0.075,0.1
# -
set label 1 "Orders per Day" at 8,3
set xtics 2,2
set mxtics 2
plot [1:14] "./dataset/orders.dat" u (strcol(2)[9:10]+1):(1) s f w lp pt 7
set xtics 1
unset mxtics

# -
set label 1 "Histogram:\nItems per Order" at 3.5,50
plot [0:7] "./dataset/orders.dat" u 4:(1) s f w boxes

# - 
set label 1 "Value vs Weight" at 4,7
plot "./dataset/orders.dat" u 5:6 w p pt 6

# - 
unset label 1
set xtics ("Date" 1, "Items" 2, "Weight" 3, "Value" 4, "Ship" 5)
unset ytics
set style parallel lw 1
set linetype 1000 lc "0xff000000"
ship(c) = 0+strcol(c)[1:1] # return shipping method as an integer
plot [1:5] "./dataset/orders.dat" u (strcol(2)[9:10]+0):4:5:6:(ship(7)) w parallel lt 10

# - 
unset multi
