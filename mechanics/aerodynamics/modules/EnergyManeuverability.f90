! @author nimisbert
! @source Aerodynamics for engineers 
! @brief Boelcke's Energy-Maneuverability Technique
module EnergyManeuverability
    implicit none 

    public
    type Boelcke
        procedure :: Ep => potential
        procedure :: Ec => kinetic
    end type Boelcke

contains 
    
    function potential( this, m, V ) result( E )
        class(Boelcke), intent(in) :: this
        real, intent(in) :: m, V
        real             :: E
        E = 0.5 * m * V.**2
    end function

end module
