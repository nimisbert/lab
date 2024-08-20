using Printf
include("./maclaurin.jl")

p = 5
io = open("test.dat", "w")
for i in -1:0.1:1
    @printf( io, "%d %f %f %f %f %f %f %f %f %f %f %f %f\r\n", i, 
             exp(i),   Maclaurin.exp(i,p),
             log1p(i), Maclaurin.log1p(i,p),
             sin(i),   Maclaurin.sin(i,p),
             cos(i),   Maclaurin.cos(i,p),
             sinh(i),  Maclaurin.sinh(i,p),
             cosh(i),  Maclaurin.cosh(i,p)
            )
end
close(io)
