module Elements
export Point, Line, Surface

mutable struct Point 
    x::Real
    y::Real
end

mutable struct Line
    p::Array{Point, 1}
end

mutable struct Surface
    p::Array{Point, 1}
end

end
