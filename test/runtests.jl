using Test
using SymDiff: differentiate

@test differentiate(1, :x) == 0

@test differentiate(1.0, :x) == 0
