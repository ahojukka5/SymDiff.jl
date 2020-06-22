# SymDiff.jl - symbolic differentiation

[![Build Status][travis-img]][travis-url]
[![Coverage Status][coveralls-img]][coveralls-url]

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

[travis-img]: https://travis-ci.org/ahojukka5/SymDiff.jl.svg?branch=master
[travis-url]: https://travis-ci.org/ahojukka5/SymDiff.jl
[coveralls-img]: https://coveralls.io/repos/github/ahojukka5/SymDiff.jl/badge.svg?branch=master
[coveralls-url]: https://coveralls.io/github/ahojukka5/SymDiff.jl?branch=master