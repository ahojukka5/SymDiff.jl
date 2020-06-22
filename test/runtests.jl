using Test
using SymDiff: differentiate

@testset "Test SymDiff.jl" begin

    @testset "test_diff_constant.jl" begin include("test_diff_constant.jl") end
    @testset "test_diff_symbol.jl" begin include("test_diff_symbol.jl") end
    @testset "test_diff_product_rule.jl" begin include("test_diff_product_rule.jl") end
    @testset "test_diff_power.jl" begin include("test_diff_power.jl") end

    @testset "test_simp_num_or_sym.jl" begin include("test_simp_num_or_sym.jl") end
    @testset "test_simp_multiplication.jl" begin include("test_simp_multiplication.jl") end
    @testset "test_simp_plus_minus.jl" begin include("test_simp_plus_minus.jl") end
end
