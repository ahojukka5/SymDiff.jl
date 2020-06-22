using Test
using SymDiff

@test differentiate(1, :x) == 0
@test differentiate(1.0, :x) == 0    
@test differentiate(1//2, :x) == 0
