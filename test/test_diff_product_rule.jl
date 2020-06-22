using Test
using SymDiff

@test differentiate(:(1*x), :x) == :(0*x + 1*1)
@test differentiate(:(x*x), :x) == :(1*x + x*1)
