using Printf
include("./maclaurin.jl")

p = 3
io = open("test.dat", "w")
for i in -1:0.1:1
    @printf( io, "%10f %10f %10f %10f %10f %10f %10f %10f %10f %10f %10f %10f %10f\r\n", i, 
             exp(i),   Maclaurin.exp(i,p),
             log1p(i), Maclaurin.log1p(i,p),
             sin(i),   Maclaurin.sin(i,p),
             cos(i),   Maclaurin.cos(i,p),
             sinh(i),  Maclaurin.sinh(i,p),
             cosh(i),  Maclaurin.cosh(i,p)
            )
end
close(io)
