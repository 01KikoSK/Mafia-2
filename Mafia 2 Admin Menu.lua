-- Get the player's current health
local playerHealth = readInteger("Mafia2.exe"+004C3F4C)

-- Set the player's health to 100
writeInteger("Mafia2.exe"+004C3F4C, 100)

-- Get the player's current ammo
local playerAmmo = readInteger("Mafia2.exe"+004C3F50)

-- Set the player's ammo to 1000
writeInteger("Mafia2.exe"+004C3F50, 1000)

-- Enable infinite ammo
writeBytes("Mafia2.exe"+004C3F54, {0x90, 0x90, 0x90, 0x90, 0x90, 0x90})

-- Enable invincibility
writeBytes("Mafia2.exe"+004C3F58, {0x90, 0x90, 0x90, 0x90, 0x90, 0x90})