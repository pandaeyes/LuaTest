local status, err = pcall(function() a = "a" + 1 end)
print(status)
print(err)

status, err = pcall(function() error("my error") end)
print(status)
print(err)
