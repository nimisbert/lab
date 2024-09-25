# @source: Thinking In Systems - Donella Meadows 
# @brief: Figure 13. Growth savings with various interest rates.
# A simple example on reinforcing feedback loops

mutable struct Stock 
    s::Float32  # Stock 
    f::Function # Feedback loop
end

# @brief Interest Rate function (Appendix Model & Equations)
# @param s A stock value representing the money on an account
# @param p An interest percentage [0-100] 
function interest_rate( s, p )
    return s*p/100
end

# Global variables 
let t=0.0, dt=1.0, tf=12.0
    
    # Initialisation
    account02 = Stock( 100, interest_rate )
    account04 = Stock( 100, interest_rate )
    account06 = Stock( 100, interest_rate )
    account10 = Stock( 100, interest_rate )

    # Running the model
    while(t <= tf)
        println(t, 
                " ", account02.s, 
                " ", account04.s,
                " ", account06.s,
                " ", account10.s)
        account02.s = account02.s + account02.f( account02.s,  2 )
        account04.s = account04.s + account04.f( account04.s,  4 )
        account06.s = account06.s + account06.f( account06.s,  6 )
        account10.s = account10.s + account10.f( account10.s, 10 )
        t = t + dt
    end
end
