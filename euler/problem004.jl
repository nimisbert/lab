# Euler Problem 004

function isPalindrome( n::Integer )
    str = string( n, base=10, pad=0 )
    rts = str[end:-1:1]
    if str != rts 
        return false
    end 
    return true
end

let m = 0
    for i in 990:-11:100
        for j in 999:-1:100
            p = i*j
            if isPalindrome(p) 
                if p > m 
                    m = p
                end
            end
        end
    end
    println(m)
end
