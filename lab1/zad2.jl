#Autor: Bohdan Tkachenko 256630

function kahaneps(t)
    ke::t = t(3.0)*(t(4.0)/t(3.0) - t(1.0)) - t(1.0)
    return ke
end

for t in [Float16,Float32,Float64]
    println("Type: ",t)
    println("Machets obliczony metoda Khana :",kahaneps(t))
    println("Machets który oblicza funkcja biblioteczna Julii: ",eps(t))
end