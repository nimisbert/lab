using Point
using Line
using Circle

p0 = Point.make(0,0)
p1 = Point.make(1,0)
p2 = Point.make(1,1)
p3 = Point.make(0.5,0.5)

l0 = Line.make(p0,p1)
l1 = Line.make(p1,p2)
l2 = Line.make(p3,p1)

c0 = Circle.make(p0,1)
c1 = Circle.make(p2,0.5)

Point.draw( [p0,p1,p2,p3] )
Line.draw( [l0,l1,l2] )
Circle.draw( [c0,c1] )
