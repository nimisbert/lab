! --- Numerical Recipes, Linear Algebra
program main
    use linalg
    implicit none
    integer, dimension(2,2) :: a, b
    a = reshape((/ 1, 3, 2, 4 /), shape(a))
    b = reshape((/ 1, 0, 0, 1 /), shape(a))
    call gauss_jordan(a, b)
end program main 