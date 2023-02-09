#Autor: Bohdan Tkachenko 256630

include("metody.jl")
using .Metody
using Printf

x = Vector{Float64}([-1,0,1,2])
f = Vector{Float64}([-1,0,-1,2])


#println(naturalna(x,ilorazyRoznicowe(x,f)))
r = naturalna(x,ilorazyRoznicowe(x,f))
println(r)


println();