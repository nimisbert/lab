include("./src/maclaurin.jl")

println(Maclaurin.exp(0,5))
println(exp(0))

println(Maclaurin.log1p(0.1,5))
println(log1p(0.1))

println(Maclaurin.sin(0.5,5))
println(sin(0.5))

println(Maclaurin.cos(0.5,4))
println(cos(0.5))

println(Maclaurin.sinh(0.5,5))
println(sinh(0.5))

println(Maclaurin.cosh(0.5,5))
println(cosh(0.5))
