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

"""
    differentiate(Val{:*}, f::Expr, x::Symbol)

Differentiate (fg)' using chain rule: ```(fgh)' = f'gh + fg'h + fgh'```.
"""
function differentiate(::Type{Val{:*}}, f::Expr, x::Symbol)
    op = first(f.args)
    @assert op == :*
    res_args = Any[:+]
    for i in 2:length(f.args)
        new_args = copy(f.args)
        new_args[i] = differentiate(f.args[i], x)
        push!(res_args, Expr(:call, new_args...))
    end
    return Expr(:call, res_args...)
end


export differentiate

end # module
