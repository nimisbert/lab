! @brief Conical Pendulum, movement in a 3D space
! @author Konstantinos N. Anagnostopoulos 
! @date 2014
! @sources Computational Physics
program main
    implicit none 
    ! Declaration
    real :: l,r,x,y,z,vx,vy,vz,t,tf,dt
    real :: theta,cos_theta,sin_theta,omega
    real, parameter :: PI=3.1415927, g=9.81
    ! Inputs 
    print *,"# Enter l, omega: "
    read  *,l,omega
    print *,"# Enter tf, dt: "
    read  *,tf,dt
    print *,"# l= ",l," omega= ",omega
    print *,"# T= ",2.0*PI/omega," omega_min= ",sqrt(g/l)
    print *,"# t0= ",0.0," tf= ",tf," dt= ",dt
    ! Initialize
    cos_theta = g/(omega*omega*l)
    if( cos_theta .ge. 1) stop "cos(theta)>=1"
    sin_theta = sqrt(1.0-cos_theta*cos_theta)
    z = -g/(omega*omega)
    vz = 0.0
    r = g/(omega*omega)*sin_theta/cos_theta
    open(unit=11,file="conicalPendulum.dat")
    ! Compute
    t = 0.0
    do while(t .le. tf)
        x = r*cos(omega*t)
        y = r*sin(omega*t)
        vx= -r*sin(omega*t)*omega
        vy=  r*cos(omega*t)*omega
        write(11,100)t,x,y,z,vx,vy,vz
        t = t+dt
    end do
    close(11)
    100 FORMAT(20G15.7)
end program main
