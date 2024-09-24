# @brief System-Dynamics Makefile

# Toolchain
JL=julia
GPLT=gnuplot

# Folders
BUILD=build
SRC=src
PLOT=plt
vpath %.jl $(WORKDIR)$(SRC) $(WORKDIR)$(PLOT)

# Examples

# Rules
%.dat: %.jl
	$(JL) $< > $(BUILD)/$@

%.png: %.plt
	$(GPLT) $< > $(BUILD)/$@

clean:
	rm -rf *.png
