module SymDiff

include("differentiate.jl")
export differentiate

include("simplify.jl")
export simplify

include("subs.jl")
export subs

end # module
