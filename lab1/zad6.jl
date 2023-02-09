

#Autor: Bohdan Tkachenko 256630


# 1 funkcja
function f(x::Float64)
    return sqrt((x^2)+1)-1
  end
  
  # 2 funkcja
  function g(x::Float64)
    return (x^2)/(sqrt((x^2)+1)+1)
  end
  



  for i = 1:200
    println("Potega = -",i,"  f = ",f(Float64(1/8)^i), "  g = ",g(Float64(1/8)^i))
  end




