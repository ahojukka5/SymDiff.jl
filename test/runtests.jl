using Test
using SymDiff: differentiate

@testset "Test SymDiff.jl" begin

    @testset "test_diff_constant.jl" begin include("test_diff_constant.jl") end

end

