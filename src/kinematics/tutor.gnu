### @brief Learning gnuplot animation scripting
### @author Danny Vanpoucke
### @date 2021
### @sources https://dannyvanpoucke.be/tut-gnuplot-gifs-machine-learning/

### Set the output to png
set termopt enhanced
set terminal pngcairo size 300,300
### File to write to 
set output "model_plot.png"
### Title & label
set title "Model tutor"

plot   "projectile.dat" u 1:3 w l t "y(t)"
replot "projectile.dat" u 1:2 w l t "x(t)"
