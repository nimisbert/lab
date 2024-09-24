# @brief System-Dynamics Makefile

# Toolchain
JL=julia
GP=gnuplot

# Folders
BUILD=build
SRC=src
PLOT=plt
vpath %.jl %.plt $(WORKDIR)$(SRC) $(WORKDIR)$(PLOT)

# Examples
fig-6: fig-6.dat

# Rules
%.dat: %.jl
	$(JL) $< > $(BUILD)/$@

clean:
	rm -rf *.png $(BUILD)/*
