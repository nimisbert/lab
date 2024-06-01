! @brief Projectile in 2D plane with air resistance
! @author Konstantinos N. Anagnostopoulos 
! @date 2014
! @sources Computational Physics
program main
    implicit none
    ! Declaration
    real :: x0,y0,R,x,y,vx,vy,t,tf,dt,k
    real :: theta,v0x,v0y,v0
    real, parameter :: PI=3.1415927, g=9.81
    ! Inputs
    print *,"# Enter k, v0, theta (in degrees):"
    read  *,k,v0,theta
    print *,"# Enter tf, dt:"
    read  *,tf,dt
    print *,"# k = ",k
    print *,"# v0= ",v0," theta= ",theta,"[deg]"
    print *,"# t0= ",0.0," tf= ",tf," dt= ",dt
    ! Initialize
    if( v0 .le. 0.0) stop "Illegal value of v0 <= 0"
    if( k .le. 0.0) stop "Illegal value of k <= 0"
    if( theta .le. 0.0 .or. theta .ge. 90.0) stop "Illegal value of theta"
    theta = (PI/180.0)*theta ! to [rad]
    v0x = v0*cos(theta)
    v0y = v0*sin(theta)
    print *,"# v0x = ",v0x," v0y = ",v0y
    open(unit=11,file="projectileAirResist.dat")
    ! Compute
    t = 0.0
    do while(t .le. tf)
        x = (v0x/k)*(1.0-exp(-k*t))
        y = (1.0/k)*(v0y+(g/k))*(1.0-exp(-k*t))-(g/k)*t
        vx= v0x*exp(-k*t)
        vy= (v0y+(g/k))*exp(-k*t)-(g/k)
        write(11,*)t,x,y,vx,vy
        t = t+dt
    end do
    close(11)
end program main
