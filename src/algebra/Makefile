# @brief  : Compilation Fortran
# @author : Nicolas Kielbasiewics
# @date   : 2009/03/03
# @source : ENSTA, Paris
FC = gfortran 
FFLAGS = 
LDFLAGS =

SRCS = cgse_11.f90 \
	   cgse_12.f90

OBJS = $(SRCS:.f90=.o)
EXEC = $(SRCS:.f90=)

all: $(EXEC)

%.o: %.f90
	$(FC) $(FFLAGS) -c $< 

%: %.o 
	$(FC) $(LDFLAGS) -o $@ $^

cgse_12: algebra.o

clean:
	rm -rf *.o *.mod *.out $(OBJS) $(EXEC)
