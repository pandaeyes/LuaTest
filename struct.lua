t = {}
t[0] = "0"
t[2] = "2"
print(t[2])

t = {1, 2, 3, 4, 5, 6, 7}
print(t[1])

t = {}
t[1] = "aaa"
t[2] = "bbb"
t[3] = "ccc"
local s = table.concat(t, "<>")
print(s)

local name1, name2 = string.match("name1 name2", "%S+")
print(name1)
print(name2)

print(getmetatable("hi"))
print(getmetatable(10))

local mt = {}
t1 = {}
t2 = {3}
t3 = {}
setmetatable(t1, mt)
setmetatable(t2, mt)
setmetatable(t3, mt)
print(getmetatable(t1))
print(getmetatable(t2))
print(getmetatable(t3))

Window = {}
Window.prototype = {x = 10, y = 11, width = 100, height = 200}
Window.mt = {}

function Window.new(o)
    setmetatable(o, Window.mt)
    return o
end
Window.mt.__index = function(table, key)
    return Window.prototype[key]
end
w = Window.new{x = 10, y = 20}
print(w.width) -- 如果检测到w没有这个字段，就会调用原型table
for k, v in pairs(w) do
    print(k, v)
end

print("==========================")
l = {4, 6, 8, 10}
for k, v in pairs(l) do
    print(k, v)
end
print("==========================")
for k, v in ipairs(l) do
    print(k, v)
end




