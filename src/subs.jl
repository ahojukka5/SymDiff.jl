function subs(a::Number, ::Pair{Symbol, T}) where T <: Union{Int, Float64, Expr}
    return a
end

function subs(s::Symbol, arg::Pair{Symbol, T}) where T <: Union{Int, Float64, Expr}
    k, v = arg
    return s == k ? v : s
end

function subs(ex::Expr, arg::Pair{Symbol, T}) where T <: Union{Int, Float64, Expr}
    ne = copy(ex)
    for i=2:length(ne.args)
        ne.args[i] = subs(ne.args[i], arg)
    end
    return ne
end
