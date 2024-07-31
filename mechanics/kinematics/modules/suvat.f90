! @author nimisbert
! @source GCSE/IGCSE Text Book
! @brief s.u.v.a.t. equations
!        the special case of kinematics with uniform acceleration
module Suvat
    implicit none 
    public :: v_ua
contains
    function v_ua( u, a, t ) result(v)
        real, intent(in) :: u, a, t
        real             :: v
        v = u + a*t
    end function
end module Suvat
