# @source: Thinking In Systems - Donella Meadows
# @brief: Figure 6. How to read a stock-and-flow diagrams

mutable struct Stock
    s::Float32 # Stock
    i::Float32 # Inflow
    o::Float32 # Outlow
end

let t=0.0, dt=1.0, tf=10.0
    stock = Stock(50.0, 0.0, 5.0)
    while(t < tf)
        stock.s = stock.s - (stock.o - stock.i)*dt
        t = t + dt
        println("Stock at t=",t," ; ",stock.s)  
    end
end
