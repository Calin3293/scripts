local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Megahack V8", HidePremium = false, SaveConfig = true, ConfigFolder = "megafolder"})

local Tab = Window:MakeTab({
	Name = "Game",
	Icon = "rbxassetid://14552247756",
	PremiumOnly = false
})


Tab:AddButton({
	Name = "Noclip",
	Callback = function()
      	for i,v in pairs(game.Workspace.LoadedLevels:GetDescendants()) do
		if v:IsA("Part") and v.Name == "Spike" or v.Name == "Saw" then
		v:Destroy();
		end
		end
  	end    
})

Tab:AddButton({
	Name = "Layout Mode",
	Callback = function()
		for i,v in pairs(game.Workspace.LoadedLevels:GetDescendants()) do
		if v:IsA("Part") and v.Name == "BrickBlock04" or v.Name == "GridBlock05" or v.Name == "GridBlock06" or v.Name == "TileBlock05" then
		v:Destroy();
		end
		end
  	end    
})

Tab:AddButton({
	Name = "No Particles",
	Callback = function()
	while wait() do
      	for i,v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("ParticleEmitter") then
		v.Enabled = false;
		end
		end
	end
  	end    
})

Tab:AddButton({
	Name = "No Jump Pad Effect",
	Callback = function()
	while wait() do
		for i,v in pairs(game.Workspace.LoadedLevels:GetDescendants()) do
		if v:IsA("Decal") and v.Parent.Name == "JumpBright" then
		v.Texture = 9789474866;
		end
		end
  	end
  	end    
})

Tab:AddButton({
	Name = "InstantComplete",
	Callback = function()
		local cubelocation = game.Workspace.Cube.CFrame
		for i,v in pairs(game.Workspace.LoadedLevels:GetDescendants()) do
		if v:IsA("Part") and v.Name == "Collision" then
		v.CFrame = cubelocation; 
		end
		end
  	end    
})

Tab:AddButton({
	Name = "Show Hitboxes",
	Callback = function()
for i,v in pairs(game.Workspace.LoadedLevels:GetDescendants()) do
if v:IsA("Part") and v.Name == "Collider" then
v.Transparency = 0;
end
end

for i,v in pairs(game.Workspace.LoadedLevels:GetDescendants()) do
if v:IsA("Part") and v.Name == "Collision" then
v.Transparency = 0;
end
end

for i,v in pairs(game.Workspace.LoadedLevels:GetDescendants()) do
if v:IsA("Decal") then
v.Transparency = 1;
end
end
  	end    
})

Tab:AddButton({
	Name = "FPS Counter",
	Callback = function()
		local FPSGui = Instance.new("ScreenGui"); FPSGui.Name = "FPSGui"; FPSGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
		local FPSFrame = Instance.new("Frame"); FPSFrame.Name = "FPSFrame"; FPSFrame.Parent = FPSGui
		local FPS = Instance.new("TextLabel");FPS.Name="FPS";FPS.Parent=FPSFrame;FPS.Text="TEMP";FPS.TextColor3=Color3.new(255,167,167);FPS.Font="SciFi";FPS.TextSize=40;FPS.Position=UDim2.new(0,60,0,35)
		local RS = game:GetService("RunService")
		local frames = 0
		wait(0.1)
		RS.RenderStepped:Connect(function()
		frames = frames + 1
		end)
		while wait(1) do
		FPS.Text = frames .. " FPS"
		frames = 0
		end
  	end    
})

local Section = Tab:AddSection({
	Name = "Audio"
})

Tab:AddSlider({
	Name = "MenuMusic",
	Min = 0.1,
	Max = 2,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.1,
	ValueName = "volume",
	Callback = function(Value)
		game.Workspace.Audio.menuLoop.Volume = Value
	end    
})

Tab:AddSlider({
	Name = "SFX",
	Min = 0.1,
	Max = 1,
	Default = 0.5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.1,
	ValueName = "volume",
	Callback = function(Value)
		game.Workspace.Audio.explode_11.Volume = Value
		game.Workspace.Audio.explode_11_Server.Volume = Value
	end    
})

local Section = Tab:AddSection({
	Name = "Icon"
})

Tab:AddTextbox({
	Name = "Custom Icon - set color to white",
	Default = "rbxassetid://13621533149",
	TextDisappear = false,
	Callback = function(icon)
		game.Workspace.Cube.Base.Texture = icon
	end	  
})


local Tab = Window:MakeTab({
	Name = "Editor",
	Icon = "rbxassetid://14552125452",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Quality of life"
})

Tab:AddBind({
	Name = "Rotation -90°",
	Default = Enum.KeyCode.z,
	Hold = false,
	Callback = function()
		for i,v in pairs(game.Players:GetDescendants()) do
		if v:IsA("TextBox") and v.Name == "RotationValue" then
		v.Text = -90;
		end
		end
	end    
})

Tab:AddBind({
	Name = "Rotation 0°",
	Default = Enum.KeyCode.x,
	Hold = false,
	Callback = function()
		for i,v in pairs(game.Players:GetDescendants()) do
		if v:IsA("TextBox") and v.Name == "RotationValue" then
		v.Text = 0;
		end
		end
	end    
})

Tab:AddBind({
	Name = "Rotation 90°",
	Default = Enum.KeyCode.c,
	Hold = false,
	Callback = function()
		for i,v in pairs(game.Players:GetDescendants()) do
		if v:IsA("TextBox") and v.Name == "RotationValue" then
		v.Text = 90;
		end
		end
	end    
})

Tab:AddBind({
	Name = "Rotation 180°",
	Default = Enum.KeyCode.v,
	Hold = false,
	Callback = function()
		for i,v in pairs(game.Players:GetDescendants()) do
		if v:IsA("TextBox") and v.Name == "RotationValue" then
		v.Text = 180;
		end
		end
	end    
})

Tab:AddBind({
	Name = "QuickDeleteBind",
	Default = Enum.KeyCode.T,
	Hold = false,
	Callback = function()
		for i,v in pairs(game.Players:GetDescendants()) do
		if v:IsA("ImageButton") and v.Name == "Delete" then
		firesignal(v.MouseButton1Click);
		end
		end
	end    
})

Tab:AddBind({
	Name = "SelectionModeBind",
	Default = Enum.KeyCode.R,
	Hold = false,
	Callback = function()
		for i,v in pairs(game.Players:GetDescendants()) do
		if v:IsA("ImageButton") and v.Name == "Selection" then
		firesignal(v.MouseButton1Click);
		end
		end
	end    
})

Tab:AddSlider({
	Name = "FOV",
	Min = 40,
	Max = 120,
	Default = 70,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "fov",
	Callback = function(Value)
		game.Workspace.Camera.FieldOfView = Value
	end    
})

local Section = Tab:AddSection({
	Name = "Other"
})

Tab:AddButton({
	Name = "VerifyHack",
	Callback = function()
      	local location = game.Workspace.GameAssets.Cube.CFrame
		wait(0.1)
		game.Workspace.LoadedLevels.Level.End.End.Collision.CFrame = location
  	end    
})

Tab:AddButton({
	Name = "NoWalls",
	Callback = function()
		game.Workspace.GameAssets.Wall:Destroy()
		wait(0.5)
		game.Workspace.GameAssets.Wall:Destroy()
  	end    
})

local Section = Tab:AddSection({
	Name = "Background/Ground Color"
})

Tab:AddColorpicker({
	Name = "Background",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(b)
		game.Workspace.GameAssets.BG.Texture.Color3 = b
	end	  
})

Tab:AddColorpicker({
	Name = "Ground",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(g)
		game.Workspace.GameAssets.Floor.Texture.Color3 = g
	end	  
})

local Section = Tab:AddSection({
	Name = "Player Colors"
})

Tab:AddColorpicker({
	Name = "1",
	Default = Color3.fromRGB(125, 255, 0),
	Callback = function(m)
		game.Workspace.GameAssets.Cube.Base.Color3 = m
	end	  
})

Tab:AddColorpicker({
	Name = "2",
	Default = Color3.fromRGB(0, 255, 255),
	Callback = function(s)
		game.Workspace.GameAssets.Cube.Glow.Glow.Color3 = s
	end	  
})
