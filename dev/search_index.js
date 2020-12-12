var documenterSearchIndex = {"docs":
[{"location":"#SymDiff","page":"SymDiff","title":"SymDiff","text":"","category":"section"},{"location":"","page":"SymDiff","title":"SymDiff","text":"Package to analytically differentiate polynomials","category":"page"},{"location":"","page":"SymDiff","title":"SymDiff","text":"Modules = [SymDiff]","category":"page"},{"location":"#SymDiff.differentiate-Tuple{Expr,Symbol}","page":"SymDiff","title":"SymDiff.differentiate","text":"differentiate(f::Expr, x::Symbol)\n\nDifferentiate f with respect to x.\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.differentiate-Tuple{Number,Symbol}","page":"SymDiff","title":"SymDiff.differentiate","text":"differentiate(::Number, ::Symbol)\n\nDifferentiate a constant.\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.differentiate-Tuple{Symbol,Symbol}","page":"SymDiff","title":"SymDiff.differentiate","text":"differentiate(f::Symbol, x::Symbol)\n\nDifferentiate a symbol.\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.differentiate-Tuple{Type{Val{:*}},Expr,Symbol}","page":"SymDiff","title":"SymDiff.differentiate","text":"differentiate(Val{:*}, f::Expr, x::Symbol)\n\nDifferentiate (fg)' using chain rule: (fgh)' = f'gh + fg'h + fgh'.\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.differentiate-Tuple{Type{Val{:+}},Expr,Symbol}","page":"SymDiff","title":"SymDiff.differentiate","text":"differentiate(Val{:+}, ex::Expr, x::Symbol)\n\nDifferentiate d/dx (f + g)\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.differentiate-Tuple{Type{Val{:-}},Expr,Symbol}","page":"SymDiff","title":"SymDiff.differentiate","text":"differentiate(Val{:-}, ex::Expr, x::Symbol)\n\nDifferentiate d/dx (f - g)\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.differentiate-Tuple{Type{Val{:/}},Expr,Symbol}","page":"SymDiff","title":"SymDiff.differentiate","text":"differentiate(Val{:/}, ex::Expr, x::Symbol)\n\nDifferentiate d/dx f/g.\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.differentiate-Tuple{Type{Val{:^}},Expr,Symbol}","page":"SymDiff","title":"SymDiff.differentiate","text":"differentiate(Val{:^}, f::Expr, x::Symbol)\n\nDifferentiate d/dx f^a = a * f ^ (a - 1) * diff(f, x)\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.simplify-Tuple{Expr}","page":"SymDiff","title":"SymDiff.simplify","text":"simplify(expr::Expr)\n\nSimplify expression.\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.simplify-Tuple{Type{Val{:*}},Expr}","page":"SymDiff","title":"SymDiff.simplify","text":"simplify(Val{:*}, ex::Expr)\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.simplify-Tuple{Type{Val{:+}},Expr}","page":"SymDiff","title":"SymDiff.simplify","text":"simplify(Val{:+}, ex::Expr)\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.simplify-Tuple{Type{Val{:-}},Expr}","page":"SymDiff","title":"SymDiff.simplify","text":"simplify(Val{:-}, ex::Expr)\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.simplify-Tuple{Type{Val{:/}},Expr}","page":"SymDiff","title":"SymDiff.simplify","text":"simplify(Val{:/}, ex::Expr)\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.simplify-Tuple{Type{Val{:^}},Expr}","page":"SymDiff","title":"SymDiff.simplify","text":"simplify(Val{:^}, ex::Expr)\n\n\n\n\n\n","category":"method"},{"location":"#SymDiff.simplify-Tuple{Union{Number, Symbol}}","page":"SymDiff","title":"SymDiff.simplify","text":"simplify(f::Union{Number, Symbol})\n\n\n\n\n\n","category":"method"}]
}
