#Autor: Bohdan Tkachenko 256630

using Polynomials,IntervalArithmetic
import IntervalRootFinding

originalPoly = [
    1,
     -210.0,
    20615.0,
    -1256850.0,
    53327946.0,
    -1672280820.0,
    40171771630.0,
    -756111184500.0,
    11310276995381.0,
    -135585182899530.0,
    1307535010540395.0,
    -10142299865511450.0,
    63030812099294896.0,
    -311333643161390640.0,
    1206647803780373360.0,
    -3599979517947607200.0,
    8037811822645051776.0,
    -12870931245150988800.0,
    13803759753640704000.0,
    -8752948036761600000.0,
    2432902008176640000.0
]




#tworzenie wielomianu P1(x)
P1 = Polynomial(reverse(originalPoly));
#miejsca zerowe
A1 = roots(P1);
println(A1[1] - 1)



p = fromroots((1.0:20.0))
println("ORYGINALNY WIELOMIAN::")

println("\nDla postaci naturalnej wielomianu Wilkinsona");
for i=1:20
  println("P(A[",i,"]) = ", abs(P1(A1[i])))
end

println("\nDla wielomianu Wilkinsona");
for i=1:20
  println("p(A[",i,"]) = ", abs(p(A1[i])))
end

println("\nróżnice między wartościami roots() a rzeczywistymi");
for i=1:20
 println("A[i] - ", i, " = ", abs(A1[i] - i))
end








p2 = [
    1,
    -210.0-2^(-23),
    # -210.0,
    20615.0,
    -1256850.0,
    53327946.0,
    -1672280820.0,
    40171771630.0,
    -756111184500.0,
    11310276995381.0,
    -135585182899530.0,
    1307535010540395.0,
    -10142299865511450.0,
    63030812099294896.0,
    -311333643161390640.0,
    1206647803780373360.0,
    -3599979517947607200.0,
    8037811822645051776.0,
    -12870931245150988800.0,
    13803759753640704000.0,
    -8752948036761600000.0,
    2432902008176640000.0
]

P2 = Polynomial(reverse(p2))
fromRoots = fromroots(collect(1.0:20.0))

A2 = Polynomials.roots(P2)





for k=1:20
  println("MP(A[",k,"]) = ", abs(P2(A2[k])))
end

println("\nróżnice między wartościami zk a rzeczywistymi");
for j=1:20
 println("MA[",j,"] - ", j, " = ", abs(A2[j] - j))
end