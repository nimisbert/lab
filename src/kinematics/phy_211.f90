! @brief   : Particle moving in a circle in a 2D Plane
! @author  : Konstantinos N. Anagnostopoulos 
! @date    : 2014
! @sources : Computational Physics 
program main
    implicit none
    real :: x0, y0, R, x, y, vx, vy, t0, t, tf, dt
    real :: theta, omega
    real, parameter :: PI=3.1415927
    print *, "# Enter omega:"
    read  *, omega
    print *, "# Enter center of circle (x0, y0) and radius R:"
    read  *, x0, y0, R
    print *, "Enter t0, tf, dt:"
    read  *, t0, tf, dt
    print *, "# omega= ", omega 
    print *, "# x0= ", x0, " y0= ", y0, " R= ",R
    print *, "# t0= ", t0, " tf= ", tf, " dt= ",dt
    if(R .le. 0.0) stop "Illegal value of R"
    if(omega .le. 0.0) stop "Illegal value of omega"
    print *, "# T= ", 2.0*PI/omega
    open(unit=11, file="circle.dat")
    t = t0
    do while(t .le. tf) 
        theta = omega * (t-t0)
        x = x0+R*cos(theta)
        y = y0+R*sin(theta)
        vx = -omega*R*sin(theta)
        vy = omega*R*cos(theta)
        t = t+dt
        write(11,*)t,x,y,vx,vy
    enddo 
    close(11)
end program
