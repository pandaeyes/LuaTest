local count = 0
Entry = function(_)
    count =  count + 1
end
dofile("datafile.txt")
print(count)

local authors = {}
Entry = function(b)
    authors[b[1]] = true
end
dofile("datafile.txt")
for name in pairs(authors) do
    print(name)
end
