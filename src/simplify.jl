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