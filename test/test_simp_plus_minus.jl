using Test
using SymDiff

@test simplify(Val{:+}, :(a + b + 0)) == :(a + b)
@test simplify(Val{:+}, :(a + 0)) == :a

@test simplify(Val{:-}, :(a - b - 0)) == :(a - b)
@test simplify(Val{:-}, :(a - 0)) == :a
