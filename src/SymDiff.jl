module SymDiff

"""
    differentiate(f::Expr, x::Symbol)

Differentiate f with respect to x.
"""
function differentiate(f::Expr, x::Symbol)
    if f.head == :call
        return differentiate(Val{f.args[1]}, f, x)
    else
        return differentiate(f.head, x)
    end
end

"""
    differentiate(::Number, ::Symbol)

Differentiate a constant.
"""
function differentiate(::Number, ::Symbol)
    return 0
end

"""
    differentiate(f::Symbol, x::Symbol)

Differentiate a symbol.
"""
function differentiate(f::Symbol, x::Symbol)
    return f == x ? 1 : 0
end

export differentiate

end # module
