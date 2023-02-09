#Autor: Bohdan Tkachenko 256630
include("hilb.jl");
include("matcond.jl");


function HilbertMatrix(n)
    matrix = hilb(n);
    x = ones(n);
    b = matrix * x;

    Gaus = matrix \ b ;
    inverse = inv(matrix) * b;
    println("n: ",n, " ");
    println("rank macierzy(A): ",rank(matrix));
    println("Result Gaus: ", norm(x - Gaus)/norm(x));
    println("Result Inverse: ", norm(x - inverse)/norm(x));
    println("Wskażnik uwarunkowania: ",cond(matrix));

    println();

end

function RandomMatrix(n,c)
    matrix = matcond(n, c)
    x = ones(n);
    b = matrix * x;

    Gaus = matrix \ b;
    inverse = inv(matrix) * b;

    println("n: ",n, "c: ",c);
    println("rank macierzy: ",rank(matrix));
    println("Result Gaus: ", norm(x - Gaus)/norm(x));
    println("Result Inverse: ", norm(x - inverse)/norm(x));
    println();
end
println("HILBERT MATRIX: ")
for i in 1:2:40
    HilbertMatrix(i);
end

sizes = [5, 10, 20]
conds = [1.0, 10.0, 10^3, 10^7, 10^12, 10^16]

println("Random MATRIX:")
for size in sizes
    for cond in conds
        RandomMatrix(size, cond);
    end
end