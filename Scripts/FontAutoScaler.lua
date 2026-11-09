-- Rainmeter Proportional Font Auto-Scaler
local FontAutoScaler = {}

function FontAutoScaler.calculateScaledSize(baseSize, screenWidth, targetWidth)
    local target = targetWidth or 1920
    local scale = screenWidth / target
    if scale < 0.75 then scale = 0.75 end
    if scale > 2.0 then scale = 2.0 end
    return math.floor(baseSize * scale)
end

return FontAutoScaler
