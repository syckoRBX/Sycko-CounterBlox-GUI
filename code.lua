-- Gui to Lua
-- Version: 3.2

-- Preload:

if game.CoreGui:FindFirstChild("SyckosGUI", true) then
	game.CoreGui["SyckosGUI"]:Destroy()
	game:GetService("RunService"):UnbindFromRenderStep("AnimatedStrokeBind")
end

local opened = true
local karaequipped = false

-- Instances:

local SyckosGUI = {
	
	 SyckosGUIMain = Instance.new("ScreenGui"),
	 Frame = Instance.new("Frame"),
	 ImageLabel1Main = Instance.new("ImageLabel"),
	 TextLabel1Main = Instance.new("TextLabel"),
	 ImageLabel2Main = Instance.new("ImageLabel"),
	 ScrollingFrame = Instance.new("ScrollingFrame"),
	 TextButtonMain = Instance.new("TextButton"),
	 TextButtonModels = Instance.new("TextButton"),
	 ImageLabel2Models = Instance.new("ImageLabel"),
	 TextLabel1Models = Instance.new("TextLabel"),
	 KarambitReaverButton = Instance.new("ImageButton"),
	 TextLabel = Instance.new("TextLabel"),
	 ImageLabel1Models = Instance.new("ImageLabel"),
}


--Properties:

SyckosGUI.SyckosGUIMain.ResetOnSpawn = false
SyckosGUI.SyckosGUIMain.Name = "SyckosGUI"
SyckosGUI.SyckosGUIMain.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SyckosGUI.SyckosGUIMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

SyckosGUI.Frame.Parent = SyckosGUI.SyckosGUIMain
SyckosGUI.Frame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
SyckosGUI.Frame.Position = UDim2.new(0.230769247, 0, 0.257317066, 0)
SyckosGUI.Frame.Size = UDim2.new(0, 595, 0, 398)

SyckosGUI.ImageLabel1Main.Name = "ImageLabel1Main"
SyckosGUI.ImageLabel1Main.Parent = SyckosGUI.Frame
SyckosGUI.ImageLabel1Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.ImageLabel1Main.BorderSizePixel = 0
SyckosGUI.ImageLabel1Main.Position = UDim2.new(0.428571433, 0, 0.55276382, 0)
SyckosGUI.ImageLabel1Main.Size = UDim2.new(0, 354, 0, 138)
SyckosGUI.ImageLabel1Main.Image = "http://www.roblox.com/asset/?id=10666546256"

SyckosGUI.TextLabel1Main.Name = "TextLabel1Main"
SyckosGUI.TextLabel1Main.Parent = SyckosGUI.Frame
SyckosGUI.TextLabel1Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.TextLabel1Main.Position = UDim2.new(0.35630253, 0, 0.0829145759, 0)
SyckosGUI.TextLabel1Main.Size = UDim2.new(0, 301, 0, 85)
SyckosGUI.TextLabel1Main.Font = Enum.Font.SourceSans
SyckosGUI.TextLabel1Main.Text = "Sycko TRUE gamer GUI💥💥🤓👨🏿"
SyckosGUI.TextLabel1Main.TextColor3 = Color3.fromRGB(0, 0, 0)
SyckosGUI.TextLabel1Main.TextScaled = true
SyckosGUI.TextLabel1Main.TextSize = 14.000
SyckosGUI.TextLabel1Main.TextWrapped = true

SyckosGUI.ImageLabel2Main.Name = "ImageLabel2Main"
SyckosGUI.ImageLabel2Main.Parent = SyckosGUI.Frame
SyckosGUI.ImageLabel2Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.ImageLabel2Main.BorderSizePixel = 0
SyckosGUI.ImageLabel2Main.Position = UDim2.new(0.225210086, 0, 0.356783926, 0)
SyckosGUI.ImageLabel2Main.Size = UDim2.new(0, 187, 0, 202)
SyckosGUI.ImageLabel2Main.Image = "http://www.roblox.com/asset/?id=8675019801"

----------------------------------------------------------------------------------------------------------------------

SyckosGUI.ScrollingFrame.Parent = SyckosGUI.Frame
SyckosGUI.ScrollingFrame.Active = true
SyckosGUI.ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.ScrollingFrame.Size = UDim2.new(0, 100, 0, 398)

SyckosGUI.TextButtonMain.Name = "TextButtonMain"
SyckosGUI.TextButtonMain.Parent = SyckosGUI.ScrollingFrame
SyckosGUI.TextButtonMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.TextButtonMain.Position = UDim2.new(0.0900000036, 0, 0.0113065327, 0)
SyckosGUI.TextButtonMain.Size = UDim2.new(0, 70, 0, 66)
SyckosGUI.TextButtonMain.Font = Enum.Font.SourceSans
SyckosGUI.TextButtonMain.Text = "Main"
SyckosGUI.TextButtonMain.TextColor3 = Color3.fromRGB(0, 0, 0)
SyckosGUI.TextButtonMain.TextSize = 14.000

SyckosGUI.TextButtonModels.Name = "TextButtonModels"
SyckosGUI.TextButtonModels.Parent = SyckosGUI.ScrollingFrame
SyckosGUI.TextButtonModels.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.TextButtonModels.Position = UDim2.new(0.0900000036, 0, 0.113065325, 0)
SyckosGUI.TextButtonModels.Size = UDim2.new(0, 70, 0, 66)
SyckosGUI.TextButtonModels.Font = Enum.Font.SourceSans
SyckosGUI.TextButtonModels.Text = "Models"
SyckosGUI.TextButtonModels.TextColor3 = Color3.fromRGB(0, 0, 0)
SyckosGUI.TextButtonModels.TextSize = 14.000

----------------------------------------------------------------------------------------------------------------------

SyckosGUI.ImageLabel2Models.Name = "ImageLabel2Models"
SyckosGUI.ImageLabel2Models.Parent = SyckosGUI.Frame
SyckosGUI.ImageLabel2Models.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.ImageLabel2Models.BorderSizePixel = 0
SyckosGUI.ImageLabel2Models.Position = UDim2.new(0.191596657, 0, 0.46482411, 0)
SyckosGUI.ImageLabel2Models.Size = UDim2.new(0, 189, 0, 192)
SyckosGUI.ImageLabel2Models.Visible = false
SyckosGUI.ImageLabel2Models.Image = "http://www.roblox.com/asset/?id=10935340319"
SyckosGUI.ImageLabel2Models.Visible = false

SyckosGUI.TextLabel1Models.Name = "TextLabel1Models"
SyckosGUI.TextLabel1Models.Parent = SyckosGUI.Frame
SyckosGUI.TextLabel1Models.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.TextLabel1Models.Position = UDim2.new(0.532773137, 0, 0.698492467, 0)
SyckosGUI.TextLabel1Models.Size = UDim2.new(0, 200, 0, 50)
SyckosGUI.TextLabel1Models.Visible = false
SyckosGUI.TextLabel1Models.Font = Enum.Font.SourceSans
SyckosGUI.TextLabel1Models.Text = "<---- Zevious cAT"
SyckosGUI.TextLabel1Models.TextColor3 = Color3.fromRGB(0, 0, 0)
SyckosGUI.TextLabel1Models.TextScaled = true
SyckosGUI.TextLabel1Models.TextSize = 14.000
SyckosGUI.TextLabel1Models.TextWrapped = true
SyckosGUI.TextLabel1Models.Visible = false

SyckosGUI.KarambitReaverButton.Name = "KarambitReaverButton"
SyckosGUI.KarambitReaverButton.Parent = SyckosGUI.Frame
SyckosGUI.KarambitReaverButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.KarambitReaverButton.BorderSizePixel = 0
SyckosGUI.KarambitReaverButton.Position = UDim2.new(0.191596642, 0, 0.0477386937, 0)
SyckosGUI.KarambitReaverButton.Size = UDim2.new(0, 109, 0, 100)
SyckosGUI.KarambitReaverButton.Visible = false
SyckosGUI.KarambitReaverButton.Image = "http://www.roblox.com/asset/?id=10952599008"
SyckosGUI.KarambitReaverButton.Visible = false
SyckosGUI.KarambitReaverButton.Active = false

