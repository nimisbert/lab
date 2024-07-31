# @brief  : Compilation Fortran
# @author : Nicolas Kielbasiewics
# @date   : 2009/03/03
# @source : ENSTA, Paris
FC = gfortran 
FFLAGS = -fdec-structure
LDFLAGS =
VPATH = src
SRCS =
OBJS = $(SRCS:.f90=.o)
EXEC = $(SRCS:.f90=)

all: $(EXEC)

%.o: %.f90
	$(FC) $(FFLAGS) -c $< 

%.out: %.o 
	$(FC) $(LDFLAGS) -o $@ $^

clean:
	rm -rf *.o *.mod *.out *.png $(OBJS) $(EXEC)
