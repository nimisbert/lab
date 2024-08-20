module Maclaurin
# Exponential
export exp
# Logarithm
export log1p
# Trigonometric
export sin, cos
# Hyperbolic
export sinh, cosh
"""
Maclaurin serie for the exponential approximation.
"""
function exp(x::Real, n::Integer)
    s = 0.0
    for i in 0:n
        s += x^i / factorial(i)
    end
    return s
end

"""
Maclaurin serie for the logarithm approximation.
"""
function log1p(x::Real, n::Integer)
    s = 0.0
    for i in 1:n
        s += ((-1)^(i+1) / i) * x^i
    end 
    return s
end

"""
Maclaurin serie for the sine approximation.
"""
function sin(x::Real, n::Integer)
    s = 0.0
    for i in 0:n
        s += ((-1)^i / factorial(2*i+1)) * x^(2*i+1)
    end
    return s
end

"""
Maclaurin serie for the cosine approximation.
"""
function cos(x::Real, n::Integer)
    s = 0.0
    for i in 0:n
        s += ((-1)^i / factorial(2*i)) * x^(2*i)
    end
    return s
end

"""
Maclaurin serie for the hyperbolic sine approximation.
"""
function sinh(x::Real, n::Integer)
    s = 0.0 
    for i in 0:n
        s += (1 / factorial(2*i+1)) * x^(2*i+1)
    end
    return s
end

"""
Maclaurin serie for the hyperbolic cosine approximation.
"""
function cosh(x::Real, n::Integer)
    s = 0.0
    for i in 0:n
        s += (1 / factorial(2*i)) * x^(2*i)
    end
    return s
end 

end
