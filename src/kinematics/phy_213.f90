! @brief Trajectory of projectile in 2D plane
! @author 
! @date 2014
! @sources 
program main
    implicit none 
    ! Declaration of variables
    real :: x0,y0,R,x,y,vx,vy,t,tf,dt
    real :: theta, v0x, v0y, v0
    real, parameter :: PI=3.1415927, g=9.81
    ! Input 
    print *,"# Enter v0, theta(degrees):"
    read  *,v0, theta
    print *,"# Enter tf, dt:"
    read  *,tf,dt
    print *,"# v0=",v0," theta=",theta," [deg]"
    print *,"# t0=",0.0," tf=",tf," dt=",dt
    ! Initialize
    if(v0 .le. 0.0) stop "Illegal value v0 <= 0"
    if(theta .le. 0.0 .or. theta .ge. 90.0 ) stop "Illegal value of theta" 
    theta = (PI/180.0)*theta
    v0x   = v0*cos(theta)
    v0y   = v0*sin(theta)
    print *,"# v0x=",v0x," v0y=",v0y
    open(unit=11,file="projectile.dat")
    ! Compute
    t = 0.0
    do while(t.le.tf)
        x  = v0x*t
        y  = v0y*t-0.5*g*t*t
        vx = v0x
        vy = v0y - g*t
        write(11,*)t,x,y,vx,vy
        t = t+dt
    enddo
    close(11)
end program main 
