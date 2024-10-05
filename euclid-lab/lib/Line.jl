module Line
using Point
export Point_t, Line_t

mutable struct Line_t
    p::Array{Point_t, 1}
end

function make( A::Point_t, B::Point_t )
    return l = Line_t( [A,B] )
end

function draw( l::Array{Line_t,1} )
    println("# lines")
    for i in eachindex(l)
        println(l[i].p[1].x, " ", l[i].p[1].y, " ",
                l[i].p[2].x, " ", l[i].p[2].y)
    end
    println("\r\n")
end

end
