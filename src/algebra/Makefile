# Compilateur
FORTRAN = gfortran
FFLAGS  = 
# Repertoires
WORKDIR = 
# Compilation
%: %.f90
	$(FORTRAN) $^ -o $@

.PHONY: clean 
clean: 
	rm *.out
