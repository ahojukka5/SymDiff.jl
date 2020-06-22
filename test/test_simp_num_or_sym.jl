using Test
using SymDiff

@test simplify(1) == 1
@test simplify(:a) == :a
