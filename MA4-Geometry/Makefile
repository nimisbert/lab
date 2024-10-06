
# Toolchain
JL=julia
GP=gnuplot

# Folders
SRC=src
BUILD=build
PLOT=plt
P=Proposition

$(P)-1: $(BUILD)/$(P)-1.dat $(BUILD)/$(P)-1.png

# Rules
$(BUILD)/%.dat: $(SRC)/%.jl
	$(JL) $< > $@

$(BUILD)/%.png: $(PLOT)/%.plt
	$(GP) $< 

clean:
	rm -rf *.png $(BUILD)/*
