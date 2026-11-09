-- Rainmeter RGB / HEX Color Utility
local RgbColorConverter = {}

function RgbColorConverter.hexToRgb(hex)
    hex = hex:gsub("#", "")
    local r = tonumber(hex:sub(1, 2), 16) or 255
    local g = tonumber(hex:sub(3, 4), 16) or 255
    local b = tonumber(hex:sub(5, 6), 16) or 255
    return r, g, b
end

function RgbColorConverter.rgbToRainmeterString(r, g, b, alpha)
    local a = alpha or 255
    return string.format("%d,%d,%d,%d", r, g, b, a)
end

return RgbColorConverter
