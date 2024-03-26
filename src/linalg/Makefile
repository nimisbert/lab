# Author : Nicolas Kielbasiewics
# Date   : 3 Mars 2009
# Source : ENSTA, Paris
FC = gfortran 
FFLAGS = 
LDFLAGS =

SRCS = nr_linalg.f90
OBJS = $(SRCS:.f90=.o)
EXEC = $(SRCS:.f90=)

all: $(EXEC)

%.o: %.f90
	$(FC) $(FFLAGS) -c $< 

%: %.o 
	$(FC) $(LDFLAGS) -o $@ $^

nr_linalg: linalg.o

clean:
	rm -rf *.o *.mod *.out $(OBJS) $(EXEC)