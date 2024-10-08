# Euler Problem 002
println("Problem 002:")

let Fn_1 = 0, Fn_2 = 1, Fn_0 = 0, Sum = 0
    while( Fn_0 < 4000000 )
        if rem(Fn_0, 2) == 0
            Sum = Sum + Fn_0
        end
        Fn_0 = Fn_1 + Fn_2
        Fn_2 = Fn_1
        Fn_1 = Fn_0
    end
    println(Sum, " ", Fn_0)
end
