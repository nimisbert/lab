# @brief Basic solar system 3D animation
# @date 18/12/2020
# @author Danny Vanpoucke

set termopt enhanced
set terminal gif animate nooptimize delay 10 size 300,300
set output "solar.gif"
set title "Basic Solar System"

maxl=10
set xrange[-maxl:maxl] noreverse writeback
set yrange[-maxl:maxl] noreverse writeback
set zrange[-maxl:maxl] noreverse writeback
set xyplane at 0
set border lw 1.5

### Parametric coordinated for plotting spheres
set parametric # enable parametric mode (u,v)
set urange[0:2*pi]
set vrange[-pi/2.0:pi/2.0]
set isosample 360,180
fx(u,v)=cos(u)*cos(v)
fy(u,v)=sin(u)*cos(v)
fz(v)=sin(v)

### Surface coloring
set colorbox vertical
set cblabel "Planet\n colors" offset -4.75,5 rotate by 0
set pm3d depthorder base nohidden3d
unset hidden3d

### The animated drawing
n=60
do for [i=1:n] {
    # The star
    x=0.0
    y=0.0
    z=0.0
    r=3.0
    # The 1st planet
    x1=5.0*sin(i*2*pi/n)
    y1=5.0*cos(i*2*pi/n)
    z1=0.0
    r1=0.5
    color1(u,v)=0.5
    # The 2nd planet
    x2=6.5*sin(i*2*pi/n)
    y2=7.0*cos(i*2*pi/n)
    z2=1.0*cos(i*2*pi/n)
    r2=1.0
    color2(u,v)=sin(v)*2*pi
    # Plotting (frame)
    splot \
        "++" using (x+r*fx(u,v)):(y+r*fy(u,v)):(z+r*fz(v)):(6.5) w pm3d notitle, \
        "++" using (x1+r1*fx(u,v)):(y1+r1*fy(u,v)):(z1+r1*fz(v)):(color1(u,v)) w pm3d notitle, \
        "++" using (x2+r2*fx(u,v)):(y2+r2*fy(u,v)):(z2+r2*fz(v)):(color2(u,v)) w pm3d notitle
}

set output
