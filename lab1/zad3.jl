#Autor: Bohdan Tkachenko 256630


function stepf(start,steps,delta)
    f = Float64(start)
    for i = 1 : steps
        f += delta
        println("$(bitstring(f))")
    end
end

function stepb(start,steps,delta)
        f = Float64(start)
    for i = 1 : steps
        f -= delta
        println("$(bitstring(f))")
    end
end


println("Start: 0.5 , steps : 4 , delta: 2^-53")
stepf(Float64(0.5),4,Float64(2^-53));
println("\n\n")
println("Start: 1.0 , steps : 4 , delta: 2^-53")
stepb(Float64(1),4,Float64(2^-53));
println("\n\n")
println("Start: 2.0 , steps : 4 , delta: 2^-51")
stepf(Float64(2.0),4,Float64(2^-51));
println("\n\n")
println("Start: 4.0 , steps : 4 , delta: 2^-51")
stepb(Float64(4.0),4,Float64(2^-51));





