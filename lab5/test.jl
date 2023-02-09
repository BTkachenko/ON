#Autor Bohdan Tkachenko 256630

include("blocksys.jl")
include("matrixgen.jl")
using .matrixgen
using LinearAlgebra

function lu(A, n, l, b)
    L, U = Blocksys.lu(A, n, l)
    return Blocksys.solveLu(U, L, n, l, b)
end

function luChoice(A, n, l, b)
    U, L, perm = Blocksys.luWithChoice(A, n, l)
    return Blocksys.solveLuWithChoice(U, L, n, l, b, perm)
end

@time begin
    
 
  

using SparseArrays
n = 50000
#sparse_vec = fill(1.0,n)



A = Blocksys.readMatrix("./Dane/Dane50000_1_1/A.txt")
b = Blocksys.readVector("./Dane/Dane50000_1_1/b.txt")
#x = SparseVector(n, 1:n, ones(n))

#b = Blocksys.computeRightSideVector(A[1],50000,4)
#res = Blocksys.solveGauss(A[1], 50000, 4, b)
#res = lu(A[1], 50000, 4, b)
res = luChoice(A[1],50000,4,b)
#res = Blocksys.solveGaussWithChoice(A[1], 50000, 4, b)


Blocksys.printBToFile("a.txt", res)

end