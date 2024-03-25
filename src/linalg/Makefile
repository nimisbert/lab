# Compilateur
FORTRAN = gfortran
FFLAGS  = 
# Compilation
%.o: %.f90 $(DEPS)
	$(FORTRAN) -c -o $@ $< $(FFLAGS)

nr_linalg: nr_linalg.o linalg.o 
	$(FORTRAN) -o nr_linalg.out nr_linalg.o linalg.o 

.PHONY: clean 
clean: 
	rm *.out *.o *.mod
