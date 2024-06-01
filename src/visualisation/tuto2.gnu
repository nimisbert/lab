# @brief Linestyles and betterplots 
# @date 2024
# @author nimisbert

reset 
### Set the output to png
set termopt enhanced
set terminal pngcairo size 800,600

### File to write to 
set output "tuto2.png"

### Title & label
set title "Tutorial 2"
set xlabel "abscissa"
set ylabel "ordinate"

### Plot parameters
set grid # grid on
set xtics ("-3{/Symbol p}" -3*pi, "{/Symbol p}" pi, "3{/Symbol p}" 3*pi) # abscissa legend
set border lw 2 # thicker graph border

### 
set key bottom left box # legend at bottom left
set key width 1 # small box
set border 3 # right ajusted

### Plots
p [-3*pi:3*pi] sin(x)+rand(0) lt 7 lc 0 w lp, \
               sin(x)+0.5     lt 4 lc 3 w lp
