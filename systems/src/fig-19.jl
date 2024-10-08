# @source: Thinking In Systems - Donella Meadows
# @brief: Figure 19. furnace warming a cool room even as 
# heat leaks from the outside with freezing temperatures

mutable struct Stock 
    s::Float32 # Stock
    fi::Function # Inflow feedback loop function
    fo::Function # Outflow feedback loop function
end

function heat( T, s )
    if T > s
        return T - s
    else
        return 0.0
    end
end

function leak( T, s, p )
    return (T - s) * (p / 100)
end

function weather( t )
    w = 10*cos(2*pi*t*(1/24))
    return w < -5 ? -5 : w 
end

let t = 0.0, dt=.1, tf=24.0
    
    # Initialisation 
    T = 18.0    # Thermostat settings
    W = 10.0    # Weather temperature
    room10 = Stock( 10, heat, leak ) # 10% leakage parameter
    room30 = Stock( 10, heat, leak ) # 30% leakage parameter

    # Running the models 
    while(t < tf) 
        W = weather(t)
        println(t, " ", T, " ", W, " ", room10.s, " ", room30.s)
        flow10 = room10.fi(T, room10.s) + room10.fo(W, room10.s, 10)
        room10.s = room10.s + flow10 * dt
        flow30 = room30.fi(T, room30.s) + room30.fo(W, room30.s, 30)
        room30.s = room30.s + flow30 * dt
        t = t + dt
    end
end
