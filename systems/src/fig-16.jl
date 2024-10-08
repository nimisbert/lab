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
    return T - s
end

# @brief Leaking of temperature to the outside
# @param T outside temperature
# @param s room temperature
function leak( T, s )
    return 0.0
end

let t=0.0, dt=.1, tf=24.0
    
    # Initialisation 
    thermosT = 18.0
    room = Stock( 10.0, heat, leak )
    
    # Running the models
    while(t <= tf)
        println(t, " ", room.s)
        # Outside leakage is not considered
        room.s = room.s+ room.fi(thermosT,room.s) * dt 
        t = t+dt
    end
end
