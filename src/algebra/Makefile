# Compilateur
FORTRAN = gfortran
FFLAGS  = 
# Compilation
%.o: %.f90 $(DEPS)
	$(FORTRAN) -c -o $@ $< $(FFLAGS)

cgse_multiples_factors: cgse_multiples_factors.o algebra.o 
	$(FORTRAN) -o cgse_multiples_factors.out cgse_multiples_factors.o algebra.o 

.PHONY: clean 
clean: 
	rm *.out *.o *.mod
