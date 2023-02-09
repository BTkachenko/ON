#Autor: Bohdan Tkachenko 256630
#metoda Siecznych


function msiecznych(f, x0::Float64, x1::Float64, delta::Float64, epsilon::Float64, maxit::Int)
    local r::Float64 
    local v::Float64
    local u::Float64 
    local w::Float64 
    local it::Int 
    local err::Int 
    local s::Float64 
    r = x0
    u = x1
    v = f(r)
    w = f(u)
    it = 0
    err = 0
    for it in 1:maxit
        if abs(v) > abs(w)
            #cukier syntaxyczny 
            r,v,u,w = u,w,r,v
          
        end
        s = (u - r) / (w - v)
        u,w = r,v
        r = r - v * s
        v = f(r)
        if abs(u - r) < delta || abs(v) < epsilon 
            return (r, v, it, err)
        end
    end
    if abs(v) > epsilon && abs(u - r) > delta
        err = 1
    end
    return (r, v, it, err)
end