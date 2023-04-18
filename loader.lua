print("loader executed")
if game.PlaceId == 12413786484 then --anime lost simulator
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Keeron1/Cefrus-Hub/main/animelostsimulator.lua"))()
elseif game.PlaceId == 12135645852 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Keeron1/Cefrus-Hub/main/animecatchingsimulator.lua"))()
else
    print("Game Not Supported!")
end
