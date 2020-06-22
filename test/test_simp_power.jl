using Test
using SymDiff

@test simplify(Val{:^}, :((2+0)^(1*a))) == :(2^a)
