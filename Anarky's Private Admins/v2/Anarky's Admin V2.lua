wait(2)
local lc = game:GetService("Players").LocalPlayer -- Use GetService it is important because some games change Players so use that instead of game.Players!
local group = 15876306 -- Roblox Fan Group but put your group ID HERE
local grouplink = "https://www.roblox.com/groups/15876306/POORBOYSGANG#!/about"

if lc:IsInGroup(group) then -- IS In group is the roblox API Reference pretty self explanatory 
      print("Whitelisted")
else
      lc:kick("get out") -- Doesn't have to be kicked
end
local Admin = loadstring(game:HttpGet("https://raw.githubusercontent.com/crookrtk/AnarkysAdmin/main/module.lua"))()
local Admin2 = Admin.load(getgenv().themes.dark, "Anarkys Admin", true) 
Admin2.addCommand({name = "antiflag",desc = "May prevent other abuse reports",callback = function(v)
    setfflag("AbuseReportScreenshotPercentage", 0)
setfflag("DFFlagAbuseReportScreenshot", "False")
print("AntiFlagEnabled")
end})
Admin2.addCommand({name = "dhrpcoins",desc = "Gives more coins, needs gui to work",callback = function(bool)
    for i = 1, 1000 do
        for i = 1, 100 do
            for i = 1, 10 do
                game.ReplicatedStorage.ClaimReward:FireServer()
            end
        end
     end
    print(bool)
end})
Admin2.addCommand({name = "lh",desc = "Holds your boombox lower",callback = function(bool)
        for i, v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
            v:Stop()
        end
        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if string.find(string.lower(v.Name), 'boomb') then
                v.Grip = CFrame.new(-0.0109999999, 0.633000016, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0)
                v.Parent = game.Players.LocalPlayer.Backpack
                v.Parent = game.Players.LocalPlayer.Character
                v.Handle.Massless = true
    
            end
    
        end
    print(bool)
end})
Admin2.addCommand({name = "shop",desc = "Server hops",callback = function(bool)
    local LP = game:GetService('Players').LocalPlayer

	local ogChar = LP.Character
	LP.Character = Clone
	LP.Character = ogChar
	function shop()
		pcall(function()
			local Servers =
				game.HttpService:JSONDecode(
				game:HttpGet("https://games.roblox.com/v1/games/417267366/servers/Public?sortOrder=Asc&limit=100")
			)
			while task.wait() do
				v = Servers.data[math.random(#Servers.data)]
				if v.playing < v.maxPlayers - 2 and v.id ~= game.JobId then
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
					break
				end
			end
		end)
	end
	
	
	local function hop()
		shop()
		while task.wait() do
			pcall(shop)
		end
	end
	hop()
    print(bool)
end})
Admin2.addCommand({name = "droptools",desc = "Drops all tools in backpack",callback = function(bool)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
        if v:IsA("Tool")  then
     task.wait()
         v.Parent = game.Players.LocalPlayer.Character
     task.wait()
         v.Parent = game.Workspace
     end
     end
    print(bool)
end})
Admin2.addCommand({name = "rhand",desc = "Removes Right Hand",callback = function(bool)
    game.Players.LocalPlayer.Character.RightHand:Destroy()
    print(bool)
end})
Admin2.addCommand({name = "rarm",desc = "Removes Right Hand",callback = function(bool)
    game.Players.LocalPlayer.Character['Right Arm']:Destroy()
    print(bool)
end})
Admin2.addCommand({name = "fling",desc = "Flings the player",callback = function(v,b)
    
    print(bool)
end})
Admin2.addCommand({name = "antikill",desc = "Prevents people from killing you",callback = function(bool)
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Seated", false)
                        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    print(bool)
end})
Admin2.addCommand({name = "unantikill",desc = "Disables antikill",callback = function(bool)
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Seated", false)
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    print(bool)
end})
Admin2.addCommand({name = "antivoid4",desc = "Another variation of av2",callback = function(bool)
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Character ~= nil and v ~= game.Players.LocalPlayer then
            if v.Character:FindFirstChild("Right Arm") then
                v.Character:FindFirstChild("Right Arm").ChildAdded:Connect(function(child)
                    if child.Name == "RightGrip" then
                        wait(0.1)
                        if child.Part1 ~= nil then
                            if child.Part1.Parent ~= nil then
                                if child.Part1.Parent:IsA("Accessory") then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                end)
                for i,v in pairs(v.Character:FindFirstChild("Right Arm"):GetChildren()) do
                    if v.Name == "RightGrip" then
                        wait(0.1)
                        if Part1 ~= nil then
                            if Part1.Parent ~= nil then
                                if v.Part1.Parent:IsA("Accessory") then
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end
            elseif v.Character:FindFirstChild("RightHand") and v.Character:FindFirstChild("UpperTorso") then
                v.Character:FindFirstChild("RightHand").ChildAdded:Connect(function(child)
                    if child.Name == "RightGrip" then
                        wait(0.1)
                        if child.Part1 ~= nil then
                            if child.Part1.Parent ~= nil then
                                if child.Part1.Parent:IsA("Accessory") then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                end)
                for i,v in pairs(v.Character:FindFirstChild("RightHand"):GetChildren()) do
                    if v.Name == "RightGrip" then
                        wait(0.1)
                        if Part1 ~= nil then
                            if Part1.Parent ~= nil then
                                if v.Part1.Parent:IsA("Accessory") then
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end
            end
        end
        v.CharacterAppearanceLoaded:Connect(function(char)
            if v.Character:FindFirstChild("Right Arm") then
                v.Character:FindFirstChild("Right Arm").ChildAdded:Connect(function(child)
                    if child.Name == "RightGrip" then
                        wait(0.1)
                        if child.Part1 ~= nil then
                            if child.Part1.Parent ~= nil then
                                if child.Part1.Parent:IsA("Accessory") then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                end)
                for i,v in pairs(v.Character:FindFirstChild("Right Arm"):GetChildren()) do
                    if v.Name == "RightGrip" then
                        wait(0.1)
                        if Part1 ~= nil then
                            if Part1.Parent ~= nil then
                                if v.Part1.Parent:IsA("Accessory") then
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end
            elseif v.Character:FindFirstChild("RightHand") and v.Character:FindFirstChild("UpperTorso") then
                v.Character:FindFirstChild("RightHand").ChildAdded:Connect(function(child)
                    if child.Name == "RightGrip" then
                        wait(0.1)
                        if child.Part1 ~= nil then
                            if child.Part1.Parent ~= nil then
                                if child.Part1.Parent:IsA("Accessory") then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                end)
                for i,v in pairs(v.Character:FindFirstChild("RightHand"):GetChildren()) do
                    if v.Name == "RightGrip" then
                        wait(0.1)
                        if Part1 ~= nil then
                            if Part1.Parent ~= nil then
                                if v.Part1.Parent:IsA("Accessory") then
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
     
    game.Players.PlayerAdded:Connect(function(v)
    wait()
        if v.Character ~= nil and v ~= game.Players.LocalPlayer then
            if v.Character:FindFirstChild("Right Arm") then
                v.Character:FindFirstChild("Right Arm").ChildAdded:Connect(function(child)
                    if child.Name == "RightGrip" then
                        wait(0.1)
                        if child.Part1 ~= nil then
                            if child.Part1.Parent ~= nil then
                                if child.Part1.Parent:IsA("Accessory") then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                end)
                for i,v in pairs(v.Character:FindFirstChild("Right Arm"):GetChildren()) do
                    if v.Name == "RightGrip" then
                        wait(0.1)
                        if Part1 ~= nil then
                            if Part1.Parent ~= nil then
                                if v.Part1.Parent:IsA("Accessory") then
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end
            elseif v.Character:FindFirstChild("RightHand") and v.Character:FindFirstChild("UpperTorso") then
                v.Character:FindFirstChild("RightHand").ChildAdded:Connect(function(child)
                    if child.Name == "RightGrip" then
                        wait(0.1)
                        if child.Part1 ~= nil then
                            if child.Part1.Parent ~= nil then
                                if child.Part1.Parent:IsA("Accessory") then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                end)
                for i,v in pairs(v.Character:FindFirstChild("RightHand"):GetChildren()) do
                    if v.Name == "RightGrip" then
                        wait(0.1)
                        if Part1 ~= nil then
                            if Part1.Parent ~= nil then
                                if v.Part1.Parent:IsA("Accessory") then
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end
            end
        end
        v.CharacterAppearanceLoaded:Connect(function(char)
            if v.Character:FindFirstChild("Right Arm") then
                v.Character:FindFirstChild("Right Arm").ChildAdded:Connect(function(child)
                    if child.Name == "RightGrip" then
                        wait(0.1)
                        if child.Part1 ~= nil then
                            if child.Part1.Parent ~= nil then
                                if child.Part1.Parent:IsA("Accessory") then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                end)
                for i,v in pairs(v.Character:FindFirstChild("Right Arm"):GetChildren()) do
                    if v.Name == "RightGrip" then
                        wait(0.1)
                        if Part1 ~= nil then
                            if Part1.Parent ~= nil then
                                if v.Part1.Parent:IsA("Accessory") then
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end
            elseif v.Character:FindFirstChild("RightHand") and v.Character:FindFirstChild("UpperTorso") then
                v.Character:FindFirstChild("RightHand").ChildAdded:Connect(function(child)
                    if child.Name == "RightGrip" then
                        wait(0.1)
                        if child.Part1 ~= nil then
                            if child.Part1.Parent ~= nil then
                                if child.Part1.Parent:IsA("Accessory") then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                end)
                for i,v in pairs(v.Character:FindFirstChild("RightHand"):GetChildren()) do
                    if v.Name == "RightGrip" then
                        wait(0.1)
                        if Part1 ~= nil then
                            if Part1.Parent ~= nil then
                                if v.Part1.Parent:IsA("Accessory") then
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end
            end
        end)
    end)
    print(bool)
end})
Admin2.addCommand({name = "antivoid2",desc = "Prevents decent voids",callback = function(bool)
    local player = game:GetService("Players").LocalPlayer
local Backpack = player.Backpack

local function AntiVoid()
    local Tools = {}
    for _, v in pairs(Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(Tools, v)
        end
    end
    for _, v in pairs(Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(Tools, v)
        end
    end
    player.Character.ChildAdded:Connect(
        function(child)
            if child:IsA("Tool") and not table.find(Tools, child) then
                child:Destroy()
                task.wait()
                notify("protected", 5)
            end
        end
    )
end
player.CharacterAdded:Connect(
    function(char)
        notify("died", 5)
        char:WaitForChild("HumanoidRootPart")
        AntiVoid()
    end
)
local Player = game.Players.LocalPlayer
local Character = Player.Character
local human = Character.Humanoid
local equip

local Debris = game:GetService("Debris")

local MyTools = {}

function createobj(class, properties)
    print("dbug")
    local obj = Instance.new(class)

    for i, v in pairs(properties) do
        obj[i] = v
    end
    return obj
end

for i, v in pairs(Player.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(MyTools, (#MyTools + 1), v)
        print(#MyTools)
    end
end

function Remove(Unwanted)
    Unwanted.Parent = Player.Backpack
    Unwanted.Parent = game.StarterPack
    --  Unwanted.Handle:Destroy()
end

Character.ChildAdded:Connect(
    function(PT)
        if PT:IsA("Tool") then
            if not table.find(MyTools, PT) then
                Debris:AddItem(PT.Handle, 0)
                Debris:AddItem(PT, 0)
                local BodyVelocity =
                    createobj(
                    "BodyVelocity",
                    {Name = "BodvVelocity", Velocity = Vector3.new(0, 0, 0), MaxForce = Vector3.new(0, 0, 0)}
                )
                BodyVelocity.Parent = Character.HumanoidRootPart
                human.Parent = workspace.Camera
                task.wait()
                human.Parent = Character
                BodyVelocity:Destroy()
            end
        end
    end
)
local Services = {
    ["P"] = game:GetService("Players"),
    ["W"] = game:GetService("Workspace"),
    ["RS"] = game:GetService("RunService")
}
local LP = Services["P"]["LocalPlayer"]
local Char, Pack = LP["Character"], LP["Backpack"]
local Hum = Char["Humanoid"]
Hum:SetStateEnabled("Seated", false)
Hum.Sit = true

game:GetService("Workspace").FallenPartsDestroyHeight = math.huge - math.huge

task.spawn(
    function()
        for i, v in pairs(game:GetService("Players").LocalPlayer:FindFirstChildOfClass("Backpack"):GetDescendants()) do
            if v:IsA("Tool") or not nil then
                v:Destroy()
            end
        end
        for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
            if v:IsA("Tool") or v:IsA("HopperBin") then
                v:Destroy()
            end
        end
    end
)

local LP = game:GetService("Players").LocalPlayer
local Char, Pack = LP.Character, LP.Backpack
local HUM = Char.Humanoid
local UIS = game:GetService "UserInputService"
local Toggler = false
local Keybind = Enum.KeyCode.F4
local ST = {}
local SF = {}

function Notification(title, text, time)
end

for i, v in pairs(Pack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(ST, v)
    end
end

SF[#SF + 1] =
    UIS.InputBegan:Connect(
    function(Input, IsTyping)
        if IsTyping then
            return
        end
        if Input["KeyCode"] == Keybind then
            Toggler = not Toggler
            if Toggler == false then
                --Notification

                --Anti fe kill
                HUM:SetStateEnabled("Seated", false)
                HUM.Sit = true

                --Anti void
                Char.ChildAdded:Connect(
                    function(x)
                        if x:IsA("Tool") and not table.find(ST, x) then
                            x.Handle:Destroy()
                        end
                    end
                )
            elseif Toggler == true then

                HUM:SetStateEnabled("Seated", false)
                HUM.Sit = false

                Char.ChildAdded:Connect(
                    function(x)
                        if x:IsA("Tool") and not table.find(ST, x) then
                        end
                    end
                )
            end
        end
    end
)

SF[#SF + 1] =
    HUM.Died:Connect(
    function()
        for I, V in pairs(SF) do
            if V then
                V:Disconnect()
            end
        end
    end
)

local function callback(Text)
    if Text == "Load" then
        local LP, RS = game:GetService("Players").LocalPlayer, game:GetService("RunService")
        local Char, Pack = LP.Character, LP.Backpack
        local HRP = Char.HumanoidRootPart
        local UIS = game:GetService "UserInputService"
        local Toggler = false
        local Keybind = Enum.KeyCode.F8
        local ST = {}
        function notify(title, text, time)
        end
        for i, v in pairs(Pack:GetChildren()) do
            if v:IsA("Tool") then
                table.insert(ST, v)
            end
        end
        UIS.InputBegan:Connect(
            function(Input, IsTyping)
                if IsTyping then
                    return
                end
                if Input["KeyCode"] == Keybind then
                    Toggler = not Toggler
                    if Toggler == false then
                        --Notification
                        --Anti fe kill
                        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Seated", false)
                        game.Players.LocalPlayer.Character.Humanoid.Sit = true
                        --Anti void
                        Char.ChildAdded:Connect(
                            function(x)
                                if x:IsA("Tool") and not table.find(ST, x) then
                                    x.Handle:Destroy()
                                end
                            end
                        )
                    elseif Toggler == true then
                        --Notification
                        --Turns off Anti Fe kill
                        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Seated", false)
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        --Turns off Anti Void
                        Char.ChildAdded:Connect(
                            function(x)
                                if x:IsA("Tool") and not table.find(ST, x) then
                                    task.wait()
                                end
                            end
                        )
                    end
                end
            end
        )
    end
end

------------------------------------------------
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
------------------------------------------------
game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Anti Loaded",
        Text = "Anarky's Admin'",
        Icon = "",
        Duration = 5,
        Callback = NotificationBindable
    }
)

task.spawn(
    function()
        for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
            if v:isA("Tool") then
                v:Destroy()
            end
        end
    end
)

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

local AntiTool = function(Character)
    Character.ChildAdded:Connect(
        function(x)
            if x:IsA("Tool") then
                coroutine.wrap(
                    function()
                        local Handle = x:FindFirstChild("Handle")
                        local Touch
                        if Handle then
                            Handle.Name = "Part"
                            Handle.CanTouch = false
                        end
                    end
                )()
                x.AncestryChanged:Connect(
                    function(Tool, Parent)
                        if Parent == Player.Character then
                            Tool:Destroy()
                            coroutine.wrap(
                                function()
                                    task.wait()
                                    Tool.Parent = nil
                                end
                            )()
                        end
                    end
                )
            end
        end
    )
end

local AntiKill = function()
    if
        Player.Character and Player.Character:FindFirstChildWhichIsA("Humanoid") and
            Player.Character:FindFirstChildWhichIsA("Humanoid").RootPart and
            workspace.CurrentCamera
     then
        local Humanoid = Player.Character:FindFirstChildWhichIsA("Humanoid")
        local RootPart = Humanoid.RootPart
        if
            UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter and
                not RootPart:FindFirstChildWhichIsA("BodyMover")
         then
            local X, Y, Z = workspace.CurrentCamera.CFrame:ToEulerAnglesYXZ()
            RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(0, Y, 0)
        end
        Humanoid.Sit = true
        Humanoid:SetStateEnabled("Seated", false)
    end
end

local AVoid = function(Character)
    Character.ChildAdded:Connect(
        function(Tool)
            if
                Character and Character:FindFirstChildWhichIsA("Humanoid") and
                    Character:FindFirstChildWhichIsA("Humanoid").RootPart and
                    Tool:IsA("Tool")
             then
                workspace["FallenPartsDestroyHeight"] = 0 / 0
                local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
                local RootPart = Humanoid.RootPart
                local CurrentPosition = RootPart.CFrame
                Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
                repeat
                    RunService.Heartbeat:wait()
                until Tool.Parent == Character
                RootPart.CFrame = CurrentPosition
                RootPart.Velocity = Vector3.new()
                Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
            end
        end
    )
end

for _, x in next, Players:GetPlayers() do
    if x ~= Player and x.Character then
        AntiTool(x.Character)
        x.CharacterAdded:Connect(AntiTool)
    end
end
Players.PlayerAdded:Connect(
    function(P)
        if P ~= Player then
            P.CharacterAdded:Connect(AntiTool)
        end
    end
)

RunService.RenderStepped:Connect(AntiKill)

AVoid(Player.Character)
Player.CharacterAdded:Connect(AVoid)

local LocalPlayer = game.Players.LocalPlayer
game:GetService "RunService".Stepped:Connect(
    function()
        local mouse = LocalPlayer:GetMouse()
        local uis = game:GetService "UserInputService"
        local root = LocalPlayer.Character["HumanoidRootPart"]
        if uis.MouseBehavior == Enum.MouseBehavior.LockCenter then
            local ray = Ray.new(root.Position, mouse.UnitRay.Direction * 5000)
            local part, pos = workspace:FindPartOnRayWithIgnoreList(ray, {workspace})

            root.CFrame = CFrame.new(root.Position, Vector3.new(pos.X, root.Position.Y, pos.Z))
        end
        settings().Network.IncomingReplicationLag = 0
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Seated", false)
    end
)

local Players = game:GetService("Players")
local function onChildAdded(child)
    task.wait()
    if child.Name == "RightGrip" then
        if not child.Part1 then
            task.wait()
        end
        if child.Part1 and child.Part1.Parent and child.Part1.Parent:IsA("Accoutrement") then
            child:Destroy()
        end
    end
end
local function onCharacterAdded(char)
    if char then
        task.spawn(
            function()
                local part = char:WaitForChild("Right Arm", 3)
                if part then
                    part.ChildAdded:Connect(onChildAdded)
                end
            end
        )
        task.spawn(
            function()
                local part = char:WaitForChild("RightHand", 3)
                if part then
                    part.ChildAdded:Connect(onChildAdded)
                end
            end
        )
    end
end
local function onPlayerAdded(p)
    if p ~= Players.LocalPlayer then
        p.CharacterAdded:Connect(onCharacterAdded)
        onCharacterAdded(p.Character)
    end
end
Players.PlayerAdded:Connect(onPlayerAdded)
for _, p in ipairs(Players:GetPlayers()) do
    onPlayerAdded(p)
end

task.spawn(
    function()
        _G.STOP = true -- disable
        wait(1)
        _G.STOP = false -- enable

        local off = false
        local cf, pos
        local sotp = false
        local tools = {}

        for i, v in pairs(game:service "Players".LocalPlayer.Backpack:getChildren "") do
            tools[v] = true
        end

        game:service "Players".LocalPlayer.Backpack.ChildAdded:connect(
            function(c)
                if off then
                    return
                end
                tools[c] = true
            end
        )

        local thing = function(ob)
            if off then
                return
            end
            if ob:IsA("Tool") and not tools[ob] then
                game:service "RunService".Stepped:wait ""
                tools[ob] = true
                sotp = true
                ob.Parent = game:service "Players".LocalPlayer.Backpack
                for i = 1, 1 do
                    if
                        game:service "Players".LocalPlayer.Character and
                            game:service "Players".LocalPlayer.Character:findFirstChild "HumanoidRootPart"
                     then
                        game:service "Players".LocalPlayer.Character.HumanoidRootPart.CFrame = cf
                        for i, v in pairs(game:service "Players".LocalPlayer.Character:getChildren "") do
                            if v:IsA("BasePart") or v:IsA("MeshPart") then
                                v.Velocity = Vector3.new(0, 0, 0)
                            end
                        end
                        game:service "RunService".Stepped:wait ""
                    end
                end
                sotp = false
            end
        end

        game:service "Players".LocalPlayer.Character.ChildAdded:connect(thing)
        game:service "Players".LocalPlayer.CharacterAdded:connect(
            function(c)
                c.ChildAdded:connect(thing)
            end
        )

        while task.wait() and not _G.STOP do
            if
                game:service "Players".LocalPlayer.Character and
                    game:service "Players".LocalPlayer.Character:findFirstChild("HumanoidRootPart") and
                    not sotp
             then
                cf = game:service "Players".LocalPlayer.Character.HumanoidRootPart.CFrame
                pos = game:service "Players".LocalPlayer.Character.HumanoidRootPart.Position
            end
        end

        off = true
    end
)

spawn(
    function()
        _G.STOP = true -- disable
        wait(1)
        _G.STOP = false -- enable
        local off = false
        local cf, pos
        local sotp = false
        local tools = {}

        for i, v in pairs(game:service "Players".LocalPlayer.Backpack:getChildren "") do
            tools[v] = true
        end

        game:service "Players".LocalPlayer.Backpack.ChildAdded:connect(
            function(c)
                if off then
                    return
                end
                tools[c] = true
            end
        )

        local thing = function(ob)
            if off then
                return
            end
            if ob:IsA("Tool") and not tools[ob] then
                game:service "RunService".Stepped:wait ""
                tools[ob] = true
                sotp = true
                ob.Parent = game:service "Players".LocalPlayer.Backpack
                for i = 1, 1 do
                    if
                        game:service "Players".LocalPlayer.Character and
                            game:service "Players".LocalPlayer.Character:findFirstChild "HumanoidRootPart"
                     then
                        game:service "Players".LocalPlayer.Character.HumanoidRootPart.CFrame = cf
                        for i, v in pairs(game:service "Players".LocalPlayer.Character:getChildren "") do
                            if v:IsA("BasePart") or v:IsA("MeshPart") then
                                v.Velocity = Vector3.new(10, 33, 12)
                            end
                        end
                        game:service "RunService".Stepped:wait ""
                    end
                end
                sotp = false
            end
        end

        game:service "Players".LocalPlayer.Character.ChildAdded:connect(thing)
        game:service "Players".LocalPlayer.CharacterAdded:connect(
            function(c)
                c.ChildAdded:connect(thing)
            end
        )

        while task.wait() and not _G.STOP do
            if
                game:service "Players".LocalPlayer.Character and
                    game:service "Players".LocalPlayer.Character:findFirstChild("HumanoidRootPart") and
                    not sotp
             then
                cf = game:service "Players".LocalPlayer.Character.HumanoidRootPart.CFrame
                pos = game:service "Players".LocalPlayer.Character.HumanoidRootPart.Position
            end
        end

        off = true
    end
)

spawn(
    function()
        _G.STOP = true -- disable
        wait(1)
        _G.STOP = false -- enable
        print("av2 loaded")
    end)
    print(bool)
end})
Admin2.addCommand({name = "antivoid3",desc = "Prevents older/trash voids",callback = function(bool)
    local AcceptedTools = {}
    local player = game.Players.LocalPlayer
    
    for i,v in pairs(player.Backpack:GetChildren()) do
    table.insert(AcceptedTools,v)
    end
    
    player.Backpack.ChildAdded:Connect(function(t)
    table.insert(AcceptedTools, t)
    end)
    
    player.Character.ChildAdded:Connect(function(t)
    if t:IsA("Tool") then
    local accepted = false
    for i,v in pairs(AcceptedTools) do
    if t == v then
    accepted = true
    end
    end
    if not accepted then
    t:Destroy()
    end
    end
    end)
    print(bool)
end})
Admin2.addCommand({name = "invis",desc = "Makes your character invisible",callback = function(bool)
    --[[Invisibility Toggle



This method clones the character locally, teleports the real character to a safe location, then sets the character to the clone.
Basically, your real character is in the sky while you are on the ground.


Because of the way this works, games with a decent anti-cheat will fuck this up.
If you turn it off, you have to go to a safe place before going invisible.


]]
--Settings:
local ScriptStarted = false
local Keybind = "E" --Set to whatever you want, has to be the name of a KeyCode Enum.
local Transparency = true --Will make you slightly transparent when you are invisible. No reason to disable.
local NoClip = false --Will make your fake character no clip.

local Player = game:GetService("Players").LocalPlayer
local RealCharacter = Player.Character or Player.CharacterAdded:Wait()

local IsInvisible = false

RealCharacter.Archivable = true
local FakeCharacter = RealCharacter:Clone()
local Part
Part = Instance.new("Part", workspace)
Part.Anchored = true
Part.Size = Vector3.new(200, 1, 200)
Part.CFrame = CFrame.new(0, -500, 0) --Set this to whatever you want, just far away from the map.
Part.CanCollide = true
FakeCharacter.Parent = workspace
FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

for i, v in pairs(RealCharacter:GetChildren()) do
  if v:IsA("LocalScript") then
      local clone = v:Clone()
      clone.Disabled = true
      clone.Parent = FakeCharacter
  end
end
if Transparency then
  for i, v in pairs(FakeCharacter:GetDescendants()) do
      if v:IsA("BasePart") then
          v.Transparency = 0.7
      end
  end
end
local CanInvis = true
function RealCharacterDied()
  CanInvis = false
  RealCharacter:Destroy()
  RealCharacter = Player.Character
  CanInvis = true
  isinvisible = false
  FakeCharacter:Destroy()
  workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid

  RealCharacter.Archivable = true
  FakeCharacter = RealCharacter:Clone()
  Part:Destroy()
  Part = Instance.new("Part", workspace)
  Part.Anchored = true
  Part.Size = Vector3.new(200, 1, 200)
  Part.CFrame = CFrame.new(9999, 9999, 9999) --Set this to whatever you want, just far away from the map.
  Part.CanCollide = true
  FakeCharacter.Parent = workspace
  FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

  for i, v in pairs(RealCharacter:GetChildren()) do
      if v:IsA("LocalScript") then
          local clone = v:Clone()
          clone.Disabled = true
          clone.Parent = FakeCharacter
      end
  end
  if Transparency then
      for i, v in pairs(FakeCharacter:GetDescendants()) do
          if v:IsA("BasePart") then
              v.Transparency = 0.7
          end
      end
  end
 RealCharacter.Humanoid.Died:Connect(function()
 RealCharacter:Destroy()
 FakeCharacter:Destroy()
 end)
 Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
end
RealCharacter.Humanoid.Died:Connect(function()
 RealCharacter:Destroy()
 FakeCharacter:Destroy()
 end)
Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
local PseudoAnchor
game:GetService "RunService".RenderStepped:Connect(
  function()
      if PseudoAnchor ~= nil then
          PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
      end
       if NoClip then
      FakeCharacter.Humanoid:ChangeState(11)
       end
  end
)

PseudoAnchor = FakeCharacter.HumanoidRootPart
local function Invisible()
  if IsInvisible == false then
      local StoredCF = RealCharacter.HumanoidRootPart.CFrame
      RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
      FakeCharacter.HumanoidRootPart.CFrame = StoredCF
      RealCharacter.Humanoid:UnequipTools()
      Player.Character = FakeCharacter
      workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
      PseudoAnchor = RealCharacter.HumanoidRootPart
      for i, v in pairs(FakeCharacter:GetChildren()) do
          if v:IsA("LocalScript") then
              v.Disabled = false
          end
      end

      IsInvisible = true
  else
      local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
      FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
     
      RealCharacter.HumanoidRootPart.CFrame = StoredCF
     
      FakeCharacter.Humanoid:UnequipTools()
      Player.Character = RealCharacter
      workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
      PseudoAnchor = FakeCharacter.HumanoidRootPart
      for i, v in pairs(FakeCharacter:GetChildren()) do
          if v:IsA("LocalScript") then
              v.Disabled = true
          end
      end
      IsInvisible = false
  end
end

game:GetService("UserInputService").InputBegan:Connect(
  function(key, gamep)
      if gamep then
          return
      end
      if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
          if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
              Invisible()
          end
      end
  end
)
local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://232127604"
Sound:Play()
game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "Invisible Toggle Loaded",["Text"] = "Press "..Keybind.." to become change visibility.",["Duration"] = 20,["Button1"] = "Okay."})

    print(bool)
end})
Admin2.addCommand({name = "gun",desc = "Uses radios to make a gun",callback = function(bool)
    
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
local v = 0
local vm = 3
for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if z:IsA'Tool' then do
        v = v - .2 -- < edit these
        vm = vm * .3 -- < edit these
        z.Parent = game.Players.LocalPlayer.Character
        z.Grip = CFrame.new(v,vm + -1.65,0)
        z.GripUp = Vector3.new(4,1,0)
        z.GripRight = Vector3.new(45,0,-2)
        z.GripForward = Vector3.new(1,0,0)
    end
    end
end
    print(bool)
end})
Admin2.addCommand({name = "sit",desc = "Sits your character",callback = function(bool)
    if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
	LocalPlayer.Character.HumanoidRootPart.CanCollide = false
	game.Players.LocalPlayer.Character.Humanoid.Sit = true
    print(bool)
end})
Admin2.addCommand({name = "fixcam",desc = "Fixes your Camera",callback = function(bool)
    workspace.CurrentCamera:remove()
	wait(.1)
	repeat wait() until speaker.Character ~= nil
	workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	speaker.CameraMinZoomDistance = 0.5
	speaker.CameraMaxZoomDistance = 400
	speaker.CameraMode = "Classic"
	speaker.Character.Head.Anchored = false
    print(bool)
end})
Admin2.addCommand({name = "fat",desc = "Makes your character fat",callback = function(bool)
    local LP = game.Players.LocalPlayer
for i,v in next, LP.Character.Humanoid:GetChildren() do
    if v:IsA'NumberValue' then
        v:Destroy()
        task.wait()
    end
end
    print(bool)
end})
Admin2.addCommand({name = "radioprank",desc = "Sets your cFrame behind tree",callback = function(bool)
    local minePos = CFrame.new(5556.78906, 29.9942169, -17137.8027, 0.919021428, -9.53787378e-08, -0.394207567, 7.70871935e-08, 1, -6.22361256e-08, 0.394207567, 2.68079781e-08, 0.919021428)
local minePos2 = CFrame.new(5503.51855, 32.1502457, -17102.4609, -0.0469753221, -1.05281146e-07, -0.998896062, -5.14456069e-08, 1, -1.02978149e-07, 0.998896062, 4.65513814e-08, -0.0469753221) - Vector3.new(0,2,0)
local hidePos = CFrame.new(5547.75928, 32.0002213, -17147.7383, -0.830992401, 2.20322214e-08, -0.556283772, 9.57291562e-08, 1, -1.03396836e-07, 0.556283772, -1.3917456e-07, -0.830992401)
local hidePos2 = CFrame.new(5502.82471, 32.1502457, -17141.5566, -0.99996525, 1.36514551e-08, 0.00833945442, 1.43237182e-08, 1, 8.05526739e-08, -0.00833945442, 8.06693237e-08, -0.99996525)

local mine = game.Players.LocalPlayer.Character:FindFirstChildOfClass'Tool' or game.Players.LocalPlayer.Backpack:FindFirstChildOfClass'Tool'
mine.Parent = game.Players.LocalPlayer.Character
wait(.5)
mine.Handle.Massless = true
local pee = true
local new = Instance.new('Part', workspace)
new.Size = Vector3.new(3,2,1)
new.Transparency = 0
new.Massless = true
new.CanCollide = false
new.Color = Color3.new(1,0,0)
new.Transparency = .65
new.Material = 'SmoothPlastic'
wait()
local weld = Instance.new("Weld", mine.Handle)
weld.C0 = CFrame.new()
weld.C1 = CFrame.new()
weld.Part0 = mine.Handle
weld.Part1 = new
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = hidePos
new.Touched:Connect(function(x)
    local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if x.Name == 'Left Leg' or x.Name == 'Right Leg' or x.Name == 'RightFoot' or x.Name == 'LeftFoot' then
        game.Players.LocalPlayer.Character.Head.Anchored = false
        pee = false
        new:Destroy()
        local Target = x.Parent
        local LocalPlayer = game.Players.LocalPlayer
        mine.Parent = LocalPlayer.Backpack
        local newHum = LocalPlayer.Character.Humanoid:Clone()
		newHum.Parent = LocalPlayer.Character
		LocalPlayer.Character.Humanoid:Destroy()
		newHum:ChangeState(15)
        mine.Parent = LocalPlayer.Character
		firetouchinterest(mine.Handle, Target.Head, 0)
        game.Players.LocalPlayer.CharacterAdded:Wait()
		repeat wait() until LocalPlayer.Character
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end
end)

task.spawn(function()
    repeat
        mine.Grip = CFrame.new()
        mine.Grip = mine.Handle.CFrame:ToObjectSpace(minePos):Inverse()
        mine.Parent = game.Players.LocalPlayer.Backpack
        mine.Parent = game.Players.LocalPlayer.Character
        game:GetService('RunService').RenderStepped:Wait()
    until pee == false
end)
    print(bool)
end})
Admin2.addCommand({name = "stretch",desc = "Stretches out your Character",callback = function(bool)
    function rm()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                if v.Name == "Handle" or v.Name == "Head" then
                    if game.Players.LocalPlayer.Character.Head:FindFirstChild("OriginalSize") then
                        game.Players.LocalPlayer.Character.Head.OriginalSize:Destroy()
                    end
                else
                    v:FindFirstChild("OriginalSize"):Destroy()
                    if v:FindFirstChild("AvatarPartScaleType") then
                    end
                end
            end
        end
    end
    rm()
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
    wait(1)
    rm()
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
    wait(1)
    rm()
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
    wait(1)
    rm()
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
    wait(1)
    rm()
    wait()
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("HeadScale"):Destroy()
    wait(1)
    rm()
    wait()
    wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
    wait(1)
    print(bool)
end})
Admin2.addCommand({name = "rescale",desc = "Scales your character",callback = function(bool)
    local character = game:GetService("Players").LocalPlayer.Character
local humanoid = character:FindFirstChildOfClass("Humanoid")
local function wipe_parts()
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") and part.Name ~= "Head" then
            for _, attachment in pairs(part:GetDescendants()) do
                if attachment:IsA("Attachment") and attachment:FindFirstChild("OriginalPosition") then
                    attachment.OriginalPosition:Destroy()
                end
            end
            part:WaitForChild("OriginalSize"):Destroy()
                
            end
        end
    end
wipe_parts()
humanoid:WaitForChild("BodyTypeScale"):Destroy()
wipe_parts()
humanoid:WaitForChild("BodyWidthScale"):Destroy()
wipe_parts()
humanoid:WaitForChild("BodyDepthScale"):Destroy()
wipe_parts()
humanoid:WaitForChild("HeadScale"):Destroy()
Game:GetService("Players").LocalPlayer.Character.RightFoot.OriginalSize:Destroy()
Game:GetService("Players").LocalPlayer.Character.RightLowerLeg.OriginalSize:Destroy()
Game:GetService("Players").LocalPlayer.Character.RightUpperLeg.OriginalSize:Destroy()
    print(bool)
end})
Admin2.addCommand({name = "dhrpnight",desc = "Changes sky to night",callback = function(bool)
    repeat task.wait() until game:IsLoaded()

if game.PlaceId == 417267366 then

game:GetService("Lighting").ClockTime = 3
end
    print(bool)
end})
Admin2.addCommand({name = "antiafk2",desc = "Alternate version of antiafk",callback = function(bool)
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
    print(bool)
end})
Admin2.addCommand({name = "displayremover",desc = "Disables display names",callback = function(bool)
    local Players = game:FindService("Players")

require(game:GetService("Chat"):WaitForChild("ClientChatModules").ChatSettings).PlayerDisplayNamesEnabled = false

local function rename(character,name)
    repeat task.wait() until character:FindFirstChildWhichIsA("Humanoid")
    character:FindFirstChildWhichIsA("Humanoid").DisplayName = name
end

for i,v in next, Players:GetPlayers() do
    if v.Character then
        v.DisplayName = v.Name
        rename(v.Character,v.Name)
    end
    v.CharacterAdded:Connect(function(char)
        rename(char,v.Name)
    end)
end

Players.PlayerAdded:Connect(function(plr)
    plr.DisplayName = plr.Name
    plr.CharacterAdded:Connect(function(char)
        rename(char,plr.Name)
    end)
end)
    print(bool)
end})
Admin2.addCommand({name = "headless",desc = "Removes your head/hats",callback = function(bool)
    local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
    print(bool)
end})
Admin2.addCommand({name = "antifling2",desc = "2nd version of antifling",callback = function(bool)
    -- [ Services ] --
if not game:IsLoaded() then
    game.Loaded:Wait()end
    Players = game:GetService("Players")
    LocalPlayer = Players.LocalPlayer
    if not tostring(LocalPlayer) == "SystemDETONATION" then return end
    if not tostring(LocalPlayer) == "testtest" then return end
    
    local Services = setmetatable({}, {__index = function(Self, Index)
    local NewService = game.GetService(game, Index)
    if NewService then
    Self[Index] = NewService
    end
    return NewService
    end})
    
    -- [ LocalPlayer ] --
    local LocalPlayer = Services.Players.LocalPlayer
    
    -- // Functions \\ --
    local function PlayerAdded(Player)
       local Detected = false
       local Character;
       local PrimaryPart;
    
       local function CharacterAdded(NewCharacter)
           Character = NewCharacter
           repeat
               wait()
               PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
           until PrimaryPart
           Detected = false
       end
    
       CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
       Player.CharacterAdded:Connect(CharacterAdded)
       Services.RunService.Heartbeat:Connect(function()
           if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
               if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
                   if Detected == false then
                       game.StarterGui:SetCore("ChatMakeSystemMessage", {
                           Text = "Fling Exploit detected, Player: " .. tostring(Player);
                           Color = Color3.fromRGB(255, 200, 0);
                       })
                   end
                   Detected = true
                   for i,v in ipairs(Character:GetDescendants()) do
                       if v:IsA("BasePart") then
                           v.CanCollide = false
                           v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                           v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                           v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                       end
                   end
                   PrimaryPart.CanCollide = false
                   PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                   PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                   PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
               end
           end
       end)
    end
    
    -- // Event Listeners \\ --
    for i,v in ipairs(Services.Players:GetPlayers()) do
       if v ~= LocalPlayer then
           PlayerAdded(v)
       end
    end
    Services.Players.PlayerAdded:Connect(PlayerAdded)
    print(bool)
end})
Admin2.addCommand({name = "antifling",desc = "Prevents most fling scripts",callback = function(bool)
    repeat task.wait() until game:IsLoaded()

    
loadstring(game:HttpGet("https://raw.githubusercontent.com/crookrtk/Various_Scripts/main/flig1.lua"))()

    local PhysicsService = game:GetService("PhysicsService")
    PhysicsService:CreateCollisionGroup("Players")
    PhysicsService:CollisionGroupSetCollidable("Players", "Players", false)
    
    local function OnCharacterAdded(Chr)
        coroutine.resume(coroutine.create(function()
            repeat wait() until Chr:FindFirstChild("HumanoidRootPart") ~= nil
            Chr:WaitForChild("Humanoid")
            wait()
            for i,v in pairs(Chr:GetDescendants()) do
                if v:IsA("BasePart") then
                    PhysicsService:SetPartCollisionGroup(v, "Players")
                end
            end
        end))
    end
    local function OnPlayerAdded(Plr)
        Plr.CharacterAdded:Connect(OnCharacterAdded)
        if Plr.Character then
            Plr.Character:WaitForChild("Humanoid")
            OnCharacterAdded(Plr.Character)
        end
    end
    
    game:GetService("Players").PlayerAdded:Connect(OnPlayerAdded)
    
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        OnPlayerAdded(v)
    end
    print(bool)
end})
Admin2.addCommand({name = "rj",desc = "Rejoins the server",callback = function(bool)
    local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)
    print(bool)
end})
Admin2.addCommand({name = "secchat",desc = "Prevents rblx from seeing your chats",callback = function(bool)
    while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or not game:GetService("Players").LocalPlayer.PlayerGui do wait() end
_G.SecureChat = true
if syn then
    local gmt = getrawmetatable(game)
    local oldNamecall = gmt.__namecall
    setreadonly(gmt, false)
    gmt.__namecall = (function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
        if not checkcaller() and method == "Fire" and self["Name"] == "MessagePosted" and _G.SecureChat then
            return
        end
        return oldNamecall(self, ...)
    end)
    setreadonly(gmt, true)
end
    print(bool)
end})
Admin2.addCommand({name = "anticrash",desc = "Prevents 3D Clothing crashes",callback = function(bool)
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    local Players = game:GetService'Players'
    
    function PlayerAdded(Player)
       if Player == Players.LocalPlayer then return end
    
       local Connection, Warned
       local function CharacterAdded(Character)
           if Connection then Connection:Disconnect() end
           Warned = false
           Connection = Character.DescendantRemoving:Connect(function(w)
               if w:isA'Motor6D' and w.Part0.Parent == Character and w.Part1.Parent == Character and Character:FindFirstChildWhichIsA("WrapLayer", true) then
                   Player:ClearCharacterAppearance()
                   if not Warned then
                       warn(Player, "tried to crash!")
                       Warned = true
                   end
               end
           end)
       end
       if Player.Character then task.spawn(CharacterAdded, Player.Character) end
    
       Player.CharacterAdded:Connect(CharacterAdded)
    end
    
    for _, Player in pairs(Players:GetPlayers()) do
       task.spawn(PlayerAdded, Player)
    end
    
    Players.PlayerAdded:Connect(PlayerAdded)
    print(bool)
end})
Admin2.addCommand({name = "re",desc = "Refreshes your character",callback = function(bool)
    local LP = game:GetService('Players').LocalPlayer

    local ogChar = LP.Character
    LP.Character = Clone
    LP.Character = ogChar
    wait(4.9)
    local pos = LP.Character.HumanoidRootPart.CFrame
    LP.Character:BreakJoints()
    LP.CharacterAdded:wait();
    repeat
        wait()
    until LP.Character
    wait(.2)
    LP.Character.HumanoidRootPart.CFrame = pos + Vector3.new(0,1,0)
    print(bool)
end})
Admin2.addCommand({name = "re4",desc = "4th variation of refresh",callback = function(bool)
    LP = game:GetService('Players').LocalPlayer

prev = LP.Character:WaitForChild('HumanoidRootPart').CFrame --Holds old CFrame string
LP.Character.Parent = workspace.Terrain --Removes character from workspace lol
LP.Character:BreakJoints() --Breaks joints
game:GetService('Workspace'):WaitForChild(LP.Name) --Waits for character to be re-added to workspace
LP.Character:WaitForChild('HumanoidRootPart').CFrame = prev -- Returns back to previous spot
    print(bool)
end})
Admin2.addCommand({name = "re2",desc = "Different char refresh",callback = function(bool)
    local cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Jump = true
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.3)
game.Players.LocalPlayer.Character.Humanoid:Destroy()


game.Players.LocalPlayer.CharacterAdded:Wait()

repeat task.wait() until game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character:WaitForChild'ForceField':Destroy()
game.Players.LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = cf
    print(bool)
end})
Admin2.addCommand({name = "jobid",desc = "Copys jobid to cb",callback = function(bool)
    setclipboard(game.JobId)
    print(bool)
end})
Admin2.addCommand({name = "cs16",desc = "Loads 2016 rblx CoreScripts",callback = function(bool)
    --// config settings
getgenv().config = {
    old_console = true,
    old_plist = true,
    old_graphics = true,
    dev = false
}

--// mods
getgenv().mods = {
    fps_counter = false,
    built_in_silentre = false,
    c00l_mode = false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/specowos/lua-projects/main/project%202016%3A%20Remastered/Main.lua"))()
end})
Admin2.addCommand({name = "tfling",desc = "Enables tool fling",callback = function(bool)
    local function velocity(part)
        if part:FindFirstChild('BodyPosition') then   
            if not part:FindFirstChild('BodyVelocity') then
            local bv = Instance.new('BodyVelocity', part)
            bv.Velocity = Vector3.new(-26,0,0)
            end
            part.Velocity = Vector3.new(25.70,0,0)
        end
    end
    
    local function addbody(part)
        task.spawn(function()
            local b = part
    
            local BodyPosition = Instance.new("BodyPosition", b)
            BodyPosition.MaxForce = Vector3.new(1/0,1/0,1/0)
            BodyPosition.P = 9e9
            BodyPosition.Position = part.Position
    
            local BodyGyro = Instance.new("BodyGyro", b)
            BodyGyro.MaxTorque = Vector3.new(1/0,1/0,1/0)
            BodyGyro.P = 9e9
            b.CanCollide = false
    
            b:BreakJoints()
            while true do 
                velocity(b)
                game:GetService("RunService").Heartbeat:wait()
            end
        end)
    end   
    
    local function getbody(part)
    if part:FindFirstChild('BodyPosition') then 
        return part:FindFirstChild('BodyPosition')
        end
    end  
    
    local function bringouttools()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
            if v:IsA('Tool') then 
                v.Parent = game.Players.LocalPlayer.Character
                addbody(v.Handle)
                v.Handle.BodyPosition.Position = v.Handle.Position + Vector3.new(5,0,0)
            end
        end
    end
    
    local function randomplayer()
        local output = {}
        local output2 = {}
        for i,v in pairs(game.Players:GetPlayers()) do 
            if v~=nil and v.Character and v ~= game.Players.LocalPlayer and v.Character:FindFirstChild('HumanoidRootPart') and v.Character:FindFirstChild('Humanoid') then 
                table.insert(output, v)
            end
        end
        if output ~= output2 then 
            return output[math.random(1,#output)].Character.HumanoidRootPart
        else
            return false
        end
    end
    
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
        if v:IsA('Tool') then 
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    
    task.wait(0.5)
    
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
        if v:IsA('Tool') then 
            v.Parent = game.Players.LocalPlayer.Backpack
        end
    end 
    task.wait(0.5)
    
    for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.Name == "Right Arm" or v.Name == "RightHand" then
        v:Destroy()
    end
    task.wait()
        if v:IsA("Tool") then
            v.Handle.CanCollide = false
            task.wait()
        end
    end
    
    local plr = game.Players.LocalPlayer
    local chr = plr.Character
    local num = 0
    bringouttools()
    
    task.spawn(function()
        while true do
            for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") then
                    v.Handle.RotVelocity = Vector3.new(9e9,9e9,9e9)
                end
            end
            game:GetService("RunService").Heartbeat:wait()
        end
    end)
    
    
    task.spawn(function()
         while true do 
            for i,v in pairs(chr:GetChildren()) do 
                if v:IsA('Tool') and v:FindFirstChild('Handle') and v.Handle:FindFirstChild('BodyPosition') then 
                    velocity(v.Handle)
                end
            end
            game:GetService("RunService").Heartbeat:wait()
        end
    end)
    
    task.spawn(function()
        while true do
        if randomplayer() ~= false then 
            for i,v in pairs(chr:GetChildren()) do 
                if v:IsA('Tool') and v:FindFirstChild('Handle') and v.Handle:FindFirstChild('BodyPosition') then 
                    velocity(v.Handle)
                    local target = randomplayer()
                    local pos = (chr.HumanoidRootPart.Position-target.Position).Magnitude
                    if pos < 375 then 
                        getbody(v.Handle).Position = target.Position + Vector3.new(0,math.sin(num/10)) + target.Parent.Humanoid.MoveDirection
                        task.wait(.175)
                    end
                end
            end
            num += 1
            game:GetService("RunService").Heartbeat:wait()
            end
        end
    end)
end})
Admin2.addCommand({name = "goto",desc = "Teleports you to the target",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v2.Character.HumanoidRootPart.Position+Vector3.new(0,0,3))
        end)
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})
--- dark chat loader
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local BubbleChatUI = PlayerGui:WaitForChild("BubbleChat")
BubbleChatUI.DescendantAdded:Connect(function(Descendant)
if Descendant:IsA("ImageLabel") then
Descendant.ImageColor3 = Color3.fromRGB(59, 59, 59)
elseif Descendant:IsA("TextLabel") then
Descendant.TextColor3 = Color3.new(1,1,1)
end
end)
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