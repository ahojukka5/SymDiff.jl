using Test
using SymDiff

@test subs(:a, (:a => 1)) == 1
@test subs(:a, (:b => 1)) == :a
