# Euler Problem 008 

function product( i::Integer, w::Integer, a::Vector{Int8} ) 
    max = 1
    for digit in a[i+1-w:i]
        max *= digit
    end
    return max
end

x = Vector{Int8}()
open("problem008.dat", "r") do f
    for line in eachline(f)
        str = split(line, "")
        dat = [parse(Int, ss) for ss in str]
        append!(x, dat)        
    end
end
let n = 13, max = 0
    for i::Integer in n:1000
        p = product( i, n, x ) 
        if p > max 
            max = p
        end
    end
    println(max)
end
