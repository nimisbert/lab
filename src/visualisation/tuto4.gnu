# @brief Animate plots
# date 2024

reset 
set termopt enhanced
set terminal gif animate delay 4
set output "tuto4.gif"
set sample 200

set xrange[-20:20]
set yrange[-2:2]

f(x,t) = sin(x-t)

do for [i=1:96] {
    plot f(x,i*0.1)
}

