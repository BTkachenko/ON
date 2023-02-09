#Autor: Bohdan Tkachenko 256630

# Funkcja obliczająca postac normalna wspolczynnikow posiadajac wielomain interpolacyjny Newtona
# x  - wektor zawierający węzły,
# fx - wektor zawierający ilorazy różnicowe
# a  - wektor zawierający współczynniki w postaci normalnej
function naturalna(x :: Vector{Float64}, fx :: Vector{Float64})
    n = length(fx)                  
    a = zeros(n)          # współczynniki w postaci normalnej
    a[n] = fx[n]                          # z twierdzenia a_n = c_n
    for k in n-1 :(-1) : 1            
        a[k] = fx[k]-a[k+1]*x[k]    
        for i = k+1 : n-1           
            a[i] +=-x[k]* a[i+1]
        end
    end

    return a
end