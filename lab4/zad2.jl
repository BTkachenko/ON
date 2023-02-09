#Autor: Bohdan Tkachenko 256630

# x - wektor zawierający węzły, 
# fx - wektor zawierający ilorazy różnicowe,
# t - punkt w którym należy obliczyć wartość wielomianu

function warNewton(x::Vector{Float64}, fx::Vector{Float64}, t::Float64)
    n = length(x)
    nt = fx[n];
    for i=n-1 : -1 : 1
      nt = nt * (t - x[i]) + fx[i];
    end
    return nt;
  end

