#Autor: Bohdan Tkachenko 256630


function population(n, r, p0)
    if (n == 0) 
        return p0
    end
    pn = population(n-1, r, p0)
    return pn + r*pn*(1 - pn)
end

println("40 iterations Float32: ", population(40, Float32(3), Float32(0.01)))
println("40 iterations Float64: ", population(40, Float64(3), Float64(0.01)))

res = population(10, Float32(3), Float32(0.01))
res = population(10, Float32(3), Float32(floor(res*1000))/1000)
res = population(10, Float32(3), Float32(floor(res*1000))/1000)
res = population(10, Float32(3), Float32(floor(res*1000))/1000)

println("40 iterations, truncated to 3 significant ditits every 10 iterations: ", res)