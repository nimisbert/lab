# @source: Thinking In Systems - Donella Meadows
# @brief: Figure 16. A cold room warms to the thermostat

mutable struct Stock
    s::Float32 # Stock
    fi::Function # Inflow feedback loop function
    fo::Function # Outlfow feedback loop function
end

# @brief Heating from a furnace feedback
# @param T thermostat setting
# @param s room temperature
function heat( T, s )
    if T > s
        return T - s
    else
        return 0.0
    end 
end

# @brief Leaking of temperature to the outside
# @param T outside temperature
# @param s room temperature
# @param p leakage percentage
function leak( T, s, p )
    return (T - s) * (p / 100)
end

# Global variables
let t=0.0, dt=.1, tf=24.0 
    
    # Initialisation 
    outsideT = 10.0 # Outside temperature
    room = Stock( 18.0, heat, leak )
    
    # Running the models
    while(t <= tf)
        println(t, " ", room.s)
        flow = room.fo(outsideT, room.s, 10)
        room.s = room.s + flow * dt 
        t = t + dt
    end
end
