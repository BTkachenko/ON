#Autor: Bohdan Tkachenko 256630
#metoda Newtona(stycznych)

#f - funkcja , pf - pochodna funkcji f
function mstycznych(f, pf, x0::Float64, delta::Float64, epsilon::Float64, maxit::Int)
    local r::Float64 
    local v::Float64 
    local it::Int 
    local err::Int 
    local x1::Float64 

    r = x0
    v = f(r)
    it = 0
    err = 0

    if abs(v) < epsilon
        err = 0
        return (r,v,it,err)
    end
    for it in 1:maxit
        if abs(pf(r)) <epsilon
            err = 2
            return (r,v,it,err)  
        end
        x1 = r - (v/pf(r))
        v = f(x1)
        if abs(x1 - r) < delta || abs(v) < epsilon
            return (r,v,it,err)
        end
        r = x1
    end
    # nie udalo się w maxit iteracji
    if abs(v) > epsilon
        err = 1
    end
    return (r,v,it,err)
end