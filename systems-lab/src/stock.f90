! Donella Meadows - Thinking In Systems
! Figure 6. How to read stock-and-flow diagrams
program main 
    implicit none 
    real :: inflow
    real :: outflow
    real :: stock, t, tf, dt 
    inflow = 0.0
    outflow = 5.0
    stock = 50.0
    tf = 10.0
    t = 0.0
    dt = 1.0
    open(unit=11, file="./dat/stock.dat")
    do while(t .le. tf)
        write(11,*) t, stock
        stock = stock - (outflow - inflow)*dt
        t = t + dt    
    end do
    close(11)
end program
