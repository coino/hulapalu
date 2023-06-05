local _HopManager = HopManager or loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Other/HopManager.lua"))()
local HopManager = _HopManager.new({
    ServerFormat = "https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=getgenv().Settings.Servers&limit=100&excludeFullGames=true&cursor=%s",
    HopMode = "getgenv().Settings.HopMode",
    DataRetryDelay = 5,
SaveLocation = "recenthops.json",
RecentHops = {},
    MassServerList = {
        Enabled = true,
        Amount = 100,
        RemoveAfterTeleport = getgenv().Settings.RemoveAfterTP,
        Refresh = getgenv().Settings.Refresh,
        MinimumPlayers = 8,
        MaximumPlayers = 11,
        MinimumServers = 10,
    }
})


-- // Hops
local function Hop()
    HopManager:Hop()
end
