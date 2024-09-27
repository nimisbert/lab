# @brief System-Dynamics Makefile

# Toolchain
JL=julia
GP=gnuplot

# Folders
BUILD=build
SRC=src
PLOT=plt

# Examples
fig-06: $(BUILD)/fig-06.dat $(BUILD)/fig-06.png
fig-11: $(BUILD)/fig-11.dat $(BUILD)/fig-11.png
fig-13: $(BUILD)/fig-13.dat $(BUILD)/fig-13.png
fig-16: $(BUILD)/fig-16.dat $(BUILD)/fig-16.png
fig-17: $(BUILD)/fig-17.dat $(BUILD)/fig-17.png
fig-18: $(BUILD)/fig-18.dat $(BUILD)/fig-18.png
fig-19: $(BUILD)/fig-19.dat $(BUILD)/fig-19.png
fig-22: $(BUILD)/fig-22.dat $(BUILD)/fig-22.png

# Rules
$(BUILD)/%.dat: $(SRC)/%.jl
	$(JL) $< > $@

$(BUILD)/fig-%.png: $(PLOT)/fig-%.plt
	$(GP) $<

clean:
	rm -rf *.png $(BUILD)/*
