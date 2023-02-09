#Autor: Bohdan Tkachenko 256630

include("metody.jl")
using .Metody

rysujNnfx(x->e^x, 0.0, 1.0, 5)
rysujNnfx(x->e^x, 0.0, 1.0, 10)
rysujNnfx(x->e^x, 0.0, 1.0, 15)

rysujNnfx(x->(x^2)*sin(x), -1.0, 1.0, 5)
rysujNnfx(x->(x^2)*sin(x), -1.0, 1.0, 10)
rysujNnfx(x->(x^2)*sin(x), -1.0, 1.0, 15)