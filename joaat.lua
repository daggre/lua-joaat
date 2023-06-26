function JOAAT(key)
    local hash = 0
    for i = 1, #key do
            hash = hash + string.byte(key, i)
            hash = hash + (hash << 10)
            hash = hash & 0xffffffff
            hash = hash ~ (hash >> 6)
    end
    hash = hash + (hash << 3)
    hash = hash & 0xffffffff
    hash = hash ~ (hash >> 11)
    hash = hash + (hash << 15)
    hash = hash & 0xffffffff
    return hash
end