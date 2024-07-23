-- Infinite Health
local player = getMainCharacter()
player.health = 1000

-- Damage Multiplier
local damageMultiplier = 10
local function onDamage(damage)
    return damage * damageMultiplier
end

-- Infinite Ammo
local function onAmmoCheck(weapon)
    return true
end

-- No Recoil
local function onFire(weapon)
    weapon.recoil = 0
end

-- Teleport Mode
local function teleport(x, y, z)
    local player = getMainCharacter()
    player.position = vector3(x, y, z)
end

-- Save Position
local function savePosition()
    local player = getMainCharacter()
    local position = player.position
    print("Position saved: " .. position.x .. ", " .. position.y .. ", " .. position.z)
end

-- Load Position
local function loadPosition()
    local player = getMainCharacter()
    local position = {x = 0, y = 0, z = 0} -- default position
    player.position = position
end

-- Undo Position
local function undoPosition()
    local player = getMainCharacter()
    local position = {x = 0, y = 0, z = 0} -- default position
    player.position = position
end

-- Create a menu item for Teleport Mode
menu.addMenuItem("Teleport Mode", function()
    teleport(0, 0, 0) -- default position
end)

-- Create a menu item for Save Position
menu.addMenuItem("Save Position", savePosition)

-- Create a menu item for Load Position
menu.addMenuItem("Load Position", loadPosition)

-- Create a menu item for Undo Position
menu.addMenuItem("Undo Position", undoPosition)