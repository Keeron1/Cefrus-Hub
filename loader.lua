print("loader executed")
if game.PlaceId == 12413786484 then --anime lost simulator
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Keeron1/Cefrus-Hub/main/animelostsimulator.lua"))()
elseif game.PlaceId == 12135645852 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Keeron1/Cefrus-Hub/main/animecatchingsimulator.lua"))()
elseif game.PlaceId == 8069117419 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Keeron1/Cefrus-Hub/main/demonsoulsimulator.lua"))()
elseif game.PlaceId == 12980045478 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Keeron1/Cefrus-Hub/main/wallsmashsimulator.lua"))()
elseif game.PlaceId == 12025508008 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Keeron1/Cefrus-Hub/main/riskofroadblocks.lua"))()
elseif game.PlaceId == 12986400307 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Keeron1/Cefrus-Hub/main/swordwarriors.lua"))()
else
    print("Game Not Supported!")
end