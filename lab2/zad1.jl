#Autor: Bohdan Tkachenko 256630

#dane przykladowe 
x = Float64[2.718281828, -3.141592654, 1.414213562, 0.577215664, 0.301029995]
y = Float64[1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]

x32= Float32[2.718281828, -3.141592654, 1.414213562, 0.577215664, 0.301029995]
y32 = Float32[1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]

##x32 = map(element -> convert(Float32, element), x)
##y32 = map(element -> convert(Float32, element), y)

#Standart order (forward)
function multi_std(v1,v2,t = Float64)
    res = t(0.0);
    for i = 1 : length(v1)
        res += t(v1[i]* v2[i])
    end
    return res
end

function multi_revs(v1,v2,t = Float64)
    res = t(0.0)
    for i = length(v1):-1:1
        res += t(v1[i]*v2[i])
    end
    return res
end


function multi_bigtosmall(v1,v2,t = Float64)
    pos = zeros(t,0);
    neg = zeros(t,0);

    for i = 1 : length(v1)
        c = (v1[i] * v2[i])
        if c > 0
            append!(pos,c)
        else
            append!(neg,c)
        end
    end
    return sum(sort!(pos,rev=true))+ sum(sort!(neg))
end



function multi_smalltobig(v1,v2,t = Float64)
    pos = zeros(t,0);
    neg = zeros(t,0);

    for i = 1 : length(v1)
        c = v1[i]* v2[i]
        if c > 0
            append!(pos,c)
        else
            append!(neg,c)
        end
    end
    return sum(sort!(pos))+ sum(sort!(neg,rev=true))
end

println("Float64:")

println("W przód: ",multi_std(x, y, Float64))
println("W tył: ",multi_revs(x, y, Float64))
println("Big to small :",multi_bigtosmall(x, y, Float64))
println("Small to big:",multi_smalltobig(x, y, Float64),"\n\n")


x32 = map(element -> convert(Float32, element), x)
y32 = map(element -> convert(Float32, element), y)



println("Float32 :")
println("W przód: ",multi_std(x32, y32, Float32))
println("W tył: ",multi_revs(x32, y32, Float32))
println("Big to small :",multi_bigtosmall(x32, y32, Float32))
println("Small to big: ",multi_smalltobig(x32, y32, Float32))

