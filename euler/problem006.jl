# Euler Problem 006

function dd( n::Integer )
    return div((3*n^4 + 2*n^3 - 3*n^2 - 2*n), 12)
end 

println(" 10 : ", dd(10)) 
println("100 : ", dd(100))
