include("Metody.jl")
using .Metody 
e = MathConstants.e
f(x) = sin(x)
pf(x) = cos(x)


(r, v, it, err) = mbisekcji(f, -1.0, 2.0, 0.5 * 10 ^ (-5.0), 0.5 * 10 ^ (-5.0))
println("Metoda bisekcji dla sin(x) [-1,2]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)
(r, v, it, err) =mstycznych(f, pf, -0.2, 10^(-5), 10^(-5), 500)
println("Metoda stycznych:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =msiecznych(f, -1.0, 2.0, 10^(-5), 10^(-5), 500)
println("Metoda siecznych:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

println("\n____________________________________________\n")

f(x) = e^x - 5
pf(x) = e^x




(r, v, it, err) = mbisekcji(f, 0.0, 6.0, 0.5 * 10 ^ (-5.0), 0.5 * 10 ^ (-5.0))
println("Metoda bisekcji dla  e^x - 5 [0,6]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)
(r, v, it, err) =mstycznych(f, pf, 1.0, 10^(-5), 10^(-5), 500)
println("Metoda stycznych:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =msiecznych(f, 1.0, 6.0, 10^(-5), 10^(-5), 500)
println("Metoda siecznych:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

println("\n____________________________________________\n")

f(x) = (x-3)*(x+1)
pf(x) = 2(x-1)



(r, v, it, err) = mbisekcji(f, -2.0, 1.0, 0.5 * 10 ^ (-5.0), 0.5 * 10 ^ (-5.0))
println("Metoda bisekcji dla  f(x) = (x-3)*(x+1) [-2,1]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)
(r, v, it, err) =mstycznych(f, pf, -2.0, 10^(-5), 10^(-5), 500)
println("Metoda stycznych:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =msiecznych(f, -2.0, 1.0, 10^(-5), 10^(-5), 500)
println("Metoda siecznych:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

println("\n____________________________________________\n")

(r, v, it, err) = mbisekcji(f, 1.0, 4.0, 0.5 * 10 ^ (-5.0), 0.5 * 10 ^ (-5.0))
println("Metoda bisekcji dla  f(x) = (x-3)*(x+1) [1,4]:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =mstycznych(f, pf, 2.0, 10^(-5), 10^(-5), 500)
println("Metoda stycznych:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

(r, v, it, err) =msiecznych(f, 1.0, 4.0, 0.5 * 10 ^ (-5.0), 0.5 * 10 ^ (-5.0),30)
println("Metoda siecznych:")
println("r = ", r)
println("v = ", v)
println("it = ", it)
println("err = ", err)

println("\n____________________________________________\n")