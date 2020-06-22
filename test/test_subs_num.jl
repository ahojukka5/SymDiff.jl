using Test
using SymDiff

@test subs(1, :u => 1) == 1
