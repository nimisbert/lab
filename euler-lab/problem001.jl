# Euler Problem 001
println("Problem 001:")

function sum(n::Integer)
    return n*(n+1)/2
end

mul3bound  = floor( Int, 999/3 )
mul5bound  = floor( Int, 999/5 )
mul15bound = floor( Int, 999/15 ) 

#result = 3*sum(mul3bound) + 5*sum(mul5bound) - 15*sum(mul15bound)
#println(floor(Int,result))

println(floor(Int,(3*333*334 + 5*199*200 - 15*66*67) / 2))
