! @brief Anisotropic oscillator
! @author Konstantinos N. Anagnostopoulos 
! @date 2014
! @sources Computational Physics
program main
    implicit none 
    ! Declaration
    real :: x0,y0,R,x,y,vx,vy,t,t0,tf,dt
    real :: o1,o2,T1,T2
    real, parameter :: PI=3.1415927
    ! Inputs
    print *,"# Enter omega1 and omega2:"
    read  *,o1,o2
    print *,"# Enter tf, dt:"
    read  *,tf,dt
    print *,"# o1=",o1," o2=",o2
    print *,"# t0=",0.0," tf=",tf," dt=",dt
    ! Initialize
    if(o1 .le. 0.0 .or. o2 .le. 0.0) stop "omega1 or omega2 <= 0"
    T1 = 2.0*PI/o1
    T2 = 2.0*PI/o2
    print *,"# T1=",T1," T2=",T2
    open(unit=11,file="lissajous.dat")
    ! Compute 
    t = 0.0
    do while(t .le. tf)
        x = cos(o1*t)
        y = sin(o2*t)
        vx= -o1*sin(o1*t)
        vy=  o2*cos(o2*t)
        write(11,*)t,x,y,vx,vy
        t = t+dt
    end do
    close(11)
end program main
