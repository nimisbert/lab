module Point
export Point_t

mutable struct Point_t
    x::Real
    y::Real
end

function make( x::Real, y::Real )
    return p = Point_t(x,y)
end

function draw( p::Array{Point_t, 1} )
    println("# points")
    for i in eachindex(p)
        println(p[i].x, " ", p[i].y) 
    end
    println("\r\n")
end

end
