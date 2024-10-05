module Circle
using Point
using Line

mutable struct Circle_t
    center::Point_t
    radius::Real
end

function make( center::Point_t, radius::Real )
    return c = Circle_t( center, radius )
end

function draw( c::Array{Circle_t,1} ) 
    println("# circles")
    for i in eachindex(c)
        println(c[i].center.x, " ", c[i].center.y, " ",
                c[i].radius)
    end
    println("\r\n")
end

end
