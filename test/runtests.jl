using Test
using SymDiff: differentiate

@testset "Test SymDiff.jl" begin

    @testset "test_diff_constant.jl" begin include("test_diff_constant.jl") end
    @testset "test_diff_symbol.jl" begin include("test_diff_symbol.jl") end
    @testset "test_diff_product_rule.jl" begin include("test_diff_product_rule.jl") end

end

