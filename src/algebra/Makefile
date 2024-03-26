# Author : Nicolas Kielbasiewics
# Date   : 3 Mars 2009
# Source : ENSTA, Paris
FC = gfortran 
FFLAGS = 
LDFLAGS =

SRCS = cgse_calculations.f90 \
	   cgse_multiples_factors.f90

OBJS = $(SRCS:.f90=.o)
EXEC = $(SRCS:.f90=)

all: $(EXEC)

%.o: %.f90
	$(FC) $(FFLAGS) -c $< 

%: %.o 
	$(FC) $(LDFLAGS) -o $@ $^

cgse_multiples_factors: algebra.o

clean:
	rm -rf *.o *.mod *.out $(OBJS) $(EXEC)