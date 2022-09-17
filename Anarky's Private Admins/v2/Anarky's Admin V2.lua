-- whitelist table

local whitelisted = ("TheAnarkyTales"), ("SystemDETONATION"), ("StanfordEU"), ("U4iq"), ("ClothingWars"), ("LovableAlexis230"), ("Example"), ("Example"), ("Example"), ("Example"), ("Example"), ("Example"), ("Example"), ("Example")




function script()
--script if localplayer is whitelisted here
if not game:IsLoaded() then game.Loaded:Wait() end
--
loadstring(game:HttpGet("https://raw.githubusercontent.com/crookrtk/AnarkysAdmin/main/ownericons.lua"))()
wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/crookrtk/AnarkysAdmin/main/tags.lua"))()
--
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
Admin2.addCommand({name = "antitrack",desc = "Prevents some roblox tracing flags",callback = function(bool)
    setfflag("CrashPadUploadToBacktraceToBacktraceBaseUrl", "")
setfflag("CrashUploadToBacktracePercentage", "0")
setfflag("CrashUploadToBacktraceBlackholeToken", "")
print("Loaded AntiTrace")
setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")
    print(bool)
end})
Admin2.addCommand({name = "dex",desc = "Loads Dex V4",callback = function(bool)
    if not cloneref then
        getgenv().cloneref = function(refrence)
            return refrence
        end
    end
    -- Dex with CloneRef Support (made as global)
    getgenv().Bypassed_Dex = game:GetObjects("rbxassetid://9352453730")[1]
    
    local charset = {}
    for i = 48,  57 do table.insert(charset, string.char(i)) end
    for i = 65,  90 do table.insert(charset, string.char(i)) end
    for i = 97, 122 do table.insert(charset, string.char(i)) end
    function RandomCharacters(length)
        if length > 0 then
            return RandomCharacters(length - 1) .. charset[math.random(1, #charset)]
        else
            return ""
        end
    end
    
    Bypassed_Dex.Name = RandomCharacters(math.random(5, 20))
    Bypassed_Dex.Parent = cloneref(game:GetService("CoreGui"))
    
    local function Load(Obj, Url)
        local function GiveOwnGlobals(Func, Script)
            local Fenv = {}
            local RealFenv = {script = Script}
            local FenvMt = {}
            FenvMt.__index = function(a,b)
                if RealFenv[b] == nil then
                    return getfenv()[b]
                else
                    return RealFenv[b]
                end
            end
            FenvMt.__newindex = function(a, b, c)
                if RealFenv[b] == nil then
                    getfenv()[b] = c
                else
                    RealFenv[b] = c
                end
            end
            setmetatable(Fenv, FenvMt)
            setfenv(Func, Fenv)
            return Func
        end
    
        local function LoadScripts(Script)
            if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
                spawn(GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script))
            end
            for i,v in pairs(Script:GetChildren()) do
                LoadScripts(v)
            end
        end
    
        LoadScripts(Obj)
    end
    
    Load(Bypassed_Dex)
    print(bool)
end})
Admin2.addCommand({name = "unview",desc = "hi",callback = function(b)
    workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid

end})
Admin2.addCommand({name = "antivoid",desc = "Prevents voids, lower ping = better anti",callback = function(bool)
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
Admin2.addCommand({name = "lscale",desc = "Rescales your leg",callback = function(bool)
    local function delete()
        game.Players.LocalPlayer.Character.LeftFoot:WaitForChild'OriginalSize':Destroy()
        game.Players.LocalPlayer.Character.LeftLowerLeg:WaitForChild'OriginalSize':Destroy()
        game.Players.LocalPlayer.Character.LeftUpperLeg:WaitForChild'OriginalSize':Destroy()
    end
    game.Players.LocalPlayer.Character.LeftLowerLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
    game.Players.LocalPlayer.Character.LeftUpperLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
    game.Players.LocalPlayer.Character.LeftLowerLeg:WaitForChild'LeftKneeRigAttachment':Destroy()
    game.Players.LocalPlayer.Character.LeftUpperLeg:WaitForChild'LeftKneeRigAttachment':Destroy()
    for i,v in next, game.Players.LocalPlayer.Character.Humanoid:GetChildren() do
        if v:IsA'NumberValue' then
            delete()
            v:Destroy()
        end
    end
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
Admin2.addCommand({name = "antikill",desc = "Prevents people from killing you",callback = function(bool)
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Seated", false)
	game.Players.LocalPlayer.Character.Humanoid.Sit = true
	game:GetService('RunService').RenderStepped:Wait()
    print(bool)
end})
Admin2.addCommand({name = "antivoid3",desc = "RenderStep version of antivoid2",callback = function(bool)
    spos = game:GetService [[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
charar = game:GetService [[Players]].LocalPlayer.Character



pcall(
    function()
        game:GetService"RunService".RenderStepped:Connect(function()
            task.wait()
charar:WaitForChild("BoomBox"):Destroy()





charar.HumanoidRootPart.CFrame = spos + Vector3.new(0,1,0)
end)
end)
    print(bool)
end})
Admin2.addCommand({name = "antivoid2",desc = "Variation of AntiVoid, equip boombox first",callback = function(bool)
    spos = game:GetService [[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
charar = game:GetService [[Players]].LocalPlayer.Character




while true do
    wait()
charar:WaitForChild("BoomBox"):Destroy()





charar.HumanoidRootPart.CFrame = spos + Vector3.new(0,1,0)
end
    
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
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
    print(bool)
end})
Admin2.addCommand({name = "admin",desc = "Displays the name of the Admin",callback = function(b)
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("[ > Anarky's Private Admin <] (v2)","All")

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
Admin2.addCommand({name = "void",desc = "Voids the target",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            local LocalPlayer = game.Players.LocalPlayer
        local newHum = LocalPlayer.Character.Humanoid:Clone()
        newHum.Parent = LocalPlayer.Character
        LocalPlayer.Character.Humanoid:Destroy()
        for i,v in next, LocalPlayer.Backpack:GetChildren() do
            if v:IsA'Tool' then
                v.Parent = LocalPlayer.Character
            end
        end
        local tool = LocalPlayer.Character:FindFirstChildOfClass'Tool'
        local pos = LocalPlayer.Character.HumanoidRootPart.CFrame
        firetouchinterest(tool.Handle, v2.Character.Head, 0)
        task.wait()
        game.Workspace.Gravity = 5000000000000000000
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(0,400,0)
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,-1000,0)
        game.Players.LocalPlayer.CharacterAdded:Wait()
        repeat task.wait() until LocalPlayer.Character
        game.Workspace.Gravity = 200
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end)
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})
Admin2.addCommand({name = "void2",desc = "Variation of Void",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            --this script was made by d2lusion
function getRoot(char)
    local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
    return rootPart
 end
 local player = game.Players.LocalPlayer
 local char = game.Players.LocalPlayer.Character
 local t = v2.Character
 local hum = char:FindFirstChildOfClass("Humanoid")
 local hrp = getRoot(char)
 local hrp2 = getRoot(t)
 hum.Name = "1"
 local newHum = hum:Clone()
 newHum.Parent = char
 newHum.Name = "Humanoid"
 wait()
 hum:Destroy()
 workspace.CurrentCamera.CameraSubject = char
 newHum.DisplayDistanceType = "None"
 local tool = player:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or char:FindFirstChildOfClass("Tool")
 tool.Parent = char
 hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
 local n = 0
 repeat
    wait(.1)
    n = n + 1
    hrp.CFrame = hrp2.CFrame
 until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
 repeat
        wait()
        hrp.CFrame = CFrame.new(9e9,9e9,9e9)
 until not getRoot(tchar) or not getRoot(char)
        end)
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})
Admin2.addCommand({name = "netlag",desc = "Lags the target (if net in use)",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer


local TargetMetaVars = {}

TargetMetaVars["TPlayer"] = GetPlayer(v2)
TargetMetaVars["TCharacter"] = TargetMetaVars["TPlayer"].Character or false

local ErrorCheck = false

for _,x in next, TargetMetaVars do
    if not x then
        ErrorCheck = true
    end
end

if ErrorCheck then return end

local Set_Hidden = sethiddenproperty

while RunService.Stepped:wait() do
    for _,x in next, TargetMetaVars.TCharacter:GetDescendants() do
        if x:IsA("BasePart") then
            Set_Hidden(x, "NetworkIsSleeping", true)
        end
    end
end
        end)
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})
Admin2.addCommand({name = "view",desc = "Views your lovely target",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            workspace.CurrentCamera.CameraSubject = v2.Character.Humanoid
            end)
        
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})
Admin2.addCommand({name = "mdvoid",desc = "Rescales, then voids target",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
game.Players.LocalPlayer.Character.Humanoid.Sit = false

for i,v in next, game.Players.LocalPlayer.Character.Humanoid:GetChildren() do
    if v:IsA'NumberValue' then
        delete()
        v:Destroy()
    end
end

local LocalPlayer = game.Players.LocalPlayer
local newHum = LocalPlayer.Character.Humanoid:Clone()
newHum.Parent = LocalPlayer.Character
LocalPlayer.Character.Humanoid:Destroy()
for i,v in next, LocalPlayer.Backpack:GetChildren() do
    if v:IsA'Tool' then
        v.Parent = LocalPlayer.Character
    end
end
local tool = LocalPlayer.Character:FindFirstChildOfClass'Tool'
firetouchinterest(tool.Handle, v2.Character.Head, 0)
local start
local connection = v2.Character.Humanoid.Died:Connect(function()
    start = tick()
    warn("Void successful! Took: " .. tick() - start)
end)
local save = {}
for i,v in next, workspace:GetChildren() do
    if v:IsA'Model' then
        if not game.Players:GetPlayerFromCharacter(v) then
            save[#save + 1] = v
        end
    else
        if v.ClassName == "Part" then
            save[#save + 1] = v
        end
    end
end
for i,v in next, save do
    v.Parent = game.Lighting
end
local BP = Instance.new("BodyPosition", game.Players.LocalPlayer.Character.HumanoidRootPart)
BP.Position = Vector3.new(0, -4500, 0)
BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
BP.P = 6000
game.Players.LocalPlayer.CharacterAdded:Wait()
game.Players.LocalPlayer.Character:WaitForChild'ForceField':Destroy()
game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = saveCF
connection:Disconnect()
for i,v in next, save do
    v.Parent = workspace
end
            end)
        
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})
Admin2.addCommand({name = "unorbit",desc = "Stops orbiting the target",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            if v.Name == "OrbitalDestructionPart" or v.Name == "OrbitalDestruction" then
                v:Destroy()
            end
            end)
        
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})
Admin2.addCommand({name = "orbit",desc = "Orbits the target",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            local P = Instance.new("Part", v2.Character)
			P.Transparency = 1
			P.Name = "ThePart"
			P.Size = Vector3.new(1.7,1.7,1.7)
			P.Massless = true
			P.CanCollide = false
			local W = Instance.new("Weld", P)
			W.Part1 = target.Character.HumanoidRootPart
			W.Part0 = P
			local sine = 0
			local change = 1
			local spin = 0
			local spin2 = 0
			local rp = Instance.new("RocketPropulsion")
			rp.Parent = cmdlp.Character.HumanoidRootPart
			rp.CartoonFactor = 1
			rp.MaxThrust = 5000
			rp.MaxSpeed = 100
			rp.ThrustP = 5000
			rp.Name = "OrbitalDestructionPart"
			rp.Target = target.Character.ThePart
			rp:Fire()
			cmdlp.Character.Humanoid.PlatformStand = true
			while true do
				game:GetService("RunService").RenderStepped:wait()
				sine = sine + change
				spin2 = spin2 + 0.6
				spin = spin + 1
				W.C0 = CFrame.new(7 * math.cos(20),-2 - 2 * math.sin(sine/10),7 * math.sin(20))*CFrame.Angles(math.rad(0),math.rad(spin),math.rad(0))
            end
       end)
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})
Admin2.addCommand({name = "fkill",desc = "Fast version of kill",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            local LocalPlayer = game.Players.LocalPlayer
            local ogChar = LocalPlayer.Character
            LocalPlayer.Character = Clone
            LocalPlayer.Character = ogChar
            task.wait(4.6)
            local newHum = LocalPlayer.Character.Humanoid:Clone()
            newHum.Parent = LocalPlayer.Character
            LocalPlayer.Character.Humanoid:Destroy()
            newHum:ChangeState(15)
            for i,v in next, LocalPlayer.Backpack:GetChildren() do
                if v:IsA'Tool' then
                    v.Parent = LocalPlayer.Character
                end
            end
            local pos = LocalPlayer.Character.HumanoidRootPart.CFrame
            local tool = LocalPlayer.Character:FindFirstChildOfClass'Tool'
            firetouchinterest(tool.Handle, v2.Character.Head, 0)
            tool.AncestryChanged:Wait()
            LocalPlayer.Character:BreakJoints()
            game.Players.LocalPlayer.CharacterAdded:Wait()
            tool:Destroy()
            repeat task.wait() until LocalPlayer.Character
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end)
    end
    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
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



--script if localplayer is whitelisted here
end

local nonamexd = game.Players.LocalPlayer.Name
local whitelist = Instance.new("ScreenGui")
local theframe = Instance.new("Frame")
local nonamer = Instance.new("TextLabel")
local creditsifuremoveugayxd = Instance.new("TextLabel")
local loading = Instance.new("ImageLabel")
local checktext = Instance.new("TextLabel")
local Whitelistedtext = Instance.new("TextLabel")
local Notwhitelitedtext = Instance.new("TextLabel")
whitelist.Name = "whitelist"
whitelist.Parent = game.CoreGui
theframe.Name = "theframe"
theframe.Parent = whitelist
theframe.BackgroundColor3 = Color3.new(169, 169, 169)
theframe.BorderColor3 = Color3.new(0, 0, 0)
theframe.BorderSizePixel = 4
theframe.Position = UDim2.new(0.308166414, 0, 0.417549163, 0)
theframe.Size = UDim2.new(0, 498, 0, 108)
nonamer.Name = "nonamer"
nonamer.Parent = theframe
nonamer.BackgroundColor3 = Color3.new(1, 1, 1)
nonamer.BackgroundTransparency = 1
nonamer.Position = UDim2.new(0.29919678, 0, -0.527777791, 0)
nonamer.Size = UDim2.new(0, 200, 0, 50)
nonamer.Font = Enum.Font.Highway
nonamer.Text = "Anarky's Priv Admin"
nonamer.TextColor3 = Color3.new(0, 0, 0)
nonamer.TextSize = 40
creditsifuremoveugayxd.Name = "creditsifuremoveugayxd"
creditsifuremoveugayxd.Parent = theframe
creditsifuremoveugayxd.BackgroundColor3 = Color3.new(1, 1, 1)
creditsifuremoveugayxd.BackgroundTransparency = 1
creditsifuremoveugayxd.Position = UDim2.new(0.29919678, 0, 0.694444418, 0)
creditsifuremoveugayxd.Size = UDim2.new(0, 200, 0, 50)
creditsifuremoveugayxd.Font = Enum.Font.Cartoon
creditsifuremoveugayxd.Text = "Anarky's Private Admin (v2 loader)"
creditsifuremoveugayxd.TextColor3 = Color3.new(0, 0, 0)
creditsifuremoveugayxd.TextSize = 14
loading.Name = "loading"
loading.Parent = theframe
loading.BackgroundColor3 = Color3.new(1, 1, 1)
loading.BackgroundTransparency = 1
loading.Position = UDim2.new(0.0742971897, 0, 0.185185194, 0)
loading.Size = UDim2.new(0, 68, 0, 67)
loading.Image = "rbxassetid://2117554457"
checktext.Name = "checktext"
checktext.Parent = theframe
checktext.BackgroundColor3 = Color3.new(1, 1, 1)
checktext.BackgroundTransparency = 1
checktext.Position = UDim2.new(0.29919678, 0, 0.231481493, 0)
checktext.Size = UDim2.new(0, 200, 0, 50)
checktext.Font = Enum.Font.Highway
checktext.Text = "Checking..."
checktext.TextColor3 = Color3.new(0, 0, 0)
checktext.TextSize = 40
Whitelistedtext.Name = "Whitelistedtext"
Whitelistedtext.Parent = theframe
Whitelistedtext.BackgroundColor3 = Color3.new(0, 0.196078, 0)
Whitelistedtext.BackgroundTransparency = 1
Whitelistedtext.Position = UDim2.new(0.389558226, 0, 0.231481493, 0)
Whitelistedtext.Size = UDim2.new(0, 200, 0, 50)
Whitelistedtext.Visible = false
Whitelistedtext.Font = Enum.Font.Highway
Whitelistedtext.Text = "You are whitelisted!"
Whitelistedtext.TextColor3 = Color3.new(0, 0.592157, 0)
Whitelistedtext.TextSize = 40
Notwhitelitedtext.Name = "Notwhitelitedtext"
Notwhitelitedtext.Parent = theframe
Notwhitelitedtext.BackgroundColor3 = Color3.new(1, 1, 1)
Notwhitelitedtext.BackgroundTransparency = 1
Notwhitelitedtext.Position = UDim2.new(0.369477898, 0, 0.231481493, 0)
Notwhitelitedtext.Size = UDim2.new(0, 200, 0, 50)
Notwhitelitedtext.Visible = false
Notwhitelitedtext.Font = Enum.Font.Highway
Notwhitelitedtext.Text = "You are not whitelisted!"
Notwhitelitedtext.TextColor3 = Color3.new(0.392157, 0, 0)
Notwhitelitedtext.TextSize = 40
theframe.Position = UDim2.new(0.348166414, 0, 0.01, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.02, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.03, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.04, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.05, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.06, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.07, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.08, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.09, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.1, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.12, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.13, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.14, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.15, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.16, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.17, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.18, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.19, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.20, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.21, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.22, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.23, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.24, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.25, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.26, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.27, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.28, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.29, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.30, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.31, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.32, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.33, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.34, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.35, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.36, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.37, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.38, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.39, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.40, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.41, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.42, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.43, 0)
wait(0.01)
theframe.Position = UDim2.new(0.348166414, 0, 0.44, 0)
wait(0.2)
loading.Rotation = 5
wait(0.01)
loading.Rotation = 10
wait(0.01)
loading.Rotation = 15
wait(0.01)
loading.Rotation = 20
wait(0.01)
loading.Rotation = 25
wait(0.01)
loading.Rotation = 30
wait(0.01)
loading.Rotation = 35
wait(0.01)
loading.Rotation = 40
wait(0.01)
loading.Rotation = 45
wait(0.01)
loading.Rotation = 50
wait(0.01)
loading.Rotation = 55
wait(0.01)
loading.Rotation = 60
wait(0.01)
loading.Rotation = 65
wait(0.01)
loading.Rotation = 70
wait(0.01)
loading.Rotation = 75
wait(0.01)
loading.Rotation = 80
wait(0.01)
loading.Rotation = 85
wait(0.01)
loading.Rotation = 90
wait(0.01)
loading.Rotation = 95
wait(0.01)
loading.Rotation = 100
wait(0.01)
loading.Rotation = 105
wait(0.01)
loading.Rotation = 110
wait(0.01)
loading.Rotation = 115
wait(0.01)
loading.Rotation = 120
wait(0.01)
loading.Rotation = 125
wait(0.01)
loading.Rotation = 130
wait(0.01)
loading.Rotation = 135
wait(0.01)
loading.Rotation = 140
wait(0.01)
loading.Rotation = 145
wait(0.01)
loading.Rotation = 150
wait(0.01)
loading.Rotation = 155
wait(0.01)
loading.Rotation = 160
wait(0.01)
loading.Rotation = 165
wait(0.01)
loading.Rotation = 170
wait(0.01)
loading.Rotation = 175
wait(0.01)
loading.Rotation = 180
wait(0.01)
loading.Rotation = 185
wait(0.01)
loading.Rotation = 190
wait(0.01)
loading.Rotation = 195
wait(0.01)
loading.Rotation = 200
wait(0.01)
loading.Rotation = 205
wait(0.01)
loading.Rotation = 210
wait(0.01)
loading.Rotation = 215
wait(0.01)
loading.Rotation = 220
wait(0.01)
loading.Rotation = 225
wait(0.01)
loading.Rotation = 230
wait(0.01)
loading.Rotation = 235
wait(0.01)
loading.Rotation = 240
wait(0.01)
loading.Rotation = 245
wait(0.01)
loading.Rotation = 250
wait(0.01)
loading.Rotation = 255
wait(0.01)
loading.Rotation = 260
wait(0.01)
loading.Rotation = 265
wait(0.01)
loading.Rotation = 270
wait(0.01)
loading.Rotation = 275
wait(0.01)
loading.Rotation = 280
wait(0.01)
loading.Rotation = 285
wait(0.01)
loading.Rotation = 290
wait(0.01)
loading.Rotation = 295
wait(0.01)
loading.Rotation = 300
wait(0.01)
loading.Rotation = 305
wait(0.01)
loading.Rotation = 310
wait(0.01)
loading.Rotation = 310
wait(0.01)
loading.Rotation = 315
wait(0.01)
loading.Rotation = 320
wait(0.01)
loading.Rotation = 325
wait(0.01)
loading.Rotation = 330
wait(0.01)
loading.Rotation = 335
wait(0.01)
loading.Rotation = 340
wait(0.01)
loading.Rotation = 345
wait(0.01)
loading.Rotation = 350
wait(0.01)
loading.Rotation = 355
wait(0.01)
loading.Rotation = 360
wait(0.01)
loading.Rotation = 5
wait(0.01)
loading.Rotation = 10
wait(0.01)
loading.Rotation = 15
wait(0.01)
loading.Rotation = 20
wait(0.01)
loading.Rotation = 25
wait(0.01)
loading.Rotation = 30
wait(0.01)
loading.Rotation = 35
wait(0.01)
loading.Rotation = 40
wait(0.01)
loading.Rotation = 45
wait(0.01)
loading.Rotation = 50
wait(0.01)
loading.Rotation = 55
wait(0.01)
loading.Rotation = 60
wait(0.01)
loading.Rotation = 65
wait(0.01)
loading.Rotation = 70
wait(0.01)
loading.Rotation = 75
wait(0.01)
loading.Rotation = 80
wait(0.01)
loading.Rotation = 85
wait(0.01)
loading.Rotation = 90
wait(0.01)
loading.Rotation = 95
wait(0.01)
loading.Rotation = 100
wait(0.01)
loading.Rotation = 105
wait(0.01)
loading.Rotation = 110
wait(0.01)
loading.Rotation = 115
wait(0.01)
loading.Rotation = 120
wait(0.01)
loading.Rotation = 125
wait(0.01)
loading.Rotation = 130
wait(0.01)
loading.Rotation = 135
wait(0.01)
loading.Rotation = 140
wait(0.01)
loading.Rotation = 145
wait(0.01)
loading.Rotation = 150
wait(0.01)
loading.Rotation = 155
wait(0.01)
loading.Rotation = 160
wait(0.01)
loading.Rotation = 165
wait(0.01)
loading.Rotation = 170
wait(0.01)
loading.Rotation = 175
wait(0.01)
loading.Rotation = 180
wait(0.01)
loading.Rotation = 185
wait(0.01)
loading.Rotation = 190
wait(0.01)
loading.Rotation = 195
wait(0.01)
loading.Rotation = 200
wait(0.01)
loading.Rotation = 205
wait(0.01)
loading.Rotation = 210
wait(0.01)
loading.Rotation = 215
wait(0.01)
loading.Rotation = 220
wait(0.01)
loading.Rotation = 225
wait(0.01)
loading.Rotation = 230
wait(0.01)
loading.Rotation = 235
wait(0.01)
loading.Rotation = 240
wait(0.01)
loading.Rotation = 245
wait(0.01)
loading.Rotation = 250
wait(0.01)
loading.Rotation = 255
wait(0.01)
loading.Rotation = 260
wait(0.01)
loading.Rotation = 265
wait(0.01)
loading.Rotation = 270
wait(0.01)
loading.Rotation = 275
wait(0.01)
loading.Rotation = 280
wait(0.01)
loading.Rotation = 285
wait(0.01)
loading.Rotation = 290
wait(0.01)
loading.Rotation = 295
wait(0.01)
loading.Rotation = 300
wait(0.01)
loading.Rotation = 305
wait(0.01)
loading.Rotation = 310
wait(0.01)
loading.Rotation = 310
wait(0.01)
loading.Rotation = 315
wait(0.01)
loading.Rotation = 320
wait(0.01)
loading.Rotation = 325
wait(0.01)
loading.Rotation = 330
wait(0.01)
loading.Rotation = 335
wait(0.01)
loading.Rotation = 340
wait(0.01)
loading.Rotation = 345
wait(0.01)
loading.Rotation = 350
wait(0.01)
loading.Rotation = 355
wait(0.01)
loading.Rotation = 360
wait(0.01)
if nonamexd == whitelisted then
checktext.Visible = false
Whitelistedtext.Visible = true
wait(1)
script()
wait(0.5)
whitelist:Destroy()
else
checktext.Visible = false
Notwhitelitedtext.Visible = true
wait(2)
whitelist:Destroy()
game.Players.LocalPlayer:kick "you are not whitelisted!"
end
