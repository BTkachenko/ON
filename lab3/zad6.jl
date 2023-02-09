#Autor: Bohdan Tkachenko 256630

include("Metody.jl")
using .Metody
e = MathConstants.e
f1(x) = e^(1-x) - 1
pf1(x) = -e^(1-x)
f2(x) = x*e^(-x)
pf2(x) = -e^(-x) * (x - 1)


println("e^(x-1) - 1:")
(r, v, it, err) = mbisekcji(f1, 0.0, 2.0, 10^(-5), 10^(-5))
println("Metoda bisekcji [0,2]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)


(r, v, it, err) = mbisekcji(f1, 0.0, 2.1, 10^(-5), 10^(-5))
println("Metoda bisekcji [0,2.1]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) = mbisekcji(f1, 0.0, 1.1, 10^(-5), 10^(-5))
println("Metoda bisekcji [0.0,1.1]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =mstycznych(f1, pf1, 0.2, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 0.2:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =mstycznych(f1, pf1, 1.5, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 1.5:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =mstycznych(f1, pf1, 6.0, 10^(-5), 10^(-5), 5000)
println("Metoda stycznych x0 = 6.0:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)



(r, v, it, err) =msiecznych(f1, 0.5, 1.5, 10^(-5), 10^(-5), 500)
println("Metoda siecznych [0.5,1.5]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

println("\n____________________________________________\n")

println("\nx*e^(-x):")


(r, v, it, err) = mbisekcji(f2, -1.0, 1.0, 10^(-5), 10^(-5))
println("Metoda bisekcji [-1,1]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) = mbisekcji(f2, -0.4, 0.6, 10^(-5), 10^(-5))
println("Metoda bisekcji [-0.4,0.6]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)



(r, v, it, err) =mstycznych(f2,pf2, 0.5, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 0.5:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =mstycznych(f2, pf2, 0.4, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 0.4:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)


(r, v, it, err) =mstycznych(f2,pf2, 1.0, 10^(-5), 10^(-5), 5000)
println("Metoda stycznych x0 = 1:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =mstycznych(f2,pf2, 1.5, 10^(-5), 10^(-5), 5000)
println("Metoda stycznych x0 = 1.5:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)





(r, v, it, err) =mstycznych(f2, pf2, 1.5, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 1.5:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)


(r, v, it, err) =mstycznych(f2, pf2, 2.5, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 2.5:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)


(r, v, it, err) =mstycznych(f2, pf2, 4.5, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 4.5:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)


(r, v, it, err) =mstycznych(f2, pf2, 11.5, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 11.5:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =mstycznych(f2, pf2, 15.0, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 15.0:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)


(r, v, it, err) =mstycznych(f2, pf2, 115.0, 10^(-5), 10^(-5), 500)
println("Metoda stycznych x0 = 115:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)



(r, v, it, err) =msiecznych(f2, -1.0, 1.0, 10^(-5), 10^(-5), 500)

println("Metoda siecznych:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)