! @author nimisbert 
! @source Aeroddynamics for engineers
! @brief unit conversions between
!        standard international units (si)
!        english/united-states units (en)
module UnitConversions
    implicit none
    public :: length_m_to_ft
    public :: length_m_to_in
contains
    function length_m_to_ft( l_si ) result( l_ft )
        real, intent(in) :: l_si
        real             :: l_ft
        l_ft = l_si * 3.2808
    end function
    function length_m_to_in( l_si ) result( l_in )
        real, intent(in) :: l_si
        real             :: l_in
        l_in = l_si * 39.37
    end function 
end module 
