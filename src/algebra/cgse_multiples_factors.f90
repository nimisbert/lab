! --- CGSE, Algebra exercises, 1.2 - Multiples and Factors
program cgse_multiples_factors
    implicit none 
    integer :: i, n
    integer, dimension(100) :: m
    ! --- Exercise 1, page 6 : Multiples
    print *,"Exercise 1.1.a) ", [(i*9, i=1,5)]
    print *,"Exercise 1.1.b) ", [(i*13, i=1,5)]
    print *,"Exercise 1.1.c) ", [(i*16, i=1,5)]
    call multiples_of_p( 8, 10, 20, m, n )
    print *,"Exercise 1.2.a)", m(1:n)
    call multiples_of_p( 12, 20, 100, m, n )
    print *,"Exercise 1.2.b) ", m(1:n)
    call multiples_of_p( 14, 25, 90, m, n )
    print *,"Exercise 1.2.c) ", m(1:n)
    call multiples_of_p( 10, 5, 105, m, n )
    print *,"Exercise 1.3.a) ", m(1:n)
    call multiples_of_p( 15, 5, 105, m, n )
    print *,"Exercise 1.3.b) ", m(1:n)
    
    contains
    subroutine multiples_of_p( p, lb, ub, m, n )
        ! --- variables
        integer, intent(in) :: p  ! --- multiple
        integer, intent(in) :: lb ! --- lower bound
        integer, intent(in) :: ub ! --- upper bound
        integer, dimension(:), intent(out) :: m
        integer, intent(out) :: n
        integer :: pfirst, plast
        real :: x, y
        ! --- initialisation
        x = real(lb)
        y = real(ub)
        pfirst = p * (floor(x/p) + 1)
        plast  = p * (ceiling(y/p) - 1)
        n = (plast - pfirst) / p + 1
        ! --- routine
        if( n > 0 ) then
            m = [(i,i=pfirst,plast,p)]
        end if 
    end subroutine multiples_of_p
end program cgse_multiples_factors