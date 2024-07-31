program main
    use UnitConversions
    implicit none 
    real :: m = 1.0
    print *, "length [m] ", m
    print *, "length [ft]", length_m_to_ft(m)
    print *, "length [in]", length_m_to_in(m)
end program main
