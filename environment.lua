for n in pairs(_G) do
    -- print(n)
end

for w in string.gmatch("ooo.read", "[%w_]+") do
    print(w)
end

function ff()
    a = "fdfsdf"
end

-- setmetatable(_G, {
--         __newindex = function(_, n)
--             local w = debug.getinfo(2, "S").what
--             print(w)
--             rawset(t, n, v)
--             -- error("a dttemp to write to undeclared variable " .. n, 2)
--         end,
--         __index = function(_, n)
--             -- error("atte33mp to read to undeclared variable " .. n, 2)
--         end
--     }
-- )
ff()
print(a)

b = 1
setfenv(1, {g = _G})
g.print(b)
g.print(g.b)
c = 33
g.print(c)
for n in pairs(g) do
    print(n)
end
