#Autor: Bohdan Tkachenko 256630



using Printf
#Funkcja przyjmuje typ dannych t i oblicza epsilon maszynowy
function calculate_macheps(t)
    
        m::t = t(1.0)
        while t(1.0) + m /t(2.0) > t(1.0)
            m /= t(2.0)
        end
        return m
    end

#Funkcja przyjmuje typ dannych t i oblicza najmniejsza liczbe >0
   function calculate_min(t)
        min::t = t(1.0)
        while min/t(2.0) > t(0.0)
            min /= t(2.0)
        end
        return min
    end

    function calculate_max(t)
        max::t = t(1.0)
        while !isinf(max*t(2.0))
            max *=t(2.0)
        end
        max *= (t(2.0) - t(calculate_macheps(t)))
        return max
    end

    Types = [Float16,Float32,Float64]
    for t in Types
        println("Type: ",t);
        @printf("Calculated macheps for %s: %.15e\n",t, calculate_macheps(t))
        @printf("Function   macheps for %s: %.15e",t, eps(t))
        println("\n")


        @printf("calculate_min : %.15e \n",calculate_min(t))
        @printf("Min który oblicza funkcja biblioteczna Julii: %.15e \n",nextfloat(t(0.0)))
        @printf("Floatmin : %.15e",floatmin(t))
        println("\n")

        @printf("calculate_max :  %.15e \n",calculate_max(t))
        @printf("Max który oblicza funkcja biblioteczna Julii: %.15e \n",floatmax(t));
        println("\n")
        println("\n")

    end


    