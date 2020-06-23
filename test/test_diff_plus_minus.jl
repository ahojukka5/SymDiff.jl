using Test
using SymDiff

@test differentiate(:(1 + x), :x) == :(0 + 1)
@test differentiate(:(x - 1), :x) == :(1 - 0)
