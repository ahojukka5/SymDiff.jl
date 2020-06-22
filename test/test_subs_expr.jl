using Test
using SymDiff

@test subs(:(1 + a + b), :a => 1) == :(1 + 1 + b)
