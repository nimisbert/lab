# Euler Problem 009

function qGet( p :: Integer ) 
    return Integer((500/p) - p) 
end

function aGet( p :: Integer, q :: Integer )
    return Integer(p^2 - q^2)
end

function bGet( p :: Integer, q :: Integer )
    return Integer(2*p*q)
end

function cGet( p :: Integer, q :: Integer )
    return Integer(p^2 + q^2)
end

for p in 1:20
    q = qGet(p)
    a = aGet(p,q)
    b = bGet(p,q)
    c = cGet(p,q)
    println("a=",a," b=",b," c=",c," a+b+c=",a+b+c) 
end
