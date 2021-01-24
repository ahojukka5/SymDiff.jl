# SymDiff.jl - symbolic differentiation

[![ci](ci-img)](ci-url)
[![codecov](codecov-img)](codecov-url)
[![docs-stable](docs-stable-img)](docs-stable-url)
[![docs-dev](docs-dev-img)](docs-dev-url)

[ci-img]: https://github.com/ahojukka5/SymDiff.jl/workflows/CI/badge.svg
[ci-url]: https://github.com/ahojukka5/SymDiff.jl/actions?query=workflow%3ACI+branch%3Amaster
[codecov-img]: https://codecov.io/gh/ahojukka5/SymDiff.jl/branch/master/graph/badge.svg?token=tm03mv3OQ7
[codecov-url]: https://codecov.io/gh/ahojukka5/SymDiff.jl
[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://ahojukka5.github.io/SymDiff.jl/stable
[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://ahojukka5.github.io/SymDiff.jl/dev

Package author: Jukka Aho (@ahojukka5)

SymDiff.jl is a small package demonstrating how one can do expression
manipulations using Julia.

With the help of the package, it's possible to evaluate fast polynomials:

```julia
julia> using SymDiff

julia> f = :(2 * w^2 * u * v^2)
:(2 * w ^ 2 * u * v ^ 2)

julia> df = simplify(differentiate(f, :u))
:(2 * w ^ 2 * v ^ 2)

julia> @eval df1(u, v, w) = $df
df1 (generic function with 1 method)

julia> df2(u, v, w) = 2 * w^2 * v^2
df2 (generic function with 1 method)

julia> using BenchmarkTools

julia> @btime df1(1, 2, 3)
  0.023 ns (0 allocations: 0 bytes)
72

julia> @btime df2(1, 2, 3)
  0.025 ns (0 allocations: 0 bytes)
72
```
