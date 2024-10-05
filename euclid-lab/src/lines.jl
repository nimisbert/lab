using Elements

l0 = Line( [Point(0,0), Point(1,1)] )
l1 = Line( [Point(0,0), Point(1,0)] )

println(l0.p[1].x, " ", l0.p[1].y, " ", l0.p[2].x, " ", l0.p[2].y)
println(l1.p[1].x, " ", l1.p[1].y, " ", l1.p[2].x, " ", l1.p[2].y)
