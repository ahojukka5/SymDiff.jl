using Test
using SymDiff

@test simplify(:((x+0)/(y+0))) == :(x/y)
