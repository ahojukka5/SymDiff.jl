using Test
using SymDiff: differentiate

@testset "Test SymDiff.jl" begin
    @testset "Test differentiate of constant" begin
        @test differentiate(1, :x) == 0
        @test differentiate(1.0, :x) == 0    
        @test differentiate(1//2, :x) == 0
    end
end

