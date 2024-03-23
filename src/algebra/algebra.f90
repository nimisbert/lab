module algebra
    implicit none 
    private

    public :: gcd ! --- Greatest Common Divisor
    public :: lcm ! --- Least Common Multiple

    contains
    
    function gcd( a, b )
        ! --- variables
        integer, intent(in) :: a, b
        integer :: ta, tb, gcd
        ! --- initialisation
        ta = a
        tb = b
        ! --- processing
        do while( tb /= 0 )
            gcd = tb
            tb = mod(ta, tb)
            ta = gcd
        end do 
        ! --- end 
    end function gcd 
    
    function lcm( a, b )
        ! --- variables 
        integer, intent(in) :: a, b
        integer lcm 
        ! --- processing
        lcm = abs(a*b) / gcd(a, b)
    end function lcm


end module algebra