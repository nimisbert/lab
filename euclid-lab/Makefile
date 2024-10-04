JULIA=julia
GNUPLOT=gnuplot

points:
	$(JL) ./src/points.jl > ./build/points.dat
	$(GNUPLOT) ./plt/points.plt

lines: 
	$(JL) ./src/lines.jl > ./build/lines.dat
	$(GNUPLOT) ./plt/lines.plt
