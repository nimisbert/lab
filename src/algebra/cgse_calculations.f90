! Author : Nicolas Misbert
! Date   : 2024/03/28
! Source : CGSE, Algebra exercises, 1.1 - Caclulations
program main
    implicit none
    ! --- Exercise 1, page 2 : BODMAS
    print *,"Exercise 1.1.a) ", 5 + 1 * 3
    print *,"Exercise 1.1.b) ", 11 - 2 * 5
    print *,"Exercise 1.1.c) ", 18 - 10 / 5
    print *,"Exercise 1.1.d) ", 24 / 4 + 2
    print *,"Exercise 1.1.e) ", 35 / 5 + 2
    print *,"Exercise 1.1.f) ", 36 - 12 / 4
    print *,"Exercise 1.1.g) ", 2 * (4 + 10)
    print *,"Exercise 1.1.h) ", (7 - 2) * 3
    print *,"Exercise 1.1.i) ", 4 + (48 / 8)
    print *,"Exercise 1.1.j) ", 56 / (2 * 4)
    print *,"Exercise 1.1.k) ", (3 + 2) * (9 - 4)
    print *,"Exercise 1.1.l) ", (8 - 7) * (6 + 5)
    print *,"Exercise 1.1.m) ", 2 * (8 + 4) - 7
    print *,"Exercise 1.1.n) ", 5 * 6 - 8 / 2 
    print *,"Exercise 1.1.o) ", 18 / (9 - 12 / 4)
    print *,"Exercise 1.1.p) ", 100 / (8 + 3 * 4)
    print *,"Exercise 1.1.q) ", 7 + (10 - 9 + 3)
    print *,"Exercise 1.1.r) ", 20 - (5 * 3 + 2)
    print *,"Exercise 1.1.s) ", 48 / 3 - 7 * 2 
    print *,"Exercise 1.1.t) ", 36 - (7 + 4 * 4)
    print *,"Exercise 1.2.a) ", 16 / (4 * (5 - 3))
    print *,"Exercise 1.2.b) ", (8 + 2) / (15 / 3)
    print *,"Exercise 1.2.c) ", (4 * (7 + 5)) / (6 + 3 * 2)
    print *,"Exercise 1.2.d) ", (6. + (11 - 8)) / (7 - 5)
    print *,"Exercise 1.2.e) ", (12. / (9 - 5)) / (25 / 5)
    print *,"Exercise 1.2.f) ", (8. * 2 / 4) / (5 - 6 + 7)
    print *,"Exercise 1.2.g) ", (3 * 3) / (21 / (12 - 5))
    print *,"Exercise 1.2.h) ", (36 / (11 - 2)) / (8 - 8 / 2)
    ! --- Exercise 2, page 2 :  Negatives, add & sub
    print *,"Exercise 2.1.a) ", -4 + 3
    print *,"Exercise 2.1.b) ", -1 - 4
    print *,"Exercise 2.1.c) ", -12 + 15
    print *,"Exercise 2.1.d) ", 6 - 17
    print *,"Exercise 2.1.e) ", 4 - (-2)
    print *,"Exercise 2.1.f) ", -6 - (-2)
    print *,"Exercise 2.1.g) ", -5 + (-5)
    print *,"Exercise 2.1.h) ", -5 - (-5)
    print *,"Exercise 2.1.i) ", -23 - (-35)
    print *,"Exercise 2.1.j) ", 48 + (-22)
    print *,"Exercise 2.1.k) ", -27 + (-33)
    print *,"Exercise 2.1.l) ", 61 - (-29)
    ! --- Exercise 3, page 3 : Negatives, mul & div
    print *,"Exercise 3.1.a) ", 3 * (-4)
    print *,"Exercise 3.1.b) ", (-15) / (-3)
    print *,"Exercise 3.1.c) ", 12 / (-4)
    print *,"Exercise 3.1.d) ", 2 * (-8)
    print *,"Exercise 3.1.e) ", (-72) / (-6)
    print *,"Exercise 3.1.f) ", 56 / (-8)
    print *,"Exercise 3.1.g) ", (-16) * (-3)
    print *,"Exercise 3.1.h) ", (-81) / (-9)
    print *,"Exercise 3.1.i) ", (-13) * (-3)
    print *,"Exercise 3.1.j) ", 7 * (-6)
    print *,"Exercise 3.1.k) ", 45 / (-9)
    print *,"Exercise 3.1.l) ", (-34) * 2
    print *,"Exercise 3.2.a) ", (-3 * 7) / (-21)
    print *,"Exercise 3.2.b) ", (-24 / 8) / 3
    print *,"Exercise 3.2.c) ", (55 / (-11)) * (-9)
    print *,"Exercise 3.2.d) ", (-3 * (-5)) * (-6)
    print *,"Exercise 3.2.e) ", (-64. / (-9)) * (-7)
    print *,"Exercise 3.2.f) ", (35 / (-7)) * (-8)
    print *,"Exercise 3.2.g) ", ((-60) / 12) * (-10)
    print *,"Exercise 3.2.h) ", ((-12) * 3) * (-2)
    print *,"Exercise 3.3.a) ", (-6) / (-3)
    print *,"Exercise 3.3.b) ", (-14) / (-2)
    print *,"Exercise 3.3.c) ", (-16) / 4
    print *,"Exercise 3.3.d) ", (-2) * (-5)
    print *,"Exercise 3.3.e) ", (-24) / (-8)
    print *,"Exercise 3.3.f) ", (-18) / 3
    print *,"Exercise 3.3.g) ", 36 / (-3)
    print *,"Exercise 3.3.h) ", -7 * 11
    ! --- Exercise 4, page 3 : Decimals
    print *,"Exercise 4.1.a) ", 2.0 + 1.8
    print *,"Exercise 4.1.b) ", 6 - 5.1
    print *,"Exercise 4.1.c) ", 12.74 + 7
    print *,"Exercise 4.1.d) ", 23 - 18.591
    print *,"Exercise 4.1.e) ", 5.1 + 1.8
    print *,"Exercise 4.1.f) ", 6.3 + 5.4
    print *,"Exercise 4.1.g) ", 11.7 - 8.2
    print *,"Exercise 4.1.h) ", 0.8 - 0.03
    print *,"Exercise 4.1.i) ", 10.83 + 7.4
    print *,"Exercise 4.1.j) ", 0.029 + 1.8
    print *,"Exercise 4.1.k) ", 91.7 + 0.492
    print *,"Exercise 4.1.l) ", 6.474 + 0.92
    print *,"Exercise 4.1.m) ", 67.5 - 4.31
    print *,"Exercise 4.1.n) ", 16.3 - 5.16
    print *,"Exercise 4.1.o) ", 9.241 - 2.8
    print *,"Exercise 4.1.p) ", 0.946 - 0.07
    print *,"Exercise 4.2.a) ", 7.61 + 0.60
    print *,"Exercise 4.2.b) ", 5.98 + 0.42
    print *,"Exercise 4.2.c) ", 6.75 + 2.48
    print *,"Exercise 4.2.d) ", 5.43 - 2.12
    print *,"Exercise 4.3  ) ", 2.3 + 4.6
    print *,"Exercise 4.4  ) ", 18.50 + 31.99
    print *,"Exercise 4.5  ) ", 4.2 - 2.75
    print *,"Exercise 4.6  ) ", 66.49 - 15.25
    ! --- Exercise 5, page 4 : Decimals mul
    print *,"Exercise 5.1.a) ", 13.2 * 238
    print *,"Exercise 5.1.b) ", 1.32 * 23.8
    print *,"Exercise 5.1.c) ", 1.32 * 0.238
    print *,"Exercise 5.1.d) ", 0.132 * 0.238
    print *,"Exercise 5.2.a) ", 0.92 * 10
    print *,"Exercise 5.2.b) ", 1.41 * 100
    print *,"Exercise 5.2.c) ", 72.5 * 1000
    print *,"Exercise 5.2.d) ", 16.7 * 8
    print *,"Exercise 5.2.e) ", 31.2 * 6
    print *,"Exercise 5.2.f) ", 68.8 * 3
    print *,"Exercise 5.2.g) ", 3.1 * 40
    print *,"Exercise 5.2.h) ", 0.7 * 600
    print *,"Exercise 5.2.i) ", 0.6 * 0.3
    print *,"Exercise 5.2.j) ", 0.05 * 0.04
    print *,"Exercise 5.2.k) ", 0.08 * 0.5
    print *,"Exercise 5.2.l) ", 0.04 * 0.02
    print *,"Exercise 5.2.m) ", 2.1 * 0.6 
    print *,"Exercise 5.2.n) ", 8.1 * 0.5
    print *,"Exercise 5.2.o) ", 3.6 * 0.3
    print *,"Exercise 5.2.p) ", 1.6 * 0.04
    print *,"Exercise 5.2.q) ", 0.61 * 0.6
    print *,"Exercise 5.2.r) ", 5.2 * 0.09
    print *,"Exercise 5.2.s) ", 6.3 * 2.1
    print *,"Exercise 5.2.t) ", 1.4 * 2.3
    print *,"Exercise 5.2.u) ", 2.4 * 1.8
    print *,"Exercise 5.2.v) ", 3.9 * 8.3
    print *,"Exercise 5.2.w) ", 0.16 * 3.3
    print *,"Exercise 5.2.x) ", 0.64 * 0.42
    print *,"Exercise 5.3  ) ", 5 * 1.76
    print *,"Exercise 5.4  ) ", 3.5 * 1.6 
    print *,"Exercise 5.5  ) ", 1.35 * 9.2
    print *,"Exercise 5.6  ) ", 1.18 * 2.5
    ! --- Exercise 6, page 4 : Decimals div
    print *,"Exercise 6.1.a) ", 25.9 / 10
    print *,"Exercise 6.1.b) ", 8.52 / 4
    print *,"Exercise 6.1.c) ", 2.14 / 4
    print *,"Exercise 6.1.d) ", 8.62 / 5
    print *,"Exercise 6.1.e) ", 17.1 / 6
    print *,"Exercise 6.1.f) ", 0.081 / 9
    print *,"Exercise 6.1.g) ", 49.35 / 7
    print *,"Exercise 6.1.h) ", 12.06 / 8
    print *,"Exercise 6.2.a) ", 6.4 / 0.2
    print *,"Exercise 6.2.b) ", 1.56 / 0.2
    print *,"Exercise 6.2.c) ", 0.624 / 0.3
    print *,"Exercise 6.2.d) ", 8.8 / 0.2
    print *,"Exercise 6.2.e) ", 3.54 / 0.4
    print *,"Exercise 6.2.f) ", 3.774 / 0.4
    print *,"Exercise 6.2.g) ", 5.75 / 0.5
    print *,"Exercise 6.2.h) ", 0.275 / 0.5
    print *,"Exercise 6.2.i) ", 22.56 / 0.03
    print *,"Exercise 6.2.j) ", 16.42 / 0.02 
    print *,"Exercise 6.2.k) ", 0.257 / 0.05 
    print *,"Exercise 6.2.l) ", 1.08 / 0.08 
    print *,"Exercise 6.2.m) ", 7.665 / 0.03
    print *,"Exercise 6.2.n) ", 0.039 / 0.06
    print *,"Exercise 6.2.o) ", 7.5 / 0.05 
    print *,"Exercise 6.2.p) ", 50.4 / 0.07
    print *,"Exercise 6.2.q) ", 0.9 / 0.03 
    print *,"Exercise 6.2.r) ", 0.71 / 0.002
    print *,"Exercise 6.2.s) ", 63 / 0.09
    print *,"Exercise 6.2.t) ", 108 / 0.4
    print *,"Exercise 6.2.u) ", 1.76 / 0.008
    print *,"Exercise 6.2.v) ", 8.006 / 0.2
    print *,"Exercise 6.2.w) ", 20.16 / 0.007
    print *,"Exercise 6.2.x) ", 1.44 / 1.2
    print *,"Exercise 6.3  ) ", 412.86 / 3
    print *,"Exercise 6.4  ) ", 35.55 / 9
    print *,"Exercise 6.5  ) ", 2.72 / 0.08 
    print *,"Exercise 6.6  ) ", 6.93 / 3.5
    ! --- Exercise 7, page 5 : Mixed exercise
    print *,"Exercise 7.1  ) ", 6 - 7 
    print *,"Exercise 7.2  ) ", -4.2 - (1.5 * (-0.3))
    print *,"Exercise 7.3  ) ", 71.42 + 11.79
    print *,"Exercise 7.4  ) ", 15.32 - 0.47
    print *,"Exercise 7.5  ) ", 50 - ((11.95 * 2) + (3 * 6.59))
    print *,"Exercise 7.6  ) ", 31.85 * 3
    print *,"Exercise 7.7  ) ", 3.19 - (3 * 0.7 + 3 * .65)
end program