module linalg
    implicit none 
    private 

    public :: gauss_jordan

    contains

    subroutine gauss_jordan( a, b )
        implicit none 
        ! --- variables 
        integer, dimension(:,:) :: a
        integer, dimension(:,:) :: b
        integer :: n, m
        ! --- initialisation
        n = size(a, 1)
        m = size(a, 2)
        ! --- process
        print *,"dims", n, m
    end subroutine gauss_jordan

end module linalg