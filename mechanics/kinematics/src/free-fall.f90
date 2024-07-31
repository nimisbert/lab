! @author nimisbert
! @source GCSE/IGCSE Text Book
! @brief  s.u.v.a.t. applied to an object dropped from high ground

program main
    use Suvat
    implicit none
    real :: a = -9.81
    real :: u =  0.0
    real :: t = 10.0
    print *, "Vitesse v(",t,")=",v_ua( u, a, t )
end program main 
