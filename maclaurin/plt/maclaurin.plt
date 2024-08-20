# Plot of Maclaurin approximation function
reset 
set termopt enhanced 
set terminal pngcairo size 800, 600
set output "maclaurin.png"
set multiplot layout 2,2
set grid 

# Plot of exp(x)
set title "Exponential"
plot "../test.dat" u 1:2 w l ls 1 lc 1 title "exp(x)", \
     ""            u 1:3 w l ls 2 lc 2 title "f(x)"

# Plot of ln(x+1)
set title "Logarithm base 2"
plot "" u 1:4 w l ls 1 lc 1 title "ln(x+1)", \
     "" u 1:5 w l ls 2 lc 2 title "f(x)"

# Plot of cos(x) and sin(x)
set title "Trigonometric"
plot "" u 1:6 w l ls 1 lc 1 title "sin(x)", \
     "" u 1:7 w l ls 2 lc 2 title "f(x)",   \
     "" u 1:8 w l ls 3 lc 3 title "cos(x)", \
     "" u 1:9 w l ls 4 lc 4 title "g(x)"
     
# Plot of ch(x) and sh(x)
set title "Hyperbolic"
plot "" u 1:10 w l ls 1 lc 1 title "sh(x)", \
     "" u 1:11 w l ls 2 lc 2 title "f(x)",  \
     "" u 1:12 w l ls 3 lc 3 title "ch(x)", \
     "" u 1:13 w l ls 4 lc 4 title "g(x)"

unset multiplot
