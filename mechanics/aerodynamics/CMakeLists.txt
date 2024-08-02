# CMake parameters
cmake_minimum_required( VERSION 3.1 )

# Project variables & definitions
project(
    aerodynamics 
    VERSION 0.1
    DESCRIPTION "Aerodynamics examples & simulations"
    LANGUAGES Fortran )

# Languages flags & definition
set( WORKDIR ./ )
enable_language( Fortran )
set( Fortran_VERSION "-std=f95" )
set( CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} ${Fortran_VERSION}" )
include_directories( modules ${WORKDIR} )

# Project filenames 
set( MODULES Aerodynamics )
set( MAIN_0  test-conversions )

# Build instructions
add_library( ${MODULES} STATIC 
    modules/UnitConversions.f90 
    modules/EnergyManeuverability.f90 )
add_executable( ${MAIN_0} src/${MAIN_0}.f90)
target_link_libraries( ${MAIN_0} LINK_PUBLIC ${MODULES} )
