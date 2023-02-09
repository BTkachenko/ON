#Autor: Bohdan Tkachenko 256630

function reversible (f:Float64)
    return f * (1/f) == 1
end

function smallest_irreversible()
    n = Float64(1.0)
    while reversible(n)
        n = nextfloat(n);
    end
    return n;
end
    