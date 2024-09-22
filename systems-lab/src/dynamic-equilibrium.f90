! Donella Meadows - Thinking In Systems 
! Figure 7. Constant outlow, infown turned on after 5 minutes,
!           and the resulting changes in the stock of water
program main
    implicit none 
    real :: inflow
    real :: outflow 
    real :: stock, rate
    real :: t, tf, dt
    inflow = 0.0
    outflow = 5.0
    stock = 50.0
    tf = 10.0
    t = 0.0
    dt = 1.0
    open(unit=11, file="./dat/dynamic-equilibrium.dat")
    do while(t .le. tf)
        if(t > 4.0)then 
            inflow = 5.0 
        end if
        write(11,*)t, stock, inflow, outflow
        stock = stock + (inflow - outflow)*dt
        t = t + dt
    end do
    close(11)
end program 
