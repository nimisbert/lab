### Set the output to a png file
set termopt enhanced
set terminal gif animate nooptimize delay 10 size 800,800
### The file to write to
set output 'Solarplot_v4.gif'
### The Title label
set title 'Magic Solar System'
# print to stdout
set print "-"
maxl=25
###settings for the boxplot
set xrange[-maxl:maxl] noreverse writeback
set yrange[-maxl:maxl] noreverse writeback
set zrange[-maxl*0.5:maxl*0.5] noreverse writeback
set size ratio -1

set xyplane at 0
### remove axis and tics
unset border
unset xtics
unset ytics
unset ztics
set lmargin 0

###plot the graphic
###set spherical coordinate system
set parametric      # enable parametric mode with angles (u,v)
set urange [0:2*pi]
set vrange [-pi/2.0:pi/2.0]
set isosample 360,180
fx(u,v)=cos(u)*cos(v)
fy(u,v)=sin(u)*cos(v)
fz(v)=sin(v)

### Surface coloring
### 1) settings for the colorscale
unset colorbox 
unset cblabel 
### setting the pallete as series of color ranges, mapping grey to color
set palette defined (0 "red", 1 "yellow",1 "brown", 2 "brown4",3 "green", 4 "blue", 5 "white")
set cbrange[0:10]
unset cbtics
### 2) the coloring itself
set pm3d depthorder base nohidden3d
unset hidden3d 

### The animated drawing
### Star with planets orbiting
### 60 frames
n = 120
do for [i=1:n]{
    print i 
	# The star
	x=0.0
    y=0.0
    z=0.0
    r=5.0
	color(u,v)=1+0.75*((sin(u*5+i*2*pi/n)**2*cos(v*7+i*8*pi/n)+sin(v*v*3+i*4*pi/n)**3*cos(u*5+i*6*pi/n))*0.5+(sin(i*6*pi/n)*sin(u*11)**5*cos(v*7)**6+sin(i*8*pi/n)*sin(u*9)**5*cos(v*5)**6)*0.5)
	
	#1+0.75*((sin((u+i*2*pi/n)*5)**2*cos((v+i*2*pi/n)*7)+sin(3*(v+i*4*pi/n)**2)**3*cos((u+i*6*pi/n)*5))*0.5+(sin(i*6*pi/n)*sin(u*11)**5*cos(v*7)**6+sin(i*8*pi/n)*sin(u*9)**5*cos(v*5)**6)*0.5)
	rc(u,v)=(r+(color(u,v))*0.7)
	
	# The first planet
	x1=10.0*sin(i*2*pi/n)
    y1=0.0
    z1=10.0*cos(i*2*pi/n)
    r1=1.250*(1.5+0.5*sin(i*2*pi/n))
	color1(u,v)=0.5*(cos(u)**5+sin(v)**3)+sin(i*6*pi/n) +8.0  # values in range 2:4
	
	
	# The second planet
	x2=6+17*sin((i+20)*4*pi/n)
    y2=8.0*cos((i+20)*4*pi/n)
    z2=3.0*cos((i+20)*2*pi/n)
    r2=1.0
	color2(u,v)=0.99*sin((i+20)*4*pi/n+pi)+1  # values in range 8:10
	
	# The Thrid planet
	x3=17*sin((i+20)*2*pi/n)
    y3=17*cos((i+20)*2*pi/n)
    z3=0.0*cos((i+20)*2*pi/n)
    r3=3.0
	color3(u,v)=8+1*(cos(u*5+(i*4*pi/n)) + sin(v*6+(i*6*pi/n))*cos(u*3)**3   )
	#8+1*(sin(u*8)*cos(v*7+(i*4*pi/n))+sin(u*5+(i*2*pi/n))**3*cos(v*11)**5)  # values in range 8:10
	
	# The moon of the Thrid planet
	x4=x3 + 4*sin((i+60)*6*pi/n)
    y4=y3 + 4*cos((i+60)*6*pi/n)
    z4=z3 + 4*cos((i+60)*6*pi/n)
    r4=1.0
	color4(u,v)=4.5  # values in range 8:10
	
	# The second moon of the Thrid planet
	x5=x3 + 5*sin((i+6)*4*pi/n)
    y5=y3 + 5*cos((i+6)*4*pi/n)
    z5=z3 + 5*cos((i+6)*4*pi/n)
    r5=0.50
	color5(u,v)=2.75  # values in range 8:10
	# The Third moon of the Thrid planet
	x6=x3 + 5*sin((i+10)*4*pi/n)
    y6=y3 + 5*cos((i+10)*4*pi/n)
    z6=z3 + 5*cos((i+10)*4*pi/n)
    r6=0.40
	color6(u,v)=2.85  # values in range 8:10
	
	
	splot \
	"++" using (x+rc(u,v)*0.75*fx(u,v)):(y+rc(u,v)*fy(u,v)):(z+rc(u,v)*0.75*fz(v)):(color(u,v)) w pm3d notitle,\
	"++" using (x1+r1*fx(u,v)):(y1+r1*fy(u,v)):(z1+r1*fz(v)):(color1(u,v)) w pm3d  notitle,\
	"++" using (x2+r2*fx(u,v)):(y2+r2*fy(u,v)):(z2+r2*fz(v)):(color2(u,v)) w pm3d  notitle,\
	"++" using (x3+r3*fx(u,v)):(y3+r3*fy(u,v)):(z3+r3*fz(v)):(color3(u,v)) w pm3d  notitle,\
	"++" using (x4+r4*fx(u,v)):(y4+r4*fy(u,v)):(z4+r4*fz(v)):(color4(u,v)) w pm3d  notitle,\
	"++" using (x5+r5*fx(u,v)):(y5+r5*fy(u,v)):(z5+r5*fz(v)):(color5(u,v)) w pm3d  notitle,\
	"++" using (x6+r6*fx(u,v)):(y6+r6*fy(u,v)):(z6+r6*fz(v)):(color6(u,v)) w pm3d  notitle


	
}
set output
