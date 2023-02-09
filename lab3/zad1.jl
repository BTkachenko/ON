#Autor: Bohdan Tkachenko 256630
#Metoda bijekcji


#f - funkcja , [a,b] - przedzial
function mbisekcji(f, a::Float64, b::Float64, delta::Float64, epsilon::Float64)
local r::Float64 
local v:: Float64 #f(r)
local it::Int
local err :: Int # 0 - bez blędnie 1 - błąd
local fa::Float64 # f(a)
local fb :: Float64 #f(b)
local c :: Float64 # b - a 

r = 0;
v = 0;
it = 0
err = 0

fa = f(a)
fb = f(b)
c = b - a

    if sign(fa) == sign(fb)
    err = 1
    return (r,v,it,err)
    end

while c > epsilon
    it += 1
    c /=2.0
    r = a + c 
    v = f(r)
    
    if abs(c) < delta || abs(v) < epsilon
        return (r,v,it,err)
    end
        
    if sign(v) != sign(fa)
        b = r 
        fb = v
        
    else 
        a = r 
        fa = v
    end
    


    end
    return (r,v,it,err)
end