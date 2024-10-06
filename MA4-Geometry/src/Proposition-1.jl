using Point
using Line
using Circle

A = Point.make(0,0)
B = Point.make(1,0)

AB = Line.make(A,B)

BCD = Circle.make(A,1)
ACE = Circle.make(B,1)

Point.draw([A,B])
Line.draw([AB])
Circle.draw([BCD,ACE])
