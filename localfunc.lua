local f, g
f = function()
    g()
    print("in function f")
end
g = function()
    print("in function g")
end
f()

local fact
fact = function(n)
    if n == 0 then 
        return 1
    else
        return n * fact(n - 1)
    end
end

print(fact(10))
