#Autor: Bohdan Tkachenko 256630

include("metody.jl")
using .Metody

rysujNnfx(x->abs(x), -1.0, 1.0, 5)
rysujNnfx(x->abs(x), -1.0, 1.0, 10)
rysujNnfx(x->abs(x), -1.0, 1.0, 15)

rysujNnfx(x->1/(1+x^2), -5.0, 5.0, 5)
rysujNnfx(x->1/(1+x^2), -5.0, 5.0, 10)
rysujNnfx(x->1/(1+x^2), -5.0, 5.0, 15)