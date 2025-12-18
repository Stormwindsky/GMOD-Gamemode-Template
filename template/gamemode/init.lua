-- Tell the server to send these files to the client
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

-- Include the shared file so the server can see it
include("shared.lua")

-- Function called every time a player spawns
function GM:PlayerSpawn(ply)
    -- Set player stats
    ply:SetGravity(0.8)
    ply:SetMaxHealth(100)
    ply:SetRunSpeed(500)
    ply:SetWalkSpeed(250)
    
    -- Give default weapons
    ply:Give("weapon_physcannon") -- Gravity Gun
    ply:Give("weapon_physgun")    -- Physics Gun
    
    -- Crucial: Setup the player's viewmodel hands [00:08:11]
    ply:SetupHands()
end
