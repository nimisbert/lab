! Donella Meadows - Thinking In Systems
! Figure 15. Rom temperature regulated by thermostat and furnace
program main
    implicit none
    type loop
        real command
        real flow
        real delta
    end type
    type(loop) furnace, outside
    real :: t, dt, tf
    real :: temperature
    t = 0.0
    dt = 0.1
    tf = 8.0
    temperature = 10.0
    furnace%command = 18.0
    outside%command = 10.0
    furnace%delta = temperature - furnace%command
    outside%delta = temperature - outside%command
    furnace%flow = furnace%delta * dt
    outside%flow = outside%delta * dt
    open(unit=11, file="./dat/room-temperature.dat")
    do while(t .le. tf)
        write(11,*) t, temperature, furnace%command, outside%command
        furnace%delta = temperature - furnace%command
        outside%delta = temperature - outside%command
        furnace%flow = furnace%delta * dt
        outside%flow = outside%delta * dt
        temperature = temperature - furnace%flow
        temperature = temperature - outside%flow
        t = t + dt
    end do
    close(11)
end program
