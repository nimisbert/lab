! @author nimisbert 
! @source Aeroddynamics for engineers
! @brief unit conversions between
!        standard international units (si)
!        english/united-states units (us)
module UnitConversions
    implicit none

    public :: meterToFeet
    public :: meterToInch
    public :: kilometerToMile
    public :: kilometerToYard

contains
    
    function meterToFeet( si ) result( us )
        real, intent(in) :: si
        real             :: us
        us = si * 3.2808
    end function
    
    function meterToInch( si ) result( us )
        real, intent(in) :: si
        real             :: us
        us = si * 39.37
    end function

    function kilometerToMile( si ) result( us )
        real, intent(in) :: si
        real             :: us
        us = si * 0.6214
    end function 

    function kilometerToYard( si ) result( us )
        real, intent(in) :: si
        real             :: us
        us = si * 1093.6
    end function 

end module 
