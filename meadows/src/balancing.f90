! Donella Meadows - Thinking In Systems
! Figure 11. Coffee temperature as it approaches a room temperature
program main
    implicit none
    real :: temperature
    real :: cooling
    real :: room_temperature
    real :: discrepancy 
    real :: t, tf, dt
    t = 0.0
    tf = 8.0
    dt = 0.2
    temperature = 0.0
    room_temperature = 18.0
    discrepancy = temperature - room_temperature
    open(unit=11, file="./dat/balancing.dat")
    do while(t .le. tf)
        write(11,*) t, temperature, discrepancy, room_temperature
        temperature = temperature - discrepancy * dt
        discrepancy = temperature - room_temperature
        t = t + dt
    end do
    close(11)
end program
