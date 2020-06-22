using Test
using SymDiff

@test differentiate(:(x^2), :x) == :(2 * x ^ (2 - 1) * 1)
