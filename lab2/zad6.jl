#Autor: Bohdan Tkachenko 256630

function func(c, x)
    for i in range(1, 40)
        x = x^(2.0) + c
        println(x)
    end
end

println("\n( - 2 , 1 ) \n")
func(-2, 1)
println("\n( - 2 , 2 ) \n")
func(-2, 2)
println("\n( - 2 , 1.99999999999 ) \n")
func(-2, 1.99999999999999)
println("\n( - 1 , 1 ) \n")
func(-1, 1)
println("\n( - 1 , -1 ) \n")
func(-1, -1)
println("\n( - 1 , 0.75 ) \n")
func(-1, 0.75)
println("\n( - 1 , 0.25 ) \n")
func(-1, 0.25)