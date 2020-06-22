using Test
using SymDiff

@test differentiate(:x, :x) == 1
@test differentiate(:y, :x) == 0    
@test differentiate(:x, :y) == 0
