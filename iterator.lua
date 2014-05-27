function values(tt)
    local i = 0
    print("=======这里只调用一次======i:" .. i)
    return function() 
        i = i + 1
        print("=======这里每次循环都调用====infunc:" .. i)
        return tt[i]
    end
end

t = {11, 22, 33, 44}

iter = values(t)
while true do
    local element = iter()
    if element == nil then
        break
    end
    print(element)
end
print("==================separate======================")
for element in values(t) do
    print(element)
end

print("==================separate======================")

local function iter(a, i)
    i = i + 1
    local v = a[i]
    if v then
        return i, v
    end
end

function iipairs(a)
    return iter, a, 0
end

for k, v in iipairs(t) do
    print(k, v)
end

list = nil
for line in io.lines("text.txt") do
    list = {val = line, next = list}
end

local function getnext(list, node)
    print(list.val)
    if not node then
        return list
    else
        return node.next
    end
end

function traverse(list)
    return getnext, list, nil
end

-- print(getnext(list, nil).val)

for node in traverse(list) do
    print(node.val)
end
