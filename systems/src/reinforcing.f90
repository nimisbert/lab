! Donella Meadows - Thinking In Systems
! Figure 13. Growth in savings with interest rates
program main
    implicit none 
    real :: money
    real :: interest_rate
    real :: interest_added
    real :: t, tf, dt
    t = 0.0
    tf = 12.0
    dt = 1.0
    money = 100.0
    interest_rate = 8.0
    interest_added = 0.0
    open(unit=11, file="./dat/reinforcing.dat")
    do while(t .le. tf)
        write(11,*) t, money
        interest_added = money * interest_rate / 100.0
        money = money + interest_added
        t = t + dt
    end do
    close(11)
end program
