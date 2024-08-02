program main
    use UnitConversions
    implicit none 
    real :: m = 1.0
    print *, "length [m] ", m
    print *, "length [ft]", meterToFeet(m)
    print *, "length [in]", meterToInch(m)
    print *, "length [mile]", kilometerToMile(m*10.**(-3))
    print *, "length [yd]", kilometerToYard(m*10.**(-3))
end program main
