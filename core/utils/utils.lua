local charset = {}

for i = 48, 57 do
    table.insert(charset, string.char(i))
end

for i = 65, 90 do
    table.insert(charset, string.char(i))
end

for i = 97, 122 do
    table.insert(charset, string.char(i))
end

function string.random(length)
    if length > 0 then
        return string.random(length - 1) .. charset[math.random(1, #charset)]
    end

    return ""
end

function clamp(value, min, max)
    if value < min then
        return min
    end
    if value > max then
        return max
    end
    return value
end

function splitString(value)
    local values = {}

    for line in value:gmatch("[^\r\n]+") do
        table.insert(values, line)
    end

    return values
end

function rgb2hex(r, g, b)
    return string.format("#%02X%02X%02X", r, g, b)
end

function convertSizeToP2(size)
    if 256 <= size then
        return math.ceil(size)
    else
        for i = 0, 8 do
            local p2 = math.pow(2, i)
            if size <= p2 then
                return p2
            end
        end
    end
end

function getOriginalPath(path)
    return ':' .. RESOURCE_NAME .. '/' .. path
end

function sizeArray(arr)
    local size = 0

    for _ in pairs(arr) do
        size = size + 1
    end

    return size
end

function toArray(arr)
    local values = {}

    for key in pairs(arr) do
        table.insert(values, key)
    end

    return values
end