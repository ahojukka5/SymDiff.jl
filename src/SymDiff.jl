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

function differentiate(::Int, ::Symbol)
    return 0
end

export differentiate

end # module
