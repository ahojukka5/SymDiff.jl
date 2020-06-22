function subs(a::Number, ::Pair{Symbol, T}) where T <: Union{Int, Float64, Expr}
    return a
end

function subs(s::Symbol, arg::Pair{Symbol, T}) where T <: Union{Int, Float64, Expr}
    k, v = arg
    return s == k ? v : s
end
