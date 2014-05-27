co = coroutine.create(function() print("hi") end)
print(co)

print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))

co = coroutine.create(function()
    for i = 1, 4 do
        print("co", i)
        coroutine.yield()
    end
end)
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))
print(coroutine.resume(co))

co = coroutine.create(function(a, b, c, d)
    print("co", b, c, d)
end)
print(coroutine.resume(co, 1, 2, 3, 4))

co = coroutine.create(function(a, b, c, d)
    print("===22=")
    cy1, cy2, cy3, cy4, cy5 = coroutine.yield(a, c)
    print("===44=", cy1, cy2, cy3, cy4, cy5)
end)
print(coroutine.resume(co, 1, 2, 3, 4))
print(coroutine.resume(co, 1, 2, 3, 4))

co = coroutine.create(function()
    print("co", coroutine.yield())
end)
print("===55=")
coroutine.resume(co)
print("===66=")
coroutine.resume(co, 4, 5)
print("===77=")

function permgen(a, n)
    n = n or #a
    if n <= 1 then
        printResult(a)
    else
        for i = 1, n do
            a[n], a[i] = a[i], a[n]
            permgen(a, n - 1)
            a[n], a[i] = a[i], a[n]
        end
    end
end

function printResult(a)
    for i = 1, #a do
        io.write(a[i], " ")
    end
    io.write("\n")
end

permgen({1, 2, 3, 4})
