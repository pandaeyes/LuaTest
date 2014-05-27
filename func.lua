foo = function(n) return n * 2 end
print(foo(4))

function newCounter()
    local i = 0
    return function()
        i = i + 1
        return i
    end
end

c1 = newCounter()
c2 = newCounter()
print(c1())
print(c2())

k = 0
function newCounterK()
    return function()
        k = k + 1
        return k
    end
end
function newCounterK2()
    return function()
        k = k + 1
        return k
    end
end
k1 = newCounterK()
k2 = newCounterK2()
print(k1())
print(k2())
print(k1())
print(k2())
print(k)
