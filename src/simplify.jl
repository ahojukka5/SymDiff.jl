"""
    simplify(expr::Expr)

Simplify expression.
"""
function simplify(ex::Expr)
    @assert ex.head == :call
    return simplify(Val{ex.args[1]}, ex)
end

"""
    simplify(f::Union{Number, Symbol})
"""
function simplify(f::Union{Number, Symbol})
    return f
end

"""
    simplify(Val{:*}, ex::Expr)
"""
function simplify(::Type{Val{:*}}, ex::Expr)
    args = simplify.(ex.args[2:end])
    0 in args && return 0
    filter!(k -> !(isa(k, Number) && k == 1), args)
    length(args) == 1 && return first(args)
    return Expr(:call, :*, args...)
end

"""
    simplify(Val{:+}, ex::Expr)
"""
function simplify(::Type{Val{:+}}, ex::Expr)
    args = simplify.(ex.args[2:end])
    filter!(k -> !isa(k, Number) || k != 0, args)
    length(args) == 1 && return first(args)
    return Expr(:call, :+, args...)
end

"""
    simplify(Val{:-}, ex::Expr)
"""
function simplify(::Type{Val{:-}}, ex::Expr)
    args = simplify.(ex.args[2:end])
    filter!(k -> !isa(k, Number) || k != 0, args)
    length(args) == 1 && return first(args)
    return Expr(:call, :-, args...)
end

"""
    simplify(Val{:^}, ex::Expr)
"""
function simplify(::Type{Val{:^}}, ex::Expr)
    args = simplify.(ex.args[2:end])
    return Expr(:call, :^, args...)
end
