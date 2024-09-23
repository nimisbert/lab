# @source: Thinking In Systems - Donella Meadows
# @brief: Figure 6. How to read a stock-and-flow diagrams
using DelimitedFiles

mutable struct Stock
    s::Float32 # Stock
    i::Float32 # Inflow
    o::Float32 # Outlow
end

# Global variables
let t=0.0, dt=1.0, tf=10.0
    
    # Initialisation 
    file = open("./data/fig-6.dat","w")
    stock = Stock(50.0, 0.0, 5.0)
    
    # Running the model
    while(t <= tf)
        writedlm(file, [t stock.s])
        stock.s = stock.s - (stock.o - stock.i)*dt
        t = t + dt
    end
end
