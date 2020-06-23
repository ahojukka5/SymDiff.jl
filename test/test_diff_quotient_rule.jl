using Test
using SymDiff

@test differentiate(:(x / 1), :x) == :((1 * 1 + x * 0) / 1 ^ 2)
