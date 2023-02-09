#Autor: Bohdan Tkachenko 256630


#funkcja
f(x) = sin(x) + cos(3x)
# funkcja pochodna
der(x) = cos(x) - 3sin(3x)

#szacowanie pochodnej
approx_der(f, x, h) = (f(x+h)-f(x))/h

#szacowanie bledu
approx_err(val, approx) = abs(val - approx)
# pochodna w punktcie 1.0
rv = der(Float64(1.0))
for i = 0 : 54

    
    h = Float64(2.0)^(-i)

    
    #szacowana pochodna w 1.0
    av = approx_der(f, Float64(1.0), h)
    err = approx_err(rv, av)
    println("2^-$(i)   $(av)     $(err)      $(1+h)    ")
end