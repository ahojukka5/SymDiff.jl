function subs(a::Number, ::Pair{Symbol, T}) where T <: Union{Int, Float64, Expr}
    return a
end
