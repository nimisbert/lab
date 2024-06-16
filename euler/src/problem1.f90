program problem1
    implicit none
    print *, "Sum of  3: ", 3*sumOfN(999/3)
    print *, "Sum of  5: ", 5*sumOfN(999/5)
    print *, "Sum of 15: ", 3*5*sumOfN(999/15)
    print *, "Answer: "
    print *, 3*sumOfN(999/3) + 5*sumOfN(999/5) - 15*sumOfN(999/15)

contains

    function sumOfN( n ) result( s )
        integer, intent(in)  :: n 
        integer :: s
        s = n*(n+1)/2
    end function sumOfN

end program problem1
