using Test
using SymDiff: differentiate

@test differentiate(1, :x) == 0
