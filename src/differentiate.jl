"""
    differentiate(f::Expr, x::Symbol)

Differentiate f with respect to x.
"""
function differentiate(f::Expr, x::Symbol)
    @assert f.head == :call
    return differentiate(Val{f.args[1]}, f, x)
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

"""
    differentiate(Val{:^}, f::Expr, x::Symbol)

Differentiate d/dx f^a = a * f ^ (a - 1) * diff(f, x)
"""
function differentiate(::Type{Val{:^}}, ex::Expr, x::Symbol)
    op, f, a = ex.args
    @assert op == :^
    df = differentiate(f, x)
    return :($a * $f ^ ($a - 1) * $df)
end

"""
    differentiate(Val{:/}, ex::Expr, x::Symbol)

Differentiate d/dx f/g.
"""
function differentiate(::Type{Val{:/}}, ex::Expr, x::Symbol)
    op, g, h = ex.args
    @assert op == :/
    dg = differentiate(g, x)
    dh = differentiate(h, x)
    return :(($dg * $h + $g * $dh) / $h^2)
end

"""
    differentiate(Val{:+}, ex::Expr, x::Symbol)

Differentiate d/dx (f + g)
"""
function differentiate(::Type{Val{:+}}, ex::Expr, x::Symbol)
    op = first(ex.args)
    @assert op == :+
    args = differentiate.(ex.args[2:end], x)
    return Expr(:call, :+, args...)
end

"""
    differentiate(Val{:-}, ex::Expr, x::Symbol)

Differentiate d/dx (f - g)
"""
function differentiate(::Type{Val{:-}}, ex::Expr, x::Symbol)
    op = first(ex.args)
    @assert op == :-
    args = differentiate.(ex.args[2:end], x)
    return Expr(:call, :-, args...)
end
