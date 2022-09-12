--- nametags loader
-- credits to idb and what not

if _G.NametagsRan == true then
    return
end
_G.NametagsRan = true
local plrs = game:GetService("Players")

local UI = game:GetObjects("rbxassetid://10865836123")[1]
if syn then
    syn.protect_gui(UI)
end

local cool = { -- Userid, Title, Color (1 = rainbow, 0 = no rainbow, 2 = pink, 3 = blue, 4 = brown, 5 = red, 6 = black, 7 = Cyan, 8 = Pink)
    {24381592, "(Owner) Anarky", 3},
    {3065223306, "Hold", 5},
    {770824, "(Owner) Anarky", 3},
    {22359969, "(Owner) Anarky", 3},
    {67554151, "(Owner) Anarky", 3}
}

local function isCool(player)
    local isCool = false
    local tag
    local num

    for i, v in next, cool do
        if player.UserId == v[1] then
            isCool = true
            tag = v[2]
            num = v[3]
        end
    end

    return {isCool, tag, num}
end

local function ApplyTag(player, text, num)
    local tag = UI:Clone()
    tag.Nameplate.Text = text
    if num == 1 then
        coroutine.wrap(function()
            while tag ~= nil do
                wait()
                local color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                tag.Nameplate.TextColor3 = color
            end
        end)()
    end
    if num == 0 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
    if num == 2 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(250, 157, 179)
    end
    if num == 3 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(157, 200, 251)
    end
    if num == 4 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(165, 42, 42)
    end
    if num == 5 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
    if num == 6 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(0, 0, 0)
    end
    if num == 7 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(0, 255, 255)
    end
    if num == 8 then
        tag.Nameplate.TextColor3 = Color3.fromRGB(184,124,245)
    end
    tag.Parent = player.Character:WaitForChild("Head")
end

for _,v in next, game.Players:GetPlayers() do
    if isCool(v)[1] then
        ApplyTag(v, isCool(v)[2], isCool(v)[3])

        v.CharacterAdded:Connect(function()
            ApplyTag(v, isCool(v)[2], isCool(v)[3])
        end)
    end
end

game.Players.PlayerAdded:Connect(function(plr)
    if isCool(plr)[1] then
        plr.CharacterAdded:Connect(function()
            ApplyTag(plr, isCool(plr)[2], isCool(plr)[3])
        end)
    end
end)
