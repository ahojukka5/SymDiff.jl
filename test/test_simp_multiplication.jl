using Test
using SymDiff

@test simplify(:(a * b * 0)) == 0
@test simplify(:(a * 1 * b)) == :(a * b)
