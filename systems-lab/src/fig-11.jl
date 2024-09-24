# @source: Thinking In Systems - Donella Meadows
# @brief: Figure 11. Coffee Temperature 
# An example of balancing feedback loop

mutable struct Stock
    s::Float32      # Stock
    i::Float32      # Inflow
    o::Float32      # Outflow
    fb::Function    # Feedback Loop Function
end

function dT( thermostat, s )
    return (thermostat - s)/2
end

let t=0.0, dt=0.1, tf=8*60
    
    # Initialisation
    roomT = 18.0
    coffee100 = Stock(100.0, 0.0, 0.0, dT)
    coffee080 = Stock(80.0, 0.0, 0.0, dT)
    coffee060 = Stock(60.0, 0.0, 0.0, dT)
    coffee010 = Stock(10.0, 0.0, 0.0, dT)
    coffee005 = Stock(5.0, 0.0, 0.0, dT)
    coffee000 = Stock(0.0, 0.0, 0.0, dT)
    # Running the models
    while(t <= tf)
        println(t, 
                " ", coffee100.s, 
                " ", coffee080.s,
                " ", coffee060.s,
                " ", coffee010.s,
                " ", coffee005.s,
                " ", coffee000.s,
                " ", roomT
               )
        coffee100.s = coffee100.s + coffee100.fb(roomT, coffee100.s)*dt
        coffee080.s = coffee080.s + coffee080.fb(roomT, coffee080.s)*dt
        coffee060.s = coffee060.s + coffee060.fb(roomT, coffee060.s)*dt
        coffee010.s = coffee010.s + coffee010.fb(roomT, coffee010.s)*dt
        coffee005.s = coffee005.s + coffee005.fb(roomT, coffee005.s)*dt
        coffee000.s = coffee000.s + coffee000.fb(roomT, coffee000.s)*dt
        t = t + dt
    end
end
