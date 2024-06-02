# @brief Curve fitting SSR and WSSR
# @date 2024
# @author nimisbert

reset
### Set the output to png 
set termopt enhanced 
set terminal pngcairo size 800,600
### File to write to
set output "tuto3.png"

f(x) = a*exp(-b*x)
fit f(x) "data.dat" u 1:2 via a,b

set multiplot 
plot "data.dat", f(x)
