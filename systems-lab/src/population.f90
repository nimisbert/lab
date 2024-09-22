! Donella Meadows - Thinking In Systems
! Figure 21. Population governed by
!            a reinforcing loop of births
!            a balancing loop of deaths
program main
    implicit none 
    type loop
        real command
        real flow
    end type 
    type(loop) births, deaths
    real :: t, dt, tf
    real :: population
    t = 2007
    dt = 1
    tf = 2110
    population = 6.6
    births%command = 21.0/1000.0
    deaths%command =  9.0/1000.0
    open(unit=11, file="./dat/population.dat")
    do while(t .le. tf)
        write(11,*) t, population
        births%flow = population*births%command*dt ! reinforcing
        deaths%flow = -population*deaths%command*dt ! balancing
        population = population + births%flow + deaths%flow
        t = t + dt
    end do 
end program 
