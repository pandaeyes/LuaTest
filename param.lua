function fun() 
    a = 2
end
fun()
print(a)
s = "ssssss111111"
print(s)
s = "sssss22222"
print(s)

b = [[
<html>
<body>
fdfdfdf
</body>
</html>
]]
print(b)

print("==========================")
print("aaa" .. "bbb")
print(#"fdfdfd")

print("==========add================")
function add(...)
    print("select#:", select("#", ...))
    local k = select(2, ...)
    print("selecti:", k)
    print("==============")

    for i=1, select("#", ...) do
        local arg = select(i, ...)
        print(arg)
    end

    local s = 0
    for i, v in ipairs{...} do
        s = s + v
    end
    return s
end
print(add(3, 44, 3, 4, 66, 33))


function namearg(arg) 
    print("===========x:", arg.x)
    print("===========y:", arg.y)
end
namearg({x=22, y=77})
