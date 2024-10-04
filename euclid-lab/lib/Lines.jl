# @source Book 1. Definition 5.
# @brief The extremities of a line are points.
module Lines
using Points
export Line

mutable struct Line
    A::Point
    B::Point
end

end
