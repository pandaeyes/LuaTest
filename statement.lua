a, b = 34, "fff"
print(a)
print(b)

t = {
    x = 11
    ,y = 22
    ,"aaa1"
    ,"aaa2"
    ,"aaa3"
    ,"aaa4"
}
local i = 1
while t[i] do
    print(t[i])
    i = i + 1
end

-- repeat
--     line = io.read()
--     print(line)
-- until line == ""
print()
t[100] = 100
print(#t)
for i = 1, #t do
    print(t[i])
end

t2 = {
    ["key1"] = 1 
    ,["key2"] = 2
    ,["key3"] = 3
    ,["key4"] = 4
}
for k, v in ipairs(t2) do
    print(k .. "<==>" .. v)
end

function test()
    return
    print("return" .. i)
end
test()