SyckosGUI.TextLabel.Parent = SyckosGUI.KarambitReaverButton
SyckosGUI.TextLabel.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
SyckosGUI.TextLabel.BackgroundTransparency = 0.400
SyckosGUI.TextLabel.BorderColor3 = Color3.fromRGB(47, 47, 47)
SyckosGUI.TextLabel.Position = UDim2.new(0, 0, 0.75999999, 0)
SyckosGUI.TextLabel.Size = UDim2.new(0, 109, 0, 24)
SyckosGUI.TextLabel.Font = Enum.Font.SourceSans
SyckosGUI.TextLabel.Text = "Reaver nigger or whatever"
SyckosGUI.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.TextLabel.TextSize = 14.000

SyckosGUI.ImageLabel1Models.Name = "ImageLabel1Models"
SyckosGUI.ImageLabel1Models.Parent = SyckosGUI.Frame
SyckosGUI.ImageLabel1Models.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SyckosGUI.ImageLabel1Models.BorderSizePixel = 0
SyckosGUI.ImageLabel1Models.Position = UDim2.new(0.650420189, 0, 0.125628144, 0)
SyckosGUI.ImageLabel1Models.Size = UDim2.new(0, 178, 0, 151)
SyckosGUI.ImageLabel1Models.Visible = false
SyckosGUI.ImageLabel1Models.Image = "http://www.roblox.com/asset/?id=10665950574"
SyckosGUI.ImageLabel1Models.Visible = false

function MainClick()
	SyckosGUI.ImageLabel2Models.Visible = false
	SyckosGUI.TextLabel1Models.Visible = false
	SyckosGUI.KarambitReaverButton.Visible = false
	SyckosGUI.KarambitReaverButton.Active = false
	SyckosGUI.ImageLabel1Models.Visible = false
		------
	SyckosGUI.ImageLabel1Main.Visible = true
	SyckosGUI.TextLabel1Main.Visible = true
	SyckosGUI.ImageLabel2Main.Visible = true
end

function ModelsClick()
	SyckosGUI.ImageLabel2Models.Visible = true
	SyckosGUI.TextLabel1Models.Visible = true
	SyckosGUI.KarambitReaverButton.Visible = true
	SyckosGUI.KarambitReaverButton.Active = true
	SyckosGUI.ImageLabel1Models.Visible = true
	------
	SyckosGUI.ImageLabel1Main.Visible = false
	SyckosGUI.TextLabel1Main.Visible = false
	SyckosGUI.ImageLabel2Main.Visible = false
end

SyckosGUI.TextButtonMain.MouseButton1Click:Connect(MainClick)
SyckosGUI.TextButtonModels.MouseButton1Click:Connect(ModelsClick)

SyckosGUI.KarambitReaverButton.MouseButton1Down:connect(function()
if karaequipped == true then 
    print("Alreadly Using ReaverKarambit")
return end
	--CB:R Reaver Karambit (Red)
	game:GetService("ReplicatedStorage").Viewmodels["v_CT Knife"]:Destroy()
	game:GetService("ReplicatedStorage").Viewmodels["v_T Knife"]:Destroy()
	wait()
	local Clone1 = game:GetService("ReplicatedStorage").Viewmodels["v_RedReaver"]:Clone()
	Clone1.Parent = game:GetService("ReplicatedStorage").Viewmodels
	wait()
	game:GetService("ReplicatedStorage").Viewmodels["v_RedReaver"].Name = "v_CT Knife"
	game:GetService("ReplicatedStorage").Viewmodels["v_RedReaver"].Name = "v_T Knife"
    karaequipped = true
end)

--Keybind:
function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.RightAlt then
		if not gameProcessedEvent then
			gameProcessedEvent = true
				if opened == false then
				    SyckosGUI.SyckosGUIMain.Enabled = true
					opened = true
					wait(1)
					gameProcessedEvent = false
				elseif opened == true then
				   SyckosGUI.SyckosGUIMain.Enabled = false
					opened = false
					wait(1)
					gameProcessedEvent = false
			end
		end
	end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)