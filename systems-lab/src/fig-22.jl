# @source: Thinking In Systems - Donella Meadows
# @brief: Figure 22. Population growth if fertility
# and mortality maintain their 2007 levels of births

mutable struct Stock
    s::Float32 # Stock 
    fi::Function # Inflow feedback loop function
end

# @param: r number of births per 1000 people  
function births( r, s )
    return s*r/1000
end

let t=2000, dt=1, tf=2110
    
    # Initialisation
    pop = Stock(6.6, births)

    # Running the models
    while(t < tf)
        println(t, " ", pop.s)
        pop.s = pop.s + pop.fi( 26, pop.s )*dt
        t = t + dt
    end
end
