_G.Setting_table = {
   BringMonster = true,
   FastAttack = true,
   Save_Member = true,
   Show_Damage = true,
   NoClip = true,
   Auto_Buso = true,
   Auto_Ken = true
}

_G.Check_Save_Setting = "CheckSaveSetting"

getgenv()['JsonEncode'] = function(msg)
    return game:GetService("HttpService"):JSONEncode(msg)
end
getgenv()['JsonDecode'] = function(msg)
    return game:GetService("HttpService"):JSONDecode(msg)
end
getgenv()['Check_Setting'] = function(Name)
    if not _G.Dis and not isfolder('Play Back X Hub') then
        makefolder('Play Back X Hub')
    end
    if not _G.Dis and not isfile('Play Back X Hub/'..Name..'.json') then
        writefile('Play Back X Hub/'..Name..'.json',JsonEncode(_G.Setting_table))
    end
end
getgenv()['Get_Setting'] = function(Name)
    if not _G.Dis and isfolder('Play Back X Hub') and isfile('Play Back X Hub/'..Name..'.json') then
        _G.Setting_table = JsonDecode(readfile('Play Back X Hub/'..Name..'.json'))
        return _G.Setting_table
	elseif not _G.Dis then
        Check_Setting(Name)
    end
end
getgenv()['Update_Setting'] = function(Name)
    if not _G.Dis and isfolder('Play Back X Hub') and isfile('Play Back X Hub/'..Name..'.json') then
        writefile('Play Back X Hub/'..Name..'.json',JsonEncode(_G.Setting_table))
	elseif not _G.Dis then
        Check_Setting(Name)
    end
end

Check_Setting(_G.Check_Save_Setting)
Get_Setting(_G.Check_Save_Setting)

if _G.Setting_table.Save_Member then
	getgenv()['MyName'] = game.Players.LocalPlayer.Name
	print("Save Member")
elseif _G.Setting_table.Save_All_Member then
	getgenv()['MyName'] = "AllMember"
	print("Save All Member")
else
	getgenv()['MyName'] = "None"
	_G.Dis = true
end

Check_Setting(getgenv()['MyName'])
Get_Setting(getgenv()['MyName'])

_G.Setting_table.Key = _G.wl_key
Update_Setting(getgenv()['MyName'])

if type(_G.Setting_table.Weapon) ~= 'string' then
	for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if tostring(v2.ToolTip) == "Melee" then
			_G.Setting_table.Weapon = v2.Name
		end
	end
end


function Text(value)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Playback X Hub 4.0 ", 
        Text = tostring(value),
        Icon = "http://www.roblox.com/asset/?id=10729012702",
        Duration = 10
    })
end
function Com()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Playback X Hub 4.0 ", 
        Text = "✅  Complete",
        Icon = "http://www.roblox.com/asset/?id=10729012702",
        Duration = 5
    })
end

_G.Color = Color3.fromRGB(255,0,0)
repeat wait(1) until game:IsLoaded()

IKAI = true
if IKAI then
	do
		local ui = game.CoreGui:FindFirstChild("RippleHUBLIB")
		if ui then
			ui:Destroy()
		end
	end
	
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local tween = game:GetService("TweenService")
	local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
	local LogoButton = ("7040391851")
	local LogoUi = ("10729012702")
	
	
	local function Tween(instance, properties,style,wa)
		if style == nil or "" then
			return Back
		end
		tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
	end
	
	local ActualTypes = {
		RoundFrame = "ImageLabel",
		Shadow = "ImageLabel",
		Circle = "ImageLabel",
		CircleButton = "ImageButton",
		Frame = "Frame",
		Label = "TextLabel",
		Button = "TextButton",
		SmoothButton = "ImageButton",
		Box = "TextBox",
		ScrollingFrame = "ScrollingFrame",
		Menu = "ImageButton",
		NavBar = "ImageButton"
	}
	
	local Properties = {
		RoundFrame = {
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5554237731",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3,3,297,297)
		},
		SmoothButton = {
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5554237731",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3,3,297,297)
		},
		Shadow = {
			Name = "Shadow",
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5554236805",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(23,23,277,277),
			Size = UDim2.fromScale(1,1) + UDim2.fromOffset(30,30),
			Position = UDim2.fromOffset(-15,-15)
		},
		Circle = {
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5554831670"
		},
		CircleButton = {
			BackgroundTransparency = 1,
			AutoButtonColor = false,
			Image = "http://www.roblox.com/asset/?id=5554831670"
		},
		Frame = {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1,1)
		},
		Label = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(5,0),
			Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left
		},
		Button = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(5,0),
			Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left
		},
		Box = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(5,0),
			Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left
		},
		ScrollingFrame = {
			BackgroundTransparency = 1,
			ScrollBarThickness = 0,
			CanvasSize = UDim2.fromScale(0,0),
			Size = UDim2.fromScale(1,1)
		},
		Menu = {
			Name = "More",
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5555108481",
			Size = UDim2.fromOffset(20,20),
			Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(25,10)
		},
		NavBar = {
			Name = "SheetToggle",
			Image = "http://www.roblox.com/asset/?id=5576439039",
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(20,20),
			Position = UDim2.fromOffset(5,5),
			AutoButtonColor = false
		}
	}
	
	local Types = {
		"RoundFrame",
		"Shadow",
		"Circle",
		"CircleButton",
		"Frame",
		"Label",
		"Button",
		"SmoothButton",
		"Box",
		"ScrollingFrame",
		"Menu",
		"NavBar"
	}
	
	function FindType(String)
		for _, Type in next, Types do
			if Type:sub(1, #String):lower() == String:lower() then
				return Type
			end
		end
		return false
	end
	
	local Objects = {}
	
	function Objects.new(Type)
		local TargetType = FindType(Type)
		if TargetType then
			local NewImage = Instance.new(ActualTypes[TargetType])
			if Properties[TargetType] then
				for Property, Value in next, Properties[TargetType] do
					NewImage[Property] = Value
				end
			end
			return NewImage
		else
			return Instance.new(Type)
		end
	end
	
	local function GetXY(GuiObject)
		local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
		local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
		return Px/Max, Py/May
	end
	
	local function CircleAnim(GuiObject, EndColour, StartColour)
		local PX, PY = GetXY(GuiObject)
		local Circle = Objects.new("Circle")
		Circle.Size = UDim2.fromScale(0,0)
		Circle.Position = UDim2.fromScale(PX,PY)
		Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
		Circle.ZIndex = 200
		Circle.Parent = GuiObject
		local Size = GuiObject.AbsoluteSize.X
		TweenService:Create(Circle, TweenInfo.new(0.5), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
		spawn(function()
			wait(0.5)
			Circle:Destroy()
		end)
	end
	
	
	local function MakeDraggable(topbarobject, object)
		local Dragging = nil
		local DragInput = nil
		local DragStart = nil
		local StartPosition = nil
	
		local function Update(input)
			local Delta = input.Position - DragStart
			local pos =
				UDim2.new(
					StartPosition.X.Scale,
					StartPosition.X.Offset + Delta.X,
					StartPosition.Y.Scale,
					StartPosition.Y.Offset + Delta.Y
				)
			local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
			Tween:Play()
		end
	
		topbarobject.InputBegan:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					Dragging = true
					DragStart = input.Position
					StartPosition = object.Position
	
					input.Changed:Connect(
						function()
							if input.UserInputState == Enum.UserInputState.End then
								Dragging = false
							end
						end
					)
				end
			end
		)
	
		topbarobject.InputChanged:Connect(
			function(input)
				if
					input.UserInputType == Enum.UserInputType.MouseMovement or
					input.UserInputType == Enum.UserInputType.Touch
				then
					DragInput = input
				end
			end
		)
	
		UserInputService.InputChanged:Connect(
			function(input)
				if input == DragInput and Dragging then
					Update(input)
				end
			end
		)
	end
	
	library = {}
	
	function library:Window(text,text2,text3,logo,keybind)
		local uihide = false
		local abc = false
		local logo = logo or 0
		local currentpage = ""
		local keybind = keybind or Enum.KeyCode.RightControl
		local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
		
		local RippleHUBLIB = Instance.new("ScreenGui")
		RippleHUBLIB.Name = "RippleHUBLIB"
		RippleHUBLIB.Parent = game.CoreGui
		RippleHUBLIB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
		local Main = Instance.new("Frame")
		Main.Name = "Main"
		Main.Parent = RippleHUBLIB
		Main.ClipsDescendants = true
		Main.AnchorPoint = Vector2.new(0.5,0.5)
		Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Main.Position = UDim2.new(0.5, 0, 0.5, 0)
		Main.Size = UDim2.new(0, 0, 0, 0)
		
		Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.4,true)
	
		local MCNR = Instance.new("UICorner")
		MCNR.Name = "MCNR"
		MCNR.Parent = Main
	
	
		local Top = Instance.new("Frame")
		Top.Name = "Top"
		Top.Parent = Main
		Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Top.Size = UDim2.new(0, 656, 0, 27)
	
		local TCNR = Instance.new("UICorner")
		TCNR.Name = "TCNR"
		TCNR.Parent = Top
	
		local Logo = Instance.new("ImageLabel")
		Logo.Name = "Logo"
		Logo.Parent = Top
		Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Logo.BackgroundTransparency = 1.000
		Logo.Position = UDim2.new(0, 14, 0, 2)
		Logo.Size = UDim2.new(0, 23, 0, 23)
		Logo.Image = "rbxassetid://"..tostring(logo)
	
		local Name = Instance.new("TextLabel")
		Name.Name = "Name"
		Name.Parent = Top
		Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Name.BackgroundTransparency = 1.000
		Name.Position = UDim2.new(0.0609756112, 5, 0, 0.5)
		Name.Size = UDim2.new(0, 61, 0, 27)
		Name.Font = Enum.Font.GothamSemibold
		Name.Text = text
		Name.TextColor3 = Color3.fromRGB(225, 225, 225)
		Name.TextSize = 16.000
	
		local Hub = Instance.new("TextLabel")
		Hub.Name = "Hub"
		Hub.Parent = Top
		Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Hub.BackgroundTransparency = 1.000
		Hub.Position = UDim2.new(0, 105, 0, 0.5)
		Hub.Size = UDim2.new(0, 81, 0, 27)
		Hub.Font = Enum.Font.GothamSemibold
		Hub.Text = text2
		Hub.TextColor3 = _G.Color
		Hub.TextSize = 16.000
		Hub.TextXAlignment = Enum.TextXAlignment.Left
	
		local Ver = Instance.new("TextLabel")
		Ver.Name = "Ver"
		Ver.Parent = Top
		Ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Ver.BackgroundTransparency = 1.000
		Ver.Position = UDim2.new(0.847561002, 0, 0, 1)
		Ver.Size = UDim2.new(0, 47, 0, 27)
		Ver.Font = Enum.Font.GothamSemibold
		Ver.Text = text3
		Ver.TextColor3 = _G.Color
		Ver.TextSize = 15.000
	
	
		local BindButton = Instance.new("TextButton")
		BindButton.Name = "BindButton"
		BindButton.Parent = Top
		BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		BindButton.BackgroundTransparency = 1.000
		BindButton.Position = UDim2.new(0.227561002, 0, 0, 1)
		BindButton.Size = UDim2.new(0, 100, 0, 27)
		BindButton.Font = Enum.Font.GothamSemibold
		BindButton.Text = "                        [ "..string.gsub(tostring(keybind),"Enum.KeyCode.","").." ]"
		BindButton.TextColor3 = Color3.fromRGB(100, 100, 100)
		BindButton.TextSize = 11.000
		
		BindButton.MouseButton1Click:Connect(function ()
			BindButton.Text = "                        [ ... ]"
			local inputwait = game:GetService("UserInputService").InputBegan:wait()
			local shiba = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode
	
			if shiba.Name ~= "Focus" and shiba.Name ~= "MouseMovement" then
				BindButton.Text = "                        [ "..shiba.Name.." ]"
				yoo = shiba.Name
			end
		end)
	
		do  local ui =  game:GetService("CoreGui"):FindFirstChild("Ripple")  if ui then ui:Destroy() end end
	
	
		local Luna = Instance.new("ScreenGui")
		local ToggleFrameUi = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local ToggleImgUi = Instance.new("ImageLabel")
		local Uitoggle = Instance.new("TextLabel")
		local Yedhee = Instance.new("TextLabel")
		local SearchStroke = Instance.new("UIStroke")
		
		
		Luna.Name = "Ripple"
		Luna.Parent = game.CoreGui
		Luna.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		
		ToggleFrameUi.Name = "ToggleFrameUi"
		ToggleFrameUi.Parent = Luna
		ToggleFrameUi.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		ToggleFrameUi.Position = UDim2.new(0.883, -60,0.282, 0)
		ToggleFrameUi.Size = UDim2.new(0, 198, 0, 48)
		
		SearchStroke.Thickness = 1
		SearchStroke.Name = ""
		SearchStroke.Parent = ToggleFrameUi
		SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
		SearchStroke.Color = _G.Color
		SearchStroke.Transparency = 0
		
		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = ToggleFrameUi
		
		ToggleImgUi.Name = "ToggleImgUi"
		ToggleImgUi.Parent = ToggleFrameUi
		ToggleImgUi.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
		ToggleImgUi.BackgroundTransparency = 1
		ToggleImgUi.Position = UDim2.new(0.0454545468, 0, 0.125000313, 0)
		ToggleImgUi.Size = UDim2.new(0, 35, 0, 35)
		ToggleImgUi.Image = "rbxassetid://"..LogoUi
		-- http://www.roblox.com/asset/?id=9605991378
		Uitoggle.Name = "Uitoggle"
		Uitoggle.Parent = ToggleFrameUi
		Uitoggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Uitoggle.BackgroundTransparency = 1.000
		Uitoggle.Position = UDim2.new(0.25757575, 0, 0, 0)
		Uitoggle.Size = UDim2.new(0, 137, 0, 25)
		Uitoggle.Font = Enum.Font.GothamSemibold
		Uitoggle.Text = "Ui Toggle :"
		Uitoggle.TextColor3 = Color3.fromRGB(255, 255, 255)
		Uitoggle.TextSize = 12.000
		
		Yedhee.Name = "Yedhee"
		Yedhee.Parent = ToggleFrameUi
		Yedhee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Yedhee.BackgroundTransparency = 1.000
		Yedhee.Position = UDim2.new(0.25757575, 0, 0.479166657, 0)
		Yedhee.Size = UDim2.new(0, 137, 0, 25)
		Yedhee.Font = Enum.Font.GothamSemibold
		Yedhee.Text = "Lable"
		Yedhee.TextColor3 = Color3.fromRGB(255, 255, 255)
		Yedhee.TextSize = 12.000
		spawn(function()
			while wait() do
				Yedhee.Text = '['..yoo..']'
			end
		end)
	
	do  local ui =  game:GetService("CoreGui"):FindFirstChild("RippleFPS")  if ui then ui:Destroy() end end

local RippleFPS = Instance.new("ScreenGui")
local Framefps = Instance.new("Frame")
local UICorner213 = Instance.new("UICorner")
local TextLabelfps = Instance.new("TextLabel")
local ImageLabelfps = Instance.new("ImageLabel")
local Strokefps = Instance.new("UIStroke")

RippleFPS.Name = "RippleFPS"
RippleFPS.Parent = game.CoreGui
RippleFPS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Framefps.Name = "Framefps"
Framefps.Parent = RippleFPS
Framefps.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Framefps.BorderSizePixel = 0
Framefps.Position = UDim2.new(0.0329429209, 0, 0.11084006, 0)
Framefps.Size = UDim2.new(0, 193, 0, 44)

UICorner213.CornerRadius = UDim.new(0, 4)
UICorner213.Parent = Framefps

Strokefps.Thickness = 1
Strokefps.Name = ""
Strokefps.Parent = Framefps
Strokefps.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Strokefps.LineJoinMode = Enum.LineJoinMode.Round
Strokefps.Color = Color3.fromRGB(255,0,0)
Strokefps.Transparency = 0

TextLabelfps.Name = "TextLabelfps"
TextLabelfps.Parent = Framefps
TextLabelfps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabelfps.BackgroundTransparency = 1.000
TextLabelfps.Position = UDim2.new(0.356857866, 0, 0.234848887, 0)
TextLabelfps.Size = UDim2.new(0, 124, 0, 23)
TextLabelfps.Font = Enum.Font.GothamSemibold
TextLabelfps.Text = "FPS:N/A"
TextLabelfps.TextColor3 = Color3.fromRGB(255,255,255)
TextLabelfps.TextSize = 14.000
TextLabelfps.TextXAlignment = Enum.TextXAlignment.Left

spawn(function()
	while wait() do
		pcall(function()
			TextLabelfps.Text = "FPS:"..workspace:GetRealPhysicsFPS()
		end)
	end
end)

ImageLabelfps.Name = "ImageLabelfps"
ImageLabelfps.Parent = Framefps
ImageLabelfps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabelfps.BackgroundTransparency = 1.000
ImageLabelfps.Position = UDim2.new(0.113989636, 0, 0.204545856, 0)
ImageLabelfps.Size = UDim2.new(0, 25, 0, 25)
ImageLabelfps.Image = "rbxassetid://"..LogoUi


Framefps.MouseEnter:Connect(function()
	TweenService:Create(
		Framefps,
		TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
		Strokefps,
		TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{Transparency = 1}
	):Play()
	TweenService:Create(
		TextLabelfps,
		TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{TextTransparency = 1}
	):Play()
	TweenService:Create(
		ImageLabelfps,
		TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{ImageTransparency = 1}
	):Play()
end)
Framefps.MouseLeave:Connect(function()
	TweenService:Create(
		Framefps,
		TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{BackgroundTransparency = 0}
	):Play()
	TweenService:Create(
		Strokefps,
		TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{Transparency = 0}
	):Play()
	TweenService:Create(
		TextLabelfps,
		TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{TextTransparency = 0}
	):Play()
	TweenService:Create(
		ImageLabelfps,
		TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{ImageTransparency = 0}
	):Play()
end)



	Yedhee.TextTransparency = 1
	Uitoggle.TextTransparency = 1
	ToggleImgUi.ImageTransparency = 1
	ToggleFrameUi.BackgroundTransparency = 1.000
	SearchStroke.Transparency = 1
	TweenService:Create(
		Framefps,
		TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
		Strokefps,
		TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{Transparency = 1}
	):Play()
	TweenService:Create(
		TextLabelfps,
		TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{TextTransparency = 1}
	):Play()
	TweenService:Create(
		ImageLabelfps,
		TweenInfo.new(0,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
		{ImageTransparency = 1}
	):Play()

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				ToggleFrameUi:TweenSize(UDim2.new(0, 198, 0, 48),"In","Quad",0.2,true)
				game:GetService("TweenService"):Create(
					ToggleFrameUi,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 0}
				):Play()
				Yedhee.TextTransparency = 0
				Uitoggle.TextTransparency = 0
				ToggleImgUi.ImageTransparency = 0
				SearchStroke.Transparency = 0
				wait(.2)
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				ToggleFrameUi:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
				game:GetService("TweenService"):Create(
					ToggleFrameUi,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()
				Yedhee.TextTransparency = 1
				Uitoggle.TextTransparency = 1
				ToggleImgUi.ImageTransparency = 1
				SearchStroke.Transparency = 1
				wait(.2)
				uihide = false
				Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.4,true)
			end
		end
	end)
		MakeDraggable(ToggleFrameUi,ToggleFrameUi)
	
	
	
	
	
		local Tab = Instance.new("Frame")
		Tab.Name = "Tab"
		Tab.Parent = Main
		Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Tab.Position = UDim2.new(0, 5, 0, 30)
		Tab.Size = UDim2.new(0, 150, 0, 265)
	
		local TCNR = Instance.new("UICorner")
		TCNR.Name = "TCNR"
		TCNR.Parent = Tab
	
		local ScrollTab = Instance.new("ScrollingFrame")
		ScrollTab.Name = "ScrollTab"
		ScrollTab.Parent = Tab
		ScrollTab.Active = true
		ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollTab.BackgroundTransparency = 1.000
		ScrollTab.Size = UDim2.new(0, 150, 0, 265)
		ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
		ScrollTab.ScrollBarThickness = 0
	
		local PLL = Instance.new("UIListLayout")
		PLL.Name = "PLL"
		PLL.Parent = ScrollTab
		PLL.SortOrder = Enum.SortOrder.LayoutOrder
		PLL.Padding = UDim.new(0, 15)
	
		local PPD = Instance.new("UIPadding")
		PPD.Name = "PPD"
		PPD.Parent = ScrollTab
		PPD.PaddingLeft = UDim.new(0, 10)
		PPD.PaddingTop = UDim.new(0, 10)
	
		local Page = Instance.new("Frame")
		Page.Name = "Page"
		Page.Parent = Main
		Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Page.Position = UDim2.new(0.245426834, 0, 0, 30)
		Page.Size = UDim2.new(0, 490, 0, 265)
	
		local PCNR = Instance.new("UICorner")
		PCNR.Name = "PCNR"
		PCNR.Parent = Page
	
		local MainPage = Instance.new("Frame")
		MainPage.Name = "MainPage"
		MainPage.Parent = Page
		MainPage.ClipsDescendants = true
		MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MainPage.BackgroundTransparency = 1.000
		MainPage.Size = UDim2.new(0, 490, 0, 365)
	
		local PageList = Instance.new("Folder")
		PageList.Name = "PageList"
		PageList.Parent = MainPage
	
		local UIPageLayout = Instance.new("UIPageLayout")
	
		UIPageLayout.Parent = PageList
		UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
		UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
		UIPageLayout.FillDirection = Enum.FillDirection.Vertical
		UIPageLayout.Padding = UDim.new(0, 15)
		UIPageLayout.TweenTime = 0.400
		UIPageLayout.GamepadInputEnabled = false
		UIPageLayout.ScrollWheelInputEnabled = false
		UIPageLayout.TouchInputEnabled = false
		
		MakeDraggable(Top,Main)
	
		
		local uitab = {}
		
		function uitab:Tab(text,logo1)
			local TabButton = Instance.new("TextButton")
			TabButton.Parent = ScrollTab
			TabButton.Name = text.."Server"
			TabButton.Text = text
			TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TabButton.BackgroundTransparency = 1.000
			TabButton.Size = UDim2.new(0, 130, 0, 23)
			TabButton.Font = Enum.Font.GothamSemibold
			TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
			TabButton.TextSize = 15.000
			TabButton.TextTransparency = 0.500
	
			local IDK = Instance.new("ImageLabel")
			IDK.Name = "LogoIDK"
			IDK.Parent = TabButton
			IDK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			IDK.BackgroundTransparency = 1.000
			IDK.Position = UDim2.new(0, 0, 0, 1)
			IDK.Size = UDim2.new(0, 20, 0, 20)
			IDK.Image = "rbxassetid://"..tostring(logo1)
	
	
			local MainFramePage = Instance.new("ScrollingFrame")
			MainFramePage.Name = text.."_Page"
			MainFramePage.Parent = PageList
			MainFramePage.Active = true
			MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			MainFramePage.BackgroundTransparency = 1.000
			MainFramePage.BorderSizePixel = 0
			MainFramePage.Size = UDim2.new(0, 490, 0, 265)
			MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
			MainFramePage.ScrollBarThickness = 0
			
			local UIPadding = Instance.new("UIPadding")
			local UIListLayout = Instance.new("UIListLayout")
			
			UIPadding.Parent = MainFramePage
			UIPadding.PaddingLeft = UDim.new(0, 10)
			UIPadding.PaddingTop = UDim.new(0, 10)
	
			UIListLayout.Padding = UDim.new(0,15)
			UIListLayout.Parent = MainFramePage
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			
			TabButton.MouseButton1Click:Connect(function()
				for i,v in next, ScrollTab:GetChildren() do
					if v:IsA("TextButton") then
						TweenService:Create(
							v,
							TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{TextTransparency = 0.5}
						):Play()
					end
					TweenService:Create(
						TabButton,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end
				for i,v in next, PageList:GetChildren() do
					currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
					if v.Name == currentpage then
						UIPageLayout:JumpTo(v)
					end
				end
			end)
	
			if abc == false then
				for i,v in next, ScrollTab:GetChildren() do
					if v:IsA("TextButton") then
						TweenService:Create(
							v,
							TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{TextTransparency = 0.5}
						):Play()
					end
					TweenService:Create(
						TabButton,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end
				UIPageLayout:JumpToIndex(1)
				abc = true
			end
			
			game:GetService("RunService").Stepped:Connect(function()
				pcall(function()
					MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
					ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
				end)
			end)
	
			
			local main = {}
			function main:Button(text,callback)
				local Button = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local TextBtn = Instance.new("TextButton")
				local UICorner_2 = Instance.new("UICorner")
				local Black = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local IMGBUTTON = Instance.new("ImageLabel")
				
				Button.Name = "Button"
				Button.Parent = MainFramePage
				Button.BackgroundColor3 = _G.Color
				Button.Size = UDim2.new(0, 470, 0, 31)
				
				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = Button
				
	
				
				TextBtn.Name = "TextBtn"
				TextBtn.Parent = Button
				TextBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				TextBtn.Position = UDim2.new(0, 1, 0, 1)
				TextBtn.Size = UDim2.new(0, 468, 0, 29)
				TextBtn.AutoButtonColor = false
				TextBtn.Font = Enum.Font.GothamSemibold
				TextBtn.Text = text
				TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
				TextBtn.TextSize = 15.000
				TextBtn.ClipsDescendants = true
	
				UICorner_2.CornerRadius = UDim.new(0, 5)
				UICorner_2.Parent = TextBtn
	
				IMGBUTTON.Name = "IconB"
				IMGBUTTON.Parent = TextBtn
				IMGBUTTON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				IMGBUTTON.BackgroundTransparency = 1.000
				IMGBUTTON.Position = UDim2.new(0, 10, 0, 5)
				IMGBUTTON.Size = UDim2.new(0, 20, 0, 20)
				IMGBUTTON.Image = "http://www.roblox.com/asset/?id=9606312215"
	
	
				Black.Name = "Black"
				Black.Parent = Button
				Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Black.BackgroundTransparency = 1.000
				Black.BorderSizePixel = 0
				Black.Position = UDim2.new(0, 1, 0, 1)
				Black.Size = UDim2.new(0, 468, 0, 29)
				
				UICorner_3.CornerRadius = UDim.new(0, 5)
				UICorner_3.Parent = Black
	
				TextBtn.MouseEnter:Connect(function()
					TweenService:Create(
						Black,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundTransparency = 0.7}
					):Play()
				end)
				TextBtn.MouseLeave:Connect(function()
					TweenService:Create(
						Black,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundTransparency = 1}
					):Play()
				end)
				TextBtn.MouseButton1Click:Connect(function()
					CircleAnim(TextBtn, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
					TextBtn.TextSize = 1
					TweenService:Create(
						TextBtn,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextSize = 15}
					):Play()
					callback()
				end)
			end
			function main:Toggle(text,Imgidicon,config,callback)
				config = config or false
				local toggled = config
				local Toggle = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local Button = Instance.new("TextButton")
				local UICorner_2 = Instance.new("UICorner")
				local Label = Instance.new("TextLabel")
				local ToggleImage = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local Circle = Instance.new("Frame")
				local UICorner_4 = Instance.new("UICorner")
				local imgLabelIcon = Instance.new("ImageLabel")
	
	
				Toggle.Name = "Toggle"
				Toggle.Parent = MainFramePage
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 46, 46)
				Toggle.Size = UDim2.new(0, 470, 0, 31)
	
				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = Toggle
	
				Button.Name = "Button"
				Button.Parent = Toggle
				Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				Button.Position = UDim2.new(0, 1, 0, 1)
				Button.Size = UDim2.new(0, 468, 0, 29)
				Button.AutoButtonColor = false
				Button.Font = Enum.Font.SourceSans
				Button.Text = ""
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 11.000
	
				UICorner_2.CornerRadius = UDim.new(0, 5)
				UICorner_2.Parent = Button
	
				Label.Name = "Label"
				Label.Parent = Toggle
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.Position = UDim2.new(0, 1, 0, 1)
				Label.Size = UDim2.new(0, 468, 0, 29)
				Label.Font = Enum.Font.GothamSemibold
				Label.Text = text
				Label.TextColor3 = Color3.fromRGB(225, 225, 225)
				Label.TextSize = 15.000
	
				ToggleImage.Name = "ToggleImage"
				ToggleImage.Parent = Toggle
				ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
				ToggleImage.Position = UDim2.new(0, 415, 0, 5)
				ToggleImage.Size = UDim2.new(0, 45, 0, 20)
	
				UICorner_3.CornerRadius = UDim.new(0, 10)
				UICorner_3.Parent = ToggleImage
	
				Circle.Name = "Circle"
				Circle.Parent = ToggleImage
				Circle.BackgroundColor3 = Color3.fromRGB(255, 46, 46)
				Circle.Position = UDim2.new(0, 2, 0, 2)
				Circle.Size = UDim2.new(0, 16, 0, 16)
	
				UICorner_4.CornerRadius = UDim.new(0, 10)
				UICorner_4.Parent = Circle
	
				imgLabelIcon.Name = "Icon"
				imgLabelIcon.Parent = Toggle
				imgLabelIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				imgLabelIcon.BackgroundTransparency = 1.000
				imgLabelIcon.Position = UDim2.new(0, 10, 0, 5)
				imgLabelIcon.Size = UDim2.new(0, 20, 0, 20)
				imgLabelIcon.Image = "http://www.roblox.com/asset/?id="..Imgidicon
	
				Button.MouseButton1Click:Connect(function()
					if toggled == false then
						toggled = true
						Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
						TweenService:Create(
							Toggle,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{BackgroundColor3 = _G.Color}
						):Play()
						TweenService:Create(
							Circle,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{BackgroundColor3 = _G.Color}
						):Play()
					else
						toggled = false
						Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
						TweenService:Create(
							Toggle,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{BackgroundColor3 = Color3.fromRGB(255, 46, 46)}
						):Play()
						TweenService:Create(
							Circle,
							TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{BackgroundColor3 = Color3.fromRGB(255, 46, 46)}
						):Play()
					end
					pcall(callback,toggled)
				end)
	
				if config == true then
					toggled = true
					Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
					TweenService:Create(
						Toggle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = _G.Color}
					):Play()
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = _G.Color}
					):Play()
					pcall(callback,toggled)
				end
			end
			function main:Dropdown(text,old,option,callback)
				local isdropping = false
				local Dropdown = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local DropTitle = Instance.new("TextLabel")
				local DropScroll = Instance.new("ScrollingFrame")
				local UIListLayout = Instance.new("UIListLayout")
				local UIPadding = Instance.new("UIPadding")
				local DropButton = Instance.new("TextButton")
				local DropImage = Instance.new("ImageLabel")
				
				Dropdown.Name = "Dropdown"
				Dropdown.Parent = MainFramePage
				Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				Dropdown.ClipsDescendants = true
				Dropdown.Size = UDim2.new(0, 470, 0, 31)
				
				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = Dropdown
				
				if type(old) == "string" then
					DropTitle.Name = "DropTitle"
					DropTitle.Parent = Dropdown
					DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DropTitle.BackgroundTransparency = 1.000
					DropTitle.Size = UDim2.new(0, 470, 0, 31)
					DropTitle.Font = Enum.Font.GothamSemibold
					DropTitle.Text = text.. " : "..old
					DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
					DropTitle.TextSize = 15.000
				else
					DropTitle.Name = "DropTitle"
					DropTitle.Parent = Dropdown
					DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DropTitle.BackgroundTransparency = 1.000
					DropTitle.Size = UDim2.new(0, 470, 0, 31)
					DropTitle.Font = Enum.Font.GothamSemibold
					DropTitle.Text = text.. " : "
					DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
					DropTitle.TextSize = 15.000
				end
				
				DropScroll.Name = "DropScroll"
				DropScroll.Parent = DropTitle
				DropScroll.Active = true
				DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropScroll.BackgroundTransparency = 1.000
				DropScroll.BorderSizePixel = 0
				DropScroll.Position = UDim2.new(0, 0, 0, 31)
				DropScroll.Size = UDim2.new(0, 470, 0, 100)
				DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
				DropScroll.ScrollBarThickness = 3
				
				UIListLayout.Parent = DropScroll
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 5)
				
				UIPadding.Parent = DropScroll
				UIPadding.PaddingLeft = UDim.new(0, 5)
				UIPadding.PaddingTop = UDim.new(0, 5)
				
				DropImage.Name = "DropImage"
				DropImage.Parent = Dropdown
				DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropImage.BackgroundTransparency = 1.000
				DropImage.Position = UDim2.new(0, 445, 0, 6)
				DropImage.Rotation = -90
				DropImage.Size = UDim2.new(0, 20, 0, 20)
				DropImage.Image = "rbxassetid://6031090990"
				
				DropButton.Name = "DropButton"
				DropButton.Parent = Dropdown
				DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropButton.BackgroundTransparency = 1.000
				DropButton.Size = UDim2.new(0, 470, 0, 31)
				DropButton.Font = Enum.Font.SourceSans
				DropButton.Text = ""
				DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				DropButton.TextSize = 14.000
	
				for i,v in next,option do
					local Item = Instance.new("TextButton")
	
					Item.Name = "Item"
					Item.Parent = DropScroll
					Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Item.BackgroundTransparency = 1.000
					Item.Size = UDim2.new(0, 460, 0, 26)
					Item.Font = Enum.Font.GothamSemibold
					Item.Text = tostring(v)
					Item.TextColor3 = Color3.fromRGB(225, 225, 225)
					Item.TextSize = 13.000
					Item.TextTransparency = 0.500
					Item.ClipsDescendants = true
	
	
					Item.MouseEnter:Connect(function()
						TweenService:Create(
							Item,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{TextTransparency = 0}
						):Play()
					end)
	
					Item.MouseLeave:Connect(function()
						TweenService:Create(
							Item,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{TextTransparency = 0.5}
						):Play()
					end)
	
					Item.MouseButton1Click:Connect(function()
						CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
						isdropping = false
						Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
						TweenService:Create(
							DropImage,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Rotation = -90}
						):Play()
						DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
						callback(Item.Text)
						DropTitle.Text = text.." : "..Item.Text
					end)
				end
	
				DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
	
				DropButton.MouseButton1Click:Connect(function()
					if isdropping == false then
						isdropping = true
						Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
						TweenService:Create(
							DropImage,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Rotation = 180}
						):Play()
						DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
					else
						isdropping = false
						Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
						TweenService:Create(
							DropImage,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Rotation = -90}
						):Play()
						DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
					end
				end)
	
				local dropfunc = {}
				function dropfunc:Add(t)
					local Item = Instance.new("TextButton")
					Item.Name = "Item"
					Item.Parent = DropScroll
					Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Item.BackgroundTransparency = 1.000
					Item.Size = UDim2.new(0, 470, 0, 26)
					Item.Font = Enum.Font.GothamSemibold
					Item.Text = tostring(t)
					Item.TextColor3 = Color3.fromRGB(225, 225, 225)
					Item.TextSize = 13.000
					Item.TextTransparency = 0.500
					Item.ClipsDescendants = true
	
					Item.MouseEnter:Connect(function()
						TweenService:Create(
							Item,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{TextTransparency = 0}
						):Play()
					end)
	
					Item.MouseLeave:Connect(function()
						TweenService:Create(
							Item,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{TextTransparency = 0.5}
						):Play()
					end)
	
					Item.MouseButton1Click:Connect(function()
						isdropping = false
						CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
						Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
						TweenService:Create(
							DropImage,
							TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
							{Rotation = -90}
						):Play()
						DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
						callback(Item.Text)
						DropTitle.Text = text.." : "..Item.Text
					end)
				end
				
				function dropfunc:Clear()
					DropTitle.Text = tostring(text).." : "
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = -90}
					):Play()
					for i,v in next, DropScroll:GetChildren() do
						if v:IsA("TextButton") then
							v:Destroy()
						end
					end
				end
				return dropfunc
			end
	
			function main:Slider(text,min,max,set,callback)
				local Slider = Instance.new("Frame")
				local slidercorner = Instance.new("UICorner")
				local sliderr = Instance.new("Frame")
				local sliderrcorner = Instance.new("UICorner")
				local SliderLabel = Instance.new("TextLabel")
				local HAHA = Instance.new("Frame")
				local AHEHE = Instance.new("TextButton")
				local bar = Instance.new("Frame")
				local bar1 = Instance.new("Frame")
				local bar1corner = Instance.new("UICorner")
				local barcorner = Instance.new("UICorner")
				local circlebar = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local slidervalue = Instance.new("Frame")
				local valuecorner = Instance.new("UICorner")
				local TextBox = Instance.new("TextBox")
				local UICorner_2 = Instance.new("UICorner")
	
				Slider.Name = "Slider"
				Slider.Parent = MainFramePage
				Slider.BackgroundColor3 = _G.Color
				Slider.BackgroundTransparency = 0
				Slider.Size = UDim2.new(0, 470, 0, 51)
	
				slidercorner.CornerRadius = UDim.new(0, 5)
				slidercorner.Name = "slidercorner"
				slidercorner.Parent = Slider
	
				sliderr.Name = "sliderr"
				sliderr.Parent = Slider
				sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				sliderr.Position = UDim2.new(0, 1, 0, 1)
				sliderr.Size = UDim2.new(0, 468, 0, 49)
	
				sliderrcorner.CornerRadius = UDim.new(0, 5)
				sliderrcorner.Name = "sliderrcorner"
				sliderrcorner.Parent = sliderr
	
				SliderLabel.Name = "SliderLabel"
				SliderLabel.Parent = sliderr
				SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderLabel.BackgroundTransparency = 1.000
				SliderLabel.Position = UDim2.new(0, 15, 0, 0)
				SliderLabel.Size = UDim2.new(0, 180, 0, 26)
				SliderLabel.Font = Enum.Font.GothamSemibold
				SliderLabel.Text = text
				SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
				SliderLabel.TextSize = 16.000
				SliderLabel.TextTransparency = 0
				SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
	
				HAHA.Name = "HAHA"
				HAHA.Parent = sliderr
				HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				HAHA.BackgroundTransparency = 1.000
				HAHA.Size = UDim2.new(0, 468, 0, 29)
	
				AHEHE.Name = "AHEHE"
				AHEHE.Parent = sliderr
				AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				AHEHE.BackgroundTransparency = 1.000
				AHEHE.Position = UDim2.new(0, 10, 0, 35)
				AHEHE.Size = UDim2.new(0, 448, 0, 5)
				AHEHE.Font = Enum.Font.SourceSans
				AHEHE.Text = ""
				AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
				AHEHE.TextSize = 14.000
	
				bar.Name = "bar"
				bar.Parent = AHEHE
				bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				bar.Size = UDim2.new(0, 448, 0, 5)
	
				bar1.Name = "bar1"
				bar1.Parent = bar
				bar1.BackgroundColor3 = _G.Color
				bar1.BackgroundTransparency = 0
				bar1.Size = UDim2.new(set/max, 0, 0, 5)
	
				bar1corner.CornerRadius = UDim.new(0, 5)
				bar1corner.Name = "bar1corner"
				bar1corner.Parent = bar1
	
				barcorner.CornerRadius = UDim.new(0, 5)
				barcorner.Name = "barcorner"
				barcorner.Parent = bar
	
				circlebar.Name = "circlebar"
				circlebar.Parent = bar1
				circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
				circlebar.Position = UDim2.new(1, -2, 0, -3)
				circlebar.Size = UDim2.new(0, 10, 0, 10)
	
				UICorner.CornerRadius = UDim.new(0, 100)
				UICorner.Parent = circlebar
	
				slidervalue.Name = "slidervalue"
				slidervalue.Parent = sliderr
				slidervalue.BackgroundColor3 = _G.Color
				slidervalue.BackgroundTransparency = 0
				slidervalue.Position = UDim2.new(0, 395, 0, 5)
				slidervalue.Size = UDim2.new(0, 65, 0, 18)
	
				valuecorner.CornerRadius = UDim.new(0, 5)
				valuecorner.Name = "valuecorner"
				valuecorner.Parent = slidervalue
	
				TextBox.Parent = slidervalue
				TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				TextBox.Position = UDim2.new(0, 1, 0, 1)
				TextBox.Size = UDim2.new(0, 63, 0, 16)
				TextBox.Font = Enum.Font.GothamSemibold
				TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
				TextBox.TextSize = 9.000
				TextBox.Text = set
				TextBox.TextTransparency = 0
	
				UICorner_2.CornerRadius = UDim.new(0, 5)
				UICorner_2.Parent = TextBox
	
				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")
	
				if Value == nil then
					Value = set
					pcall(function()
						callback(Value)
					end)
				end
				
				AHEHE.MouseButton1Down:Connect(function()
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
					pcall(function()
						callback(Value)
					end)
					TweenService:Create(
						bar1,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					--bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
					TweenService:Create(
						circlebar,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Position =  UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					--circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
					moveconnection = mouse.Move:Connect(function()
						TextBox.Text = Value
						Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						TweenService:Create(
							bar1,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						--bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
						TweenService:Create(
							circlebar,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Position =  UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						--circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
					end)
					releaseconnection = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
							pcall(function()
								callback(Value)
							end)
							TweenService:Create(
								bar1,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)} -- UDim2.new(0, 128, 0, 25)
							):Play()
							--bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
							TweenService:Create(
								circlebar,
								TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Position =  UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)} -- UDim2.new(0, 128, 0, 25)
							):Play()
							--circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
						TextBox.Text = Value
					end
				end)
	
				TextBox.FocusLost:Connect(function()
					if tonumber(TextBox.Text) > max then
						TextBox.Text  = max
					end
					bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
					circlebar.Position = UDim2.new(1, -2, 0, -3)
					TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
					pcall(callback, TextBox.Text)
				end)
			end
	
			function main:Textbox(text,disappear,callback)
				local Textbox = Instance.new("Frame")
				local TextboxCorner = Instance.new("UICorner")
				local Textboxx = Instance.new("Frame")
				local TextboxxCorner = Instance.new("UICorner")
				local TextboxLabel = Instance.new("TextLabel")
				local txtbtn = Instance.new("TextButton")
				local RealTextbox = Instance.new("TextBox")
				local UICorner = Instance.new("UICorner")
	
				Textbox.Name = "Textbox"
				Textbox.Parent = MainFramePage
				Textbox.BackgroundColor3 = _G.Color
				Textbox.BackgroundTransparency = 0
				Textbox.Size = UDim2.new(0, 470, 0, 31)
	
				TextboxCorner.CornerRadius = UDim.new(0, 5)
				TextboxCorner.Name = "TextboxCorner"
				TextboxCorner.Parent = Textbox
	
				Textboxx.Name = "Textboxx"
				Textboxx.Parent = Textbox
				Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				Textboxx.Position = UDim2.new(0, 1, 0, 1)
				Textboxx.Size = UDim2.new(0, 468, 0, 29)
	
				TextboxxCorner.CornerRadius = UDim.new(0, 5)
				TextboxxCorner.Name = "TextboxxCorner"
				TextboxxCorner.Parent = Textboxx
	
				TextboxLabel.Name = "TextboxLabel"
				TextboxLabel.Parent = Textbox
				TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextboxLabel.BackgroundTransparency = 1.000
				TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
				TextboxLabel.Text = text
				TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
				TextboxLabel.Font = Enum.Font.GothamSemibold
				TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
				TextboxLabel.TextSize = 16.000
				TextboxLabel.TextTransparency = 0
				TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left
	
				txtbtn.Name = "txtbtn"
				txtbtn.Parent = Textbox
				txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				txtbtn.BackgroundTransparency = 1.000
				txtbtn.Position = UDim2.new(0, 1, 0, 1)
				txtbtn.Size = UDim2.new(0, 468, 0, 29)
				txtbtn.Font = Enum.Font.SourceSans
				txtbtn.Text = ""
				txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
				txtbtn.TextSize = 14.000
	
				RealTextbox.Name = "RealTextbox"
				RealTextbox.Parent = Textbox
				RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				RealTextbox.BackgroundTransparency = 0
				RealTextbox.Position = UDim2.new(0, 360, 0, 4)
				RealTextbox.Size = UDim2.new(0, 100, 0, 24)
				RealTextbox.Font = Enum.Font.GothamSemibold
				RealTextbox.Text = ""
				RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
				RealTextbox.TextSize = 11.000
				RealTextbox.TextTransparency = 0
	
				RealTextbox.FocusLost:Connect(function()
					callback(RealTextbox.Text)
					if disappear then
						RealTextbox.Text = ""
					end
				end)
	
				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = RealTextbox
			end
			function main:Label(text)
				local Label = Instance.new("TextLabel")
				local PaddingLabel = Instance.new("UIPadding")
				local labell = {}
		
				Label.Name = "Label"
				Label.Parent = MainFramePage
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.Size = UDim2.new(0, 470, 0, 20)
				Label.Font = Enum.Font.GothamSemibold
				Label.TextColor3 = Color3.fromRGB(225, 225, 225)
				Label.TextSize = 16.000
				Label.Text = text
				Label.TextXAlignment = Enum.TextXAlignment.Left
	
				PaddingLabel.PaddingLeft = UDim.new(0,0)
				PaddingLabel.Parent = Label
				PaddingLabel.Name = "PaddingLabel"
		
				function labell:Set(newtext)
					Label.Text = newtext
				end
	
				return labell
			end
			function main:LabelP(text)
				local Label = Instance.new("TextLabel")
				local PaddingLabel = Instance.new("UIPadding")
				local labell = {}
		
				Label.Name = "Label"
				Label.Parent = MainFramePage
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.Size = UDim2.new(0, 470, 0, 20)
				Label.Font = Enum.Font.GothamSemibold
				Label.TextColor3 = Color3.fromRGB(195, 195, 195)
				Label.TextSize = 15.000
				Label.Text = text
				Label.TextXAlignment = Enum.TextXAlignment.Left
	
				PaddingLabel.PaddingLeft = UDim.new(0,25)
				PaddingLabel.Parent = Label
				PaddingLabel.Name = "PaddingLabel"
		
				function labell:Set(newtext)
					Label.Text = newtext
				end
	
				return labell
			end
			function main:Seperator(text)
				local Seperator = Instance.new("Frame")
				local Sep1 = Instance.new("Frame")
				local Sep2 = Instance.new("TextLabel")
				local Sep3 = Instance.new("Frame")
				
				Seperator.Name = "Seperator"
				Seperator.Parent = MainFramePage
				Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Seperator.BackgroundTransparency = 1.000
				Seperator.Size = UDim2.new(0, 470, 0, 20)
				
				Sep1.Name = "Sep1"
				Sep1.Parent = Seperator
				Sep1.BackgroundColor3 = _G.Color
				Sep1.BorderSizePixel = 0
				Sep1.Position = UDim2.new(0, 0, 0, 10)
				Sep1.Size = UDim2.new(0, 80, 0, 1)
				
				Sep2.Name = "Sep2"
				Sep2.Parent = Seperator
				Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Sep2.BackgroundTransparency = 1.000
				Sep2.Position = UDim2.new(0, 185, 0, 0)
				Sep2.Size = UDim2.new(0, 100, 0, 20)
				Sep2.Font = Enum.Font.GothamSemibold
				Sep2.Text = text
				Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
				Sep2.TextSize = 14.000
				
				Sep3.Name = "Sep3"
				Sep3.Parent = Seperator
				Sep3.BackgroundColor3 = _G.Color
				Sep3.BorderSizePixel = 0
				Sep3.Position = UDim2.new(0, 390, 0, 10)
				Sep3.Size = UDim2.new(0, 80, 0, 1)
			end
	
			function main:Line()
				local Linee = Instance.new("Frame")
				local Line = Instance.new("Frame")
				
				Linee.Name = "Linee"
				Linee.Parent = MainFramePage
				Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Linee.BackgroundTransparency = 1.000
				Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
				Linee.Size = UDim2.new(0, 470, 0, 20)
				
				Line.Name = "Line"
				Line.Parent = Linee
				Line.BackgroundColor3 = _G.Color
				Line.BorderSizePixel = 0
				Line.Position = UDim2.new(0, 0, 0, 10)
				Line.Size = UDim2.new(0, 470, 0, 1)
			end
			return main
		end
		return uitab
	end
end
game.StarterGui:SetCore("SendNotification", {
	Title = "Playback X Hub V4.1", 
	Text = "Playback X Hub V4.1 come with work",
	Icon = "http://www.roblox.com/asset/?id=10729012702",
	Duration = 10
})
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=10729012702"
ImageButton.MouseButton1Down:connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
 game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
UICorner.Parent = ImageButton


local win = library:Window("    PlayBack X ",[[     Hub | BF]],[[Ver:4.1]],"10729012702",Enum.KeyCode.RightControl)
local Tap = win:Tab("Main Farm",[[7040391851]])
local Stats = win:Tab("Stats",[[7040410130]])
local Combat = win:Tab("Combat",[[9606626034]])
local DevilFruit = win:Tab("DevilFruit",[[7044233235]])
local Teleport = win:Tab("Teleport",[[9606628205]])
local Dungeon = win:Tab("Dungeon",[[9606629300]])
local Shop = win:Tab("Shop",[[7294901968]])
local Misc = win:Tab("Misc",[[9606644121]])

HHOP = {
	"1",
	"2",
	"3",
	"5"
}
Tap:Dropdown("Select Fast","mobile",HHOP,function(vu)
    _G.Setting_table.FastAttack_Mode = vu
    Update_Setting(getgenv()['MyName'])
	if _G.Setting_table.FastAttack_Mode == "1" then
		_G.Fast_Delay = 1
	elseif _G.Setting_table.FastAttack_Mode == "2" then
		_G.Fast_Delay = 2
	elseif _G.Setting_table.FastAttack_Mode == "3" then
		_G.Fast_Delay = 3
	elseif _G.Setting_table.FastAttack_Mode == "5" then
		_G.Fast_Delay = 5
	end
end)
if _G.Setting_table.FastAttack_Mode == nil then
   _G.Setting_table.FastAttack_Mode = "5"
end

Tap:Toggle("FastAttack","6022668898",_G.Setting_table.FastAttack,function(t)
      FastAttack = t
      _G.Setting_table.FastAttack = t
     Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("BringMonster","6022668898",_G.Setting_table.BringMonster,function(t)
      BringMonster = t
      _G.Setting_table.BringMonster = t
     Update_Setting(getgenv()['MyName'])
end)

FarmMod = {
	"Normal",
	"No Tween Quet"
}

Tap:Dropdown("Select ModFarm","nil",FarmMod,function(vu)
    _G.Setting_table.SelectModFarm = vu
	Update_Setting(getgenv()['MyName'])
end)

if _G.Setting_table.SelectModFarm == nil then
  _G.Setting_table.SelectModFarm = "nil"
end

if type(_G.Setting_table.SelectModFarm) == 'string' then
else
	_G.Setting_table.SelectModFarm = ""
end

Tap:Toggle("AutoFarm","6022668898",_G.Setting_table.FarmLevel,function(t)
      FarmLevel = t
      _G.Setting_table.FarmLevel = t
     Update_Setting(getgenv()['MyName'])
end)

Waspon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Waspon ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Waspon ,v.Name)
    end
end
if type(_G.Setting_table.Weapon) == 'string' then
else
	_G.Setting_table.Weapon = ""
end
local SelectWeapona = Tap:Dropdown("Select Weapon",_G.Setting_table.Weapon,Waspon,function(vu)
	_G.Setting_table.Weapon = vu
	Update_Setting(getgenv()['MyName'])
end)

Tap:Button("Refresh Weapon",function(vu)
    SelectWeapona:Clear()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then
			SelectWeapona:Add(v.Name)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			SelectWeapona:Add(v.Name)
		end
	end
end)

Tap:Seperator("FarmMastery")

Tap:Toggle("Auto Farm FruitMastery","6022668898",_G.Setting_table.AutoFarmMastery,function(t)
       AutoFarmMastery = t
      _G.Setting_table.AutoFarmMastery = t
     Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("Auto Farm MasteryGun","6022668898",_G.Setting_table.AutoFarmMasteryGun,function(t)
       AutoFarmMasteryGun = t
      _G.Setting_table.AutoFarmMasteryGun = t
     Update_Setting(getgenv()['MyName'])
end)

_G.KillAt = 70
Tap:Slider("Select HealthMon",1,100,70,function(value)
    _G.KillAt = value
end)

task.spawn(function()
    while task.wait() do
        if AutoFarmMastery then
            pcall(function()
                topos(CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name =="Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.KillAt/100 then
                            	EquipWapon(game.Players.LocalPlayer.Data.DevilFruit.Valuea)
                            	topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            	UseSkill = true
                            else
                            	UseSkill = false
                                EquipWapon(_G.Setting_table.Weapon)
                                StartAutoFarmMastery = true
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
							end
                            until not AutoFarmMastery or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if AutoFarmMasteryGun then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then
                            SelectGun = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if AutoFarmMasteryGun then
                CheckQuest()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == Mon then
                        if v:FindFirstChild("HumanoidRootPart") then
                            repeat task.wait()
                                if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.KillAt/100 then
                                    EquipWapon(SelectGun)
                                    game:GetService("Players").LocalPlayer.Character[SelectGun].RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart.Position,v.HumanoidRootPart)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                else
                                    EquipWapon(_G.Setting_table.Weapon)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                end
                            until not AutoFarmMasteryGun or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)


Tap:Seperator("FarmMastery Setting")
 
 Tap:Toggle("SkillZ","6022668898",_G.Setting_table.SkillZ,function(t)
       _G.SkillZ = t
      _G.Setting_table.SkillZ = t
     Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("SkillX","6022668898",_G.Setting_table.SkillX,function(t)
       _G.SkillX = t
      _G.Setting_table.SkillX = t
     Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("SkillC","6022668898",_G.Setting_table.SkillC,function(t)
       _G.SkillC = t
      _G.Setting_table.SkillC = t
     Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("SkillZ","6022668898",_G.Setting_table.SkillZ,function(t)
       _G.SkillZ = t
      _G.Setting_table.SkillZ = t
     Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("SkillV","6022668898",_G.Setting_table.SkillV,function(t)
       _G.SkillV = t
      _G.Setting_table.SkillV = t
     Update_Setting(getgenv()['MyName'])
end)
 
spawn(function()
    while task.wait() do
        pcall(function()
            if UseSkill then
                if _G.SkillZ then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                end
                if _G.SkillX then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                end
                if _G.SkillC then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                end
                if _G.SkillV then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                end
            end
        end)
    end
end)

Tap:Seperator("ChestFarm")

Tap:Toggle("AutoChestFarm","6022668898",_G.Setting_table.Chest_Farm,function(t)
       Chest_Farm = t
      _G.Setting_table.Chest_Farm = t
     Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("AutoChestTween","6022668898",_G.Setting_table.Chest_Farm,function(t)
       AutoFarmChest = t
      _G.Setting_table.AutoFarmChest = t
     Update_Setting(getgenv()['MyName'])
end)

Tap:Seperator("Factory")
Tap:Toggle("AutoFactory","6022668898",_G.Setting_table.AutoFactory,function(t)
_G.AutoFactory = t
_G.Setting_table.AutoFactory = t
Update_Setting(getgenv()['MyName'])
end)

Tap:Seperator("the world")

Tap:Toggle("Auto TwoSea","6022668898",_G.Setting_table.AutoSea2,function(t)
_G.AutoSea2 = t
_G.Setting_table.AutoSea2 = t
Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("AutoThirdSea","6022668898",_G.Setting_table.AutoThirdSea,function(t)
_G.AutoThirdSea = t
_G.Setting_table.AutoThirdSea = t
Update_Setting(getgenv()['MyName'])
end)


Tap:Seperator("Lv ExpX2")
local XP = {
        "EXP_5B",
        "Sub2Fer999",
        "JCWK",
        "Starcodeheo",
        "fudd10_v2",
        "FUDD10",
        "BIGNEWS",
        "THEGREATACE",
        "SUB2GAMERROBOT_EXP1",
        "Sub2OfficialNoobie",
        "StrawHatMaine",
        "SUB2NOOBMASTER123",
        "Sub2Daigrock",
        "Axiore",
        "TantaiGaming"
    }
 
 Tap:Slider("LvRedeem",1,2400,1,function(value)
 LvRedeem = value
 end)
 Tap:Toggle("LvRedeem Start","6022668898",_G.Setting_table.LvRedeem2,function(value)
   LvRedeem2 = value
  _G.Setting_table.LvRedeem2 = value
   Update_Setting(getgenv()['MyName'])
spawn(function()
		while wait(.1) do
			if LvRedeem2 then
				if game.Players.localPlayer.Data.Level.Value >= LvRedeem then
					function RedeemCode(value)
                      game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
                     end
                      for i,v in pairs(XP) do
                      RedeemCode(v)
                     end
				end
			end
		end
	end)
end)

Tap:Seperator("Fighting Style")

Tap:Toggle("AutoGodhuman","6022668898",_G.Setting_table.AutoSuperhuman,function(value)
    _G.AutoGodhuman = value
   _G.Setting_table.AutoGodhuman = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("AutoSuperhuman","6022668898",_G.Setting_table.AutoSuperhuman,function(value)
    _G.AutoSuperhuman = value
   _G.Setting_table.AutoSuperhuman = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("AutoDeathStep","6022668898",_G.Setting_table.AutoDeathStep,function(value)
    _G.AutoDeathStep = value
   _G.Setting_table.AutoDeathStep = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("AutoSharkman","6022668898",_G.Setting_table.AutoSharkman,function(value)
    _G.AutoSharkman = value
   _G.Setting_table.AutoSharkman = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("AutoElectricClaw","6022668898",_G.Setting_table.AutoElectricClaw,function(value)
    _G.AutoElectricClaw = value
   _G.Setting_table.AutoElectricClaw = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("AutoDragonTalon","6022668898",_G.Setting_table.AutoDragonTalon,function(value)
    _G.AutoDragonTalon = value
   _G.Setting_table.AutoDragonTalon = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Seperator("Material")

if game.PlaceId == 2753915549 then
Tap:Toggle("AutoMaterialFish[1-3]","6022668898",MaterialFish1,function(t)
MaterialFish1 = t
_G.Part = t
end)

spawn(function()
    while task.wait() do
        if MaterialFish1 then
            pcall(function()
                topos(CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Fishman Warrior [Lv. 375]" or v.Name == "Fishman Commando [Lv. 400]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not MaterialFish1 or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Fishman Warrior [Lv. 375]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Fishman Commando [Lv. 400]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185))
                    end
                end
            end)
        end
    end
end)
end

if game.PlaceId == 7449423635 then
Tap:Toggle("AutoMaterialFish[1-3]","6022668898",MaterialFish2,function(t)
MaterialFish2 = t
_G.Part = t
end)

spawn(function()
    while task.wait() do
        if MaterialFish2 then
            pcall(function()
                topos(CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not MaterialFish2 or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Fishman Raider [Lv. 1775]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Fishman Captain [Lv. 1800]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125))
                    end
                end
            end)
        end
    end
end)
end

if game.PlaceId == 2753915549 then
Tap:Toggle("AutoFarmMagmaOre[1-2]","6022668898",_G.AutoFarmMagmaOre,function(t)
_G.AutoFarmMagmaOre = t
_G.Part = t
end)

spawn(function()
    while task.wait() do
        if _G.AutoFarmMagmaOre then
            pcall(function()
                topos(CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Military Soldier [Lv. 300]" or v.Name == "Military Spy [Lv. 325]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not _G.AutoFarmMagmaOre or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Military Soldier [Lv. 300]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Military Spy [Lv. 325]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984))
                    end
                end
            end)
        end
    end
end)
end

if game.PlaceId == 4442272183 then
Tap:Toggle("AutoFarmMagmaOre[1-2]","6022668898",_G.AutoFarmMagmaOre2,function(t)
_G.AutoFarmMagmaOre2 = t
_G.Part = t
end)

spawn(function()
    while task.wait() do
        if _G.AutoFarmMagmaOre2 then
            pcall(function()
                topos(CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Magma Ninja [Lv. 1175]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not _G.AutoFarmMagmaOre2 or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Magma Ninja [Lv. 1175]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781))
                    end
                end
            end)
        end
    end
end)
end

if game.PlaceId == 4442272183 then
Tap:Toggle("AutoFarmMysticDroplet[2]","6022668898",AutoFarmMysticDroplet,function(t)
AutoFarmMysticDroplet = t
_G.Part = t
end)

spawn(function()
    while task.wait() do
        if AutoFarmMysticDroplet then
            pcall(function()
                topos(CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Water Fighter [Lv. 1450]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not AutoFarmMysticDroplet or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Water Fighter [Lv. 1450]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755))
                    end
                end
            end)
        end
    end
end)
end

if game.PlaceId == 4442272183 then
Tap:Toggle("AutoEctoplasm[2]","6022668898",AutoEctoplasm,function(t)
AutoEctoplasm = t
_G.Part = t
end)

spawn(function()
    while task.wait() do
        if AutoEctoplasm then
            pcall(function()
                topos(CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				for x,y in pairs(EctoMon) do
                    if v.Name == y then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not AutoEctoplasm or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
				end
              end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                for x,y in pairs(EctoMon) do
                    if v.Name == y then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                      else
						Ectoplasm = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
						if AutoEctoplasm and (Ectoplasm.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
						end
						end
                    end
                end
            end)
        end
    end
end)
end

if game.PlaceId == 4442272183 then
Tap:Toggle("AutoVampireFang[2]","6022668898",AutoEctoplasm,function(t)
AutoVampireFang = t
_G.Part = t
end)

spawn(function()
    while task.wait() do
        if AutoVampireFang then
            pcall(function()
                topos(CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Vampire [Lv. 975]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not AutoVampireFang or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Vampire [Lv. 975]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                      else
						topos(CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423))
						end
                end
            end)
        end
    end
end)
end

if game.PlaceId == 7449423635 then
Tap:Toggle("AutoMiniTusk[3]","6022668898",MiniTusk,function(t)
MiniTusk = t
_G.Part = t
end)

spawn(function()
    while task.wait() do
        if MiniTusk then
            pcall(function()
                topos(CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Mythological Pirate [Lv. 1850]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not MiniTusk or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Mythological Pirate [Lv. 1850]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188))
                    end
                end
            end)
        end
    end
end)
end

if game.PlaceId == 2753915549 then
Tap:Toggle("AutoAngelWing[1]","6022668898",AngelWing1,function(t)
AngelWing1 = t
_G.Part = t
end)

spawn(function()
    while task.wait() do
        if AngelWing1 then
            pcall(function()
                topos(CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Royal Squad [Lv. 525]" or v.Name == "Royal Soldier [Lv. 550]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not AngelWing1 or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Royal Squad [Lv. 525]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Royal Soldier [Lv. 550]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823))
						AngelWing = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
						if AngelWing1 and (AngelWing.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
						end
                    end
                end
            end)
        end
    end
end)
end

if game.PlaceId == 4442272183 then
Tap:Toggle("AutoFarmRadioactive[2]","6022668898",_G.AutoFarmMagmaOre2,function(t)
_G.AutoFarmRadioactive = t
end)

spawn(function()
    while task.wait() do
        if _G.AutoFarmRadioactive then
            pcall(function()
                topos(CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Factory Staff [Lv. 800]"then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not _G.AutoFarmRadioactive or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Factory Staff [Lv. 800]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002))
                    end
                end
            end)
        end
    end
end)
end

Tap:Seperator("Bosses")

local Boss = {}

for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
            else
            table.insert(Boss, v.Name)
        end
    end
end

local BossName = Tap:Dropdown("Select Boss","nil",Boss,function(value)
    SelectBoss = value
end)

Tap:Button("Refresh Boss",function()
    BossName:Clear()
        for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.find(v.Name, "Boss") then
            BossName:Add(v.Name) 
        end
    end
end)

Tap:Toggle("Auto Farm Boss","6022668898",_G.Setting_table.AutoFarmBoss,function(value)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    AutoFarmBoss = value
   _G.Setting_table.AutoFarmBoss = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("Auto Farm All Boss","6022668898",_G.Setting_table.AutoAllBoss,function(value)
    AutoAllBoss = value
   _G.Setting_table.AutoAllBoss = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("Auto Farm All Boss Hop","6022668898",_G.Setting_table.AutoAllBossHop,function(value)
    AutoAllBossHop = value
   _G.Setting_table.AutoAllBossHop = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Seperator("world1")

Tap:Toggle("AutoSaber","6022668898",_G.Setting_table.AutoSaber,function(t)
      AutoSaber = t
    _G.Setting_table.AutoSaber = t
     Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("AutoPole","6022668898",_G.Setting_table.AutoPole,function(t)
      AutoPole = t
    _G.Setting_table.AutoPole = t
     Update_Setting(getgenv()['MyName'])
end)
if game.PlaceId == 7449423635 then
Tap:Seperator("BossElitehunter")

local EliteProgress = Tap:Label("")

spawn(function()
    pcall(function()
        while wait() do
            EliteProgress:Set("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
        end
    end)
end)

Tap:Toggle("AutoElitehunter","6022668898",_G.Setting_table.AutoElitehunter,function(t)
    AutoElitehunter = value
   _G.Setting_table.AutoElitehunter = value
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
    Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("AutoElitehunterHop","6022668898",_G.Setting_table.AutoElitehunterHop,function(t)
    AutoElitehunterHop = value
  _G.Setting_table.AutoElitehunterHop = value
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
    Update_Setting(getgenv()['MyName'])
end)
end
if game.PlaceId == 7449423635 then
Tap:Seperator("Dought")

local MobKilled = Tap:Label("Killed")

Tap:Toggle("Auto Dought Boss V1","6022668898",_G.Setting_table.DoughtBossV1,function(value)
	DoughtBossV1 = value
end)

spawn(function()
    while wait() do
        pcall(function()
            if DoughtBossV1 then
               print("กังมากกกกไม่ทำละ")
            end
        end)
    end
end)

Tap:Toggle("Auto Dought Boss V2","6022668898",_G.Setting_table.Auto_Open_Dough_Dungeon,function(value)
    _G.Auto_Open_Dough_Dungeon = value
   _G.Setting_table.Auto_Open_Dough_Dungeon = value
    Update_Setting(getgenv()['MyName'])
end)
end

Tap:Seperator("Buddy Sword")

Tap:Toggle("Auto Buddy Sword","6022668898",_G.Setting_table.AutoBudySword,function(value)
    _G.AutoBudySword = value
   _G.Setting_table.AutoBudySword = value
    Update_Setting(getgenv()['MyName'])
end)

Tap:Toggle("Auto Buddy Sword Hop","6022668898",_G.Setting_table.AutoBudySwordHop,function(value)
    _G.AutoBudySwordHop = value
   _G.Setting_table.AutoBudySwordHop = value
  Update_Setting(getgenv()['MyName'])
end)

Tap:Seperator("Farm Bone")
Tap:Toggle("Auto Farm Bone","6022668898",_G.Setting_table.FarmBone,function(value)
   FarmBone = value
  _G.Setting_table.FarmBone = value
  Update_Setting(getgenv()['MyName'])
end)
Tap:Toggle("RandomBone","6022668898",_G.Setting_table.RandomBone,function(value)
RandomBone = t
_G.Setting_table.RandomBone = t
Update_Setting(getgenv()['MyName'])
end)

Tap:Seperator("NewItem")

Tap:Toggle("AutoDualKatana","6022668898",_G.Setting_table.Auto_Cursed_Dual_Katana,function(value)
Auto_Cursed_Dual_Katana = t
_G.Setting_table.Auto_Cursed_Dual_Katana = t
Update_Setting(getgenv()['MyName'])
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
               print("Nonono")
            end
        end)
    end
end)
	

	Tap:Seperator("Other")
    
    Tap:Toggle("AutoRaceV2","6022668898",_G.Setting_table.AutoRaceV2,function(value)
 	   AutoRaceV2 = value
  	  _G.Setting_table.AutoRaceV2 = value
   	 Update_Setting(getgenv()['MyName'])
    end)
    
    spawn(function()
    while task.wait() do
        pcall(function()
            if AutoRaceV2 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") then
                    topos(game.Workspace["Flower2"].CFrame)
                end
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and Back:FindFirstChild("Flower 2") then
                    topos(game.Workspace["Flower1"].CFrame)
                end
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and Back:FindFirstChild("Flower 1") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Zombie [Lv. 950]" then
                            repeat task.wait()
                                if v:FindFirstChild("HumanoidRootPart") then
                                    EquipWapon(_G.Setting_table.Weapon)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
                                end
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3")
                        end
                    end
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and Back:FindFirstChild("Flower 2") and Back:FindFirstChild("Flower 3") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                end
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Flower1" or v.Name == "Flower2" then
                        v.Size = Vector3.new(50,50,50)
                    end
                end
            end
        end)
    end
end)
    
    Tap:Toggle("LegebdarySword","6022668898",_G.Setting_table.LegebdarySword,function(value)
  		  LegebdarySword = Value    
  		  _G.Setting_table.LegebdarySword = Value    
			while LegebdarySword do wait()
				if LegebdarySword then
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
			Update_Setting(getgenv()['MyName'])
    end)
    
    
    Tap:Toggle("AutoRengoku","6022668898",_G.Setting_table.AutoRengoku,function(value)
 	   _G.AutoRengoku = value
  	  _G.Setting_table.AutoRengoku = value
   	 Update_Setting(getgenv()['MyName'])
    end)
    
    spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoRengoku then
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") then
                    topos(CFrame.new(5733.30615234375, 28.366647720336914, -6400.83837890625))
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Arctic Warrior [Lv. 1350]" or v.Name == "Snow Lurker [Lv. 1375]" then
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    EquipWapon(_G.Setting_table.Weapon)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
                                until not _G.AutoRengoku or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    topos(CFrame.new(6571.9853515625, 297.16973876953125, -6965.3515625))
                end
            end
        end)
    end
end)
    
    Tap:Toggle("AutoBartilo","6022668898",_G.Setting_table.AutoBartilo,function(value)
        _G.AutoBartilo = value
		_G.Setting_table.AutoBartilo = value
        Update_Setting(getgenv()['MyName'])
    end)
    
    spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoBartilo then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledBandits == false then
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Swan Pirate [Lv. 775]" then
                                repeat task.wait()
                                    if v:FindFirstChild("HumanoidRootPart") then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                        EquipWapon(_G.Setting_table.Weapon)
                                        BringBartoil()
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										MonBartilo = v.Name
                                    end
                                until not _G.AutoBartilo
                            end
                        end
                    else
                        topos(CFrame.new(-461.06024169921875, 73.02008056640625, 300.6614074707031))
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-461.06024169921875, 73.02008056640625, 300.6614074707031).Position).Magnitude <= 20 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                        end
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledBandits == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledSpring == false then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                repeat task.wait()
                                    if v:FindFirstChild("HumanoidRootPart") then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                        EquipWapon(_G.Setting_table.Weapon)
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
                                    end
                                until not _G.AutoBartilo
                            end
                        end
                     end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledSpring == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").DidPlates == false then
                        local Plates = game:GetService("Workspace").Map.Dressrosa.BartiloPlates
                        if Plates:FindFirstChild("Plate1").BrickColor ~= BrickColor.new("Olivine") then
                            topos(Plates:FindFirstChild("Plate1").CFrame)
                        elseif Plates:FindFirstChild("Plate2").BrickColor ~= BrickColor.new("Olivine") then
                            topos(Plates:FindFirstChild("Plate2").CFrame)
                        elseif Plates:FindFirstChild("Plate3").BrickColor ~= BrickColor.new("Olivine") then
                            topos(Plates:FindFirstChild("Plate3").CFrame)
                        elseif Plates:FindFirstChild("Plate4").BrickColor ~= BrickColor.new("Olivine") then
                            topos(Plates:FindFirstChild("Plate4").CFrame)
                        elseif Plates:FindFirstChild("Plate5").BrickColor ~= BrickColor.new("Olivine") then
                            topos(Plates:FindFirstChild("Plate5").CFrame)
                        elseif Plates:FindFirstChild("Plate6").BrickColor ~= BrickColor.new("Olivine") then
                            topos(Plates:FindFirstChild("Plate6").CFrame)
                        elseif Plates:FindFirstChild("Plate7").BrickColor ~= BrickColor.new("Olivine") then
                            topos(Plates:FindFirstChild("Plate7").CFrame)
                        elseif Plates:FindFirstChild("Plate8").BrickColor ~= BrickColor.new("Olivine") then
                            topos(Plates:FindFirstChild("Plate8").CFrame)
                        end 
                    end
                end
            end
        end)
    end
end)

function BringBartoil()
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      	  for x,y in pairs(game.Workspace.Enemies:GetChildren()) do
      	      if v.Name == MonBartilo then
         	       v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
      	          v.HumanoidRootPart.Transparency = 0.5
        	        y.HumanoidRootPart.Transparency = 0.5
        	        v.Humanoid.WalkSpeed = 0
      	          y.Humanoid.WalkSpeed = 0
           	     v.Humanoid.JumpPower = 0
        	        y.Humanoid.JumpPower = 0
           	     if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                   end
                     sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
               	 end
    	      end
   	 end
   end
    
    Tap:Toggle("Auto Holy Torch","6022668898",_G.AutoHolyTorch,function(value)
        _G.AutoHolyTorch = value
		_G.Setting_table.AutoHolyTorch = value
        StopTween(_G.AutoHolyTorch)
        Update_Setting(getgenv()['MyName'])
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoHolyTorch then
                pcall(function()
                    wait(1)
                    TP(CFrame.new(-10752, 417, -9366))
                    wait(1)
                    TP(CFrame.new(-11672, 334, -9474))
                    wait(1)
                    TP(CFrame.new(-12132, 521, -10655))
                    wait(1)
                    TP(CFrame.new(-13336, 486, -6985))
                    wait(1)
                    TP(CFrame.new(-13489, 332, -7925))
                end)
            end
        end
    end)
	
----------------------------Auto Stats----------------------------
Stats:Seperator("Auto Stats")

local Pointstat = Stats:Label("Stat Points")

spawn(function()
    while wait() do
        pcall(function()
            Pointstat:Set("Stat Points : "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value))
        end)
    end
end)

Stats:Toggle("Auto Melee","6022668898",_G.Setting_table.Auto_Melee,function(value)
    _G.Auto_Melee = value
   _G.Setting_table.Auto_Melee = value
  Update_Setting(getgenv()['MyName'])
end)

Stats:Toggle("Auto Defense","6022668898",_G.Setting_table.Auto_Defense,function(value)
    _G.Auto_Defense = value
   _G.Setting_table.Auto_Defense = value
  Update_Setting(getgenv()['MyName'])
end)

Stats:Toggle("Auto Sword","6022668898",_G.Setting_table.Auto_Sword,function(value)
    _G.Auto_Sword = value
   _G.Setting_table.Auto_Sword = value
  Update_Setting(getgenv()['MyName'])
end)

Stats:Toggle("Auto Gun","6022668898",_G.Setting_table.Auto_Gun,function(value)
    _G.Auto_Gun = value
   _G.Setting_table.Auto_Gun = value
  Update_Setting(getgenv()['MyName'])
end)

Stats:Toggle("Auto Devil Fruits","6022668898",_G.Setting_table.Auto_DevilFruit,function(value)
    _G.Auto_DevilFruit = value
   _G.Setting_table.Auto_DevilFruit = value
   Update_Setting(getgenv()['MyName'])
end)

_G.PointStats = 1
Stats:Slider("Select Point",1,100,1,function(value)
    _G.PointStats = value
end)



Stats:Seperator("Status")

local locallv = Stats:Label("Level")

spawn(function()
    while wait() do
        pcall(function()
            locallv:Set("Level :".." "..game:GetService("Players").LocalPlayer.Data.Level.Value)
        end)
    end
end)

local localrace = Stats:Label("Race")

spawn(function()
    while wait() do
        pcall(function()
            localrace:Set("Race :".." "..game:GetService("Players").LocalPlayer.Data.Race.Value)
        end)
    end
end)

local localbeli = Stats:Label("Beli")

spawn(function()
    while wait() do
        pcall(function()
            localbeli:Set("Beli :".." "..game:GetService("Players").LocalPlayer.Data.Beli.Value)
        end)
    end
end)

local localfrag = Stats:Label("Fragment")

spawn(function()
    while wait() do
        pcall(function()
            localfrag:Set("Fragments :".." "..game:GetService("Players").LocalPlayer.Data.Fragments.Value)
        end)
    end
end)

local localexp = Stats:Label("ExP")

spawn(function()
    while wait() do
        pcall(function()
            localexp:Set("ExP Points :".." "..game:GetService("Players").LocalPlayer.Data.Exp.Value)
        end)
    end
end)

local localstat = Stats:Label("Stats Points")

spawn(function()
    while wait() do
        pcall(function()
            localstat:Set("Stats Points :".." "..game:GetService("Players").LocalPlayer.Data.Points.Value)
        end)
    end
end)

local localbountyhornor = Stats:Label("Bounty")

spawn(function()
    while wait() do
        pcall(function()
            localbountyhornor:Set("Bounty / Honor :".." "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
        end)
    end
end)

local localDevil = Stats:Label("Devil Fruit")

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                localDevil:Set("Devil Fruit :".." "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
            else
                localDevil:Set("Not Have Devil Fruit")
            end
        end)
    end
end)
----------------------------Combat----------------------------
Combat:Seperator("Combat")
local plyserv = Combat:Label("Players")
spawn(function()
    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if i == 12 then
                    plyserv:Set("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
                elseif i == 1 then
                    plyserv:Set("Player :".." "..i.." ".."/".." ".."12")
                else
                    plyserv:Set("Players :".." "..i.." ".."/".." ".."12")
                end
            end
        end)
    end
end)


Playerslist = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local SelectedPly = Combat:Dropdown("Select Players","nil",Playerslist,function(value)
    SelectedKillPlayer = value
end)

Combat:Button("Refresh Player",function()
    Playerslist = {}
    SelectedPly:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do  
        SelectedPly:Add(v.Name)
    end
end)
Combat:Toggle("Skillaimbot","6022668898",false,function(vu)
    Skillaimbot = vu
		if Skillaimbot then
			if game.Players:FindFirstChild(SelectedKillPlayer) and game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(SelectedKillPlayer).Character.Humanoid.Health > 0 then
				AimBotSkillPosition = game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("HumanoidRootPart").Position
			end
		end
	end)
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(SelectedKillPlayer) then
			tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
			v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
			game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
		end
end)
spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if UseSkillMasteryDevilFruit then
							args[2] = PositionSkillMasteryDevilFruit
							return old(unpack(args))
						elseif Skillaimbot then
							args[2] = AimBotSkillPosition
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)
	
	
Combat:Toggle("Gunaimbot","6022668898",false,function(vu)
Aimbot = vu
		if vu then
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
		end
end)

Combat:Toggle("AutoPlayer + Quest","6022668898",false,function(t)
    _G.AutoP = t
   _G.Setting_table.AutoP = t
   Update_Setting(getgenv()['MyName'])
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoP then
               print("Nonono")
            end
        end)
    end
end)
----------------------------Fruit----------------------------
FruitList = {
        "Bomb-Bomb",
        "Spike-Spike",
        "Chop-Chop",
        "Spring-Spring",
        "Kilo-Kilo",
        "Spin-Spin",
        "Bird: Falcon",
        "Smoke-Smoke",
        "Flame-Flame",
        "Ice-Ice",
        "Sand-Sand",
        "Dark-Dark",
        "Revive-Revive",
        "Diamond-Diamond",
        "Light-Light",
        "Love-Love",
        "Rubber-Rubber",
        "Barrier-Barrier",
        "Magma-Magma",
        "Door-Door",
        "Quake-Quake",
        "Human-Human: Buddha",
        "String-String",
        "Bird-Bird: Phoenix",
        "Rumble-Rumble",
        "Paw-Paw",
        "Gravity-Gravity",
        "Dough-Dough",
        "Venom-Venom",
        "Shadow-Shadow",
        "Control-Control",
        "Soul-Soul",
        "Dragon-Dragon",
        "Leopard-Leopard"
}

DevilFruit:Dropdown("Select DevilFruit","nil",FruitList,function(value)
    _G.Setting_table.Fruit = value
    Update_Setting(getgenv()['MyName'])
end)

DevilFruit:Toggle("Auto Buy Fruit","6022668898",_G.AutoEatFruit,function(value)
   AutoBuyFruit = value
   _G.Setting_table.AutoBuyFruit = value
  Update_Setting(getgenv()['MyName'])
end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if AutoBuyFruit then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.Setting_table.Fruit).EatRemote:InvokeServer()
                end
            end
        end)
    end)
 DevilFruit:Button("Auto Buy Fruit",function()
   game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.Setting_table.Fruit).EatRemote:InvokeServer()
end)
DevilFruit:Toggle("Auto Random Fruit","6022668898",_G.Setting_table.AutoRandomFruit,function(value)
   AutoRandomFruit = value
   _G.Setting_table.AutoRandomFruit = value
  Update_Setting(getgenv()['MyName'])
end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if AutoRandomFruit then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                end 
            end
        end)
    end)
DevilFruit:Toggle("AutoBringFruit","6022668898",_G.Setting_table.BringFruit,function(value)
   _G.BringFruit = value
   _G.Setting_table.BringFruit = value
   Update_Setting(getgenv()['MyName'])
        pcall(function()
            while _G.BringFruit do wait(.1)
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v:IsA("Tool") then
                        local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame				
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
                        v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait(.1)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
                    end
                end
            end
     end)
end)

----------------------------Teleport----------------------------
Teleport:Seperator("World - Monster")

Teleport:Button("Teleport To Old World",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)

Teleport:Button("Teleport To Second Sea",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

Teleport:Button("Teleport To Third Sea",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)


Teleport:Seperator("Island")

if game.PlaceId == 2753915549 then
    Teleport:Dropdown("Select Island","nil",{
        "WindMill",
        "Marine",
        "Middle Town",
        "Jungle",
        "Pirate Village",
        "Desert",
        "Snow Island",
        "MarineFord",
        "Colosseum",
        "Sky Island 1",
        "Sky Island 2",
        "Sky Island 3",
        "Prison",
        "Magma Village",
        "Under Water Island",
        "Fountain City",
        "Shank Room",
        "Mob Island"
        },function(value)
        _G.SelectIsland = value
    end)
end

if game.PlaceId == 4442272183 then
    Teleport:Dropdown("Select Island","nil",{
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island"
        },function(value)
        _G.SelectIsland = value
    end)
end

if game.PlaceId == 7449423635 then
    Teleport:Dropdown("Select Island","nil",{
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky", 
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Noname Island(New)"
        },function(value)
        _G.SelectIsland = value
    end)
end

Teleport:Toggle("Teleport","88",_G.T,function(value)
    _G.TeleportIsland = value
    if _G.TeleportIsland == true then
        repeat wait()
            if _G.SelectIsland == "WindMill" then
                ByPass(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif _G.SelectIsland == "Marine" then
                ByPass(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif _G.SelectIsland == "Middle Town" then
                ByPass(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif _G.SelectIsland == "Jungle" then
                ByPass(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif _G.SelectIsland == "Pirate Village" then
                ByPass(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif _G.SelectIsland == "Desert" then
                ByPass(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif _G.SelectIsland == "Snow Island" then
                ByPass(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            elseif _G.SelectIsland == "MarineFord" then
                ByPass(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif _G.SelectIsland == "Colosseum" then
                ByPass( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            elseif _G.SelectIsland == "Sky Island 1" then
                ByPass(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            elseif _G.SelectIsland == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif _G.SelectIsland == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif _G.SelectIsland == "Prison" then
                ByPass( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif _G.SelectIsland == "Magma Village" then
                ByPass(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif _G.SelectIsland == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.SelectIsland == "Fountain City" then
                ByPass(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif _G.SelectIsland == "Shank Room" then
				ByPass(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
				wait(.1)
                topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif _G.SelectIsland == "Mob Island" then
                topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.SelectIsland == "The Cafe" then
                ByPass(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif _G.SelectIsland == "Frist Spot" then
                topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif _G.SelectIsland == "Dark Area" then
                topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            elseif _G.SelectIsland == "Flamingo Mansion" then
                topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
            elseif _G.SelectIsland == "Flamingo Room" then
                topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
            elseif _G.SelectIsland == "Green Zone" then
                ByPass( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            elseif _G.SelectIsland == "Factory" then
                topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            elseif _G.SelectIsland == "Colossuim" then
                topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif _G.SelectIsland == "Zombie Island" then
                ByPass(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            elseif _G.SelectIsland == "Two Snow Mountain" then
                topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            elseif _G.SelectIsland == "Punk Hazard" then
                ByPass(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            elseif _G.SelectIsland == "Cursed Ship" then
                topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.SelectIsland == "Ice Castle" then
                ByPass(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            elseif _G.SelectIsland == "Forgotten Island" then
                ByPass(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            elseif _G.SelectIsland == "Ussop Island" then
                ByPass(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.SelectIsland == "Mini Sky Island" then
                topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif _G.SelectIsland == "Great Tree" then
                ByPass(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
            elseif _G.SelectIsland == "Castle On The Sea" then
                ByPass(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
            elseif _G.SelectIsland == "MiniSky" then
                topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif _G.SelectIsland == "Port Town" then
                ByPass(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif _G.SelectIsland == "Hydra Island" then
                ByPass(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
            elseif _G.SelectIsland == "Floating Turtle" then
                ByPass(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
            elseif _G.SelectIsland == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
            elseif _G.SelectIsland == "Haunted Castle" then
                ByPass(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif _G.SelectIsland == "Ice Cream Island" then
                ByPass(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            elseif _G.SelectIsland == "Peanut Island" then
                ByPass(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
            elseif _G.SelectIsland == "Cake Island" then
                ByPass(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
             elseif _G.SelectIsland == "Chocolate Island" then
                ByPass(CFrame.new(53.0000267, 58.6640739, -12851.6777, -0.203585744, 0, 0.979057133, 0, 1, 0, -0.979057133, 0, -0.203585744))
            end
        until not _G.TeleportIsland
    end
    StopTween(_G.TeleportIsland)
end)
----------------------------Dungeon----------------------------

if game.PlaceId == 2753915549 then
Dungeon:Line()
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Seperator("Noob")
Dungeon:Line()
end

if game.PlaceId == 7449423635 or game.PlaceId == 4442272183 then
Dungeon:Line()

local TimeRaid = Dungeon:Label("Wait For Dungeon")
    
    spawn(function()
        pcall(function()
            while wait() do
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
                else
                    TimeRaid:Set("Wait For Dungeon")
                end
            end
        end)
    end)
    
      Dungeon:Toggle("AutoDungeon ","6022668898",_G.Setting_table.Auto_Dungeon,function(value)
        _G.Auto_Dungeon = value
       _G.Setting_table.Auto_Dungeon = value
        Update_Setting(getgenv()['MyName'])
    end)
    
    Dungeon:Toggle("Auto Awakener","6022668898",_G.Setting_table.Auto_Awakener,function(value)
        _G.Auto_Awakener = value
       _G.Setting_table.Auto_Awakener = value
	  Update_Setting(getgenv()['MyName'])
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
   
    Dungeon:Dropdown("Select Chips","nil",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough",},function(value)
        _G.SelectChip = value
    end)
    
    Dungeon:Toggle("Auto Select Dungeon","6022668898",_G.Setting_table.AutoSelectDungeon,function(value)
        _G.AutoSelectDungeon = value
       _G.Setting_table.AutoSelectDungeon = value
	Update_Setting(getgenv()['MyName'])
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoSelectDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                        _G.SelectChip = "Flame"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                        _G.SelectChip = "Ice"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                        _G.SelectChip = "Quake"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                        _G.SelectChip = "Light"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                        _G.SelectChip = "Dark"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                        _G.SelectChip = "String"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                        _G.SelectChip = "Rumble"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                        _G.SelectChip = "Magma"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        _G.SelectChip = "Human: Buddha"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                        _G.SelectChip = "Sand"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        _G.SelectChip = "Bird: Phoenix"
                     elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough") then
					     _G.SelectChip = "Dough"
                    else
                        _G.SelectChip = "Flame"
                    end
                end)
            end
        end
    end)
    
    Dungeon:Toggle("Auto Buy Chip","6022668898",_G.Setting_table.AutoBuyChip,function(value)
        _G.AutoBuyChip = value
       _G.Setting_table.AutoBuyChip = value
	Update_Setting(getgenv()['MyName'])
    end)
    
    Dungeon:Button("Buy Chip Select",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
    end)
    
    Dungeon:Toggle("Auto Start Go To Dungeon","6022668898",_G.Setting_table.Auto_StartRaid,function(value)
        _G.Auto_StartRaid = value
       _G.Setting_table.Auto_StartRaid = value
	Update_Setting(getgenv()['MyName'])
    end)
    
    Dungeon:Button("Start Go To Dungeon",function()
        if game.PlaceId == 4442272183 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif game.PlaceId == 7449423635 then
            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end)
    
    Dungeon:Button("Next Island",function()
        pcall(function()
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,70,100))
            end
        end)
    end)
    
    if game.PlaceId == 4442272183 then
        Dungeon:Button("Teleport to Lab",function()
            TP(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            end)
    elseif game.PlaceId == 7449423635 then
        Dungeon:Button("Teleport to Lab",function()
            TP(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end)
    end
    
    if game.PlaceId == 4442272183 then
        Dungeon:Button("Awakening Room",function()
            TP(CFrame.new(266.227783, 1.39509034, 1857.00732))
        end)
    elseif game.PlaceId == 7449423635 then
        Dungeon:Button("Awakening Room",function()
            TP(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
        end)
    end
end
----------------------------Shop----------------------------
Shop:Seperator("Abilities")

Shop:Button("Buy Geppo",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)

Shop:Button("Buy Buso Haki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)

Shop:Button("Buy Soru",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)

Shop:Button("Buy Observation(Ken) Haki",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)

Shop:Seperator("Fighting Style")

Shop:Button("Buy Black Leg",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)

Shop:Button("Buy Electro",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)

Shop:Button("Buy Fishman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)

Shop:Button("Buy Dragon Claw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)

Shop:Button("Buy Superhuman",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)

Shop:Button("Buy Death Step",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)

Shop:Button("Buy Sharkman Karate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)

Shop:Button("Buy Electric Claw",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)

Shop:Button("Buy Dragon Talon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)
-----Shop----------------
Shop:Seperator("Accessory")

Shop:Button("Tomoe Ring",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
end)

Shop:Button("Black Cape",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
end)

Shop:Button("Swordsman Hat",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
end)

Shop:Seperator("Sword")

Shop:Button("Cutlass",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

Shop:Button("Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)

Shop:Button("Iron Mace",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)

Shop:Button("Duel Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)

Shop:Button("Triple Katana", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)

Shop:Button("Pipe",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)

Shop:Button("Dual Headed Blade",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)

Shop:Button("Bisento",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)

Shop:Button("Soul Cane",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)

Shop:Seperator("Gun")

Shop:Button("Slingshot",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)

Shop:Button("Musket",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)

Shop:Button("Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)

Shop:Button("Refined Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)

Shop:Button("Cannon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)

Shop:Button("Kabucha",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)
------------Bone------------------

Shop:Seperator("Bones")

Shop:Button("Buy Surprise",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
end)

Shop:Button("Stat Refund",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
end)
    
Shop:Button("Race Reroll",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
end)

Shop:Seperator("Fragments")

Shop:Button("Stat Refund",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)
----------------------------Misc----------------------------
Misc:Seperator("Transform")
Misc:Button("Mink Fake Transform",function()
require(game:GetService("ReplicatedStorage").Notification).new("Mink V4! / By : Thunder"):Display();
wait()
setthreadcontext(5)

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = game:GetService("Players").LocalPlayer

local ArgsTransform = {
	Character = game.Players.LocalPlayer.Character,
	CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
	Color1 = Color3.fromRGB(102, 255, 153),
	Color2 = Color3.fromRGB(102, 255, 153),
	Color3 = Color3.fromRGB(102, 255, 153),
}

Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

delay(1, function()
	pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
end)

end)
Misc:Button("Fishman Fake Transform",function()
require(game:GetService("ReplicatedStorage").Notification).new("Fishman V4! / By : Thunder"):Display();
wait()
setthreadcontext(5)

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = game:GetService("Players").LocalPlayer

local ArgsTransform = {
	Character = game.Players.LocalPlayer.Character,
	CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
	Color1 = Color3.fromRGB(5, 115, 166),
	Color2 = Color3.fromRGB(5, 115, 166),
	Color3 = Color3.fromRGB(5, 115, 166),
}

Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

delay(1, function()
	pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
end)

end)
Misc:Button("Skypeian Fake Transform",function()
require(game:GetService("ReplicatedStorage").Notification).new("Skypeian V4! / By : Thunder"):Display();
wait()
setthreadcontext(5)

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = game:GetService("Players").LocalPlayer

local ArgsTransform = {
	Character = game.Players.LocalPlayer.Character,
	CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
	Color1 = Color3.fromRGB(222, 222, 0),
	Color2 = Color3.fromRGB(222, 222, 0),
	Color3 = Color3.fromRGB(222, 222, 0),
}

Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

delay(1, function()
	pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
end)

end)
Misc:Button("Ghoul Fake Transform",function()
require(game:GetService("ReplicatedStorage").Notification).new("Ghoul V4! / By : Thunder"):Display();
wait()
setthreadcontext(5)

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = game:GetService("Players").LocalPlayer

local ArgsTransform = {
	Character = game.Players.LocalPlayer.Character,
	CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
	Color1 = Color3.fromRGB(155, 155, 155),
	Color2 = Color3.fromRGB(0, 0, 0),
	Color3 = Color3.fromRGB(155, 155, 155),
}

Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

delay(1, function()
	pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
end)


end)
Misc:Button("Cyborg Fake Transform",function()
require(game:GetService("ReplicatedStorage").Notification).new("Cyborg V4! / By : Thunder"):Display();
wait()
setthreadcontext(5)

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = game:GetService("Players").LocalPlayer

local ArgsTransform = {
	Character = game.Players.LocalPlayer.Character,
	CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
	Color1 = Color3.fromRGB(166, 0, 111),
	Color2 = Color3.fromRGB(166, 0, 111),
	Color3 = Color3.fromRGB(166, 0, 111),
}

Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

delay(1, function()
	pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
end)

end)
Misc:Button("Human Fake Transform",function()
require(game:GetService("ReplicatedStorage").Notification).new("Human V4! / By : Thunder"):Display();
wait()
setthreadcontext(5)

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = game:GetService("Players").LocalPlayer

local ArgsTransform = {
	Character = game.Players.LocalPlayer.Character,
	CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
	Color1 = Color3.fromRGB(166, 0, 0),
	Color2 = Color3.fromRGB(166, 0, 0),
	Color3 = Color3.fromRGB(166, 0, 0),
}

Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()

delay(1, function()
	pcall(function() require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsTransform) end)
end)

end)

Misc:Seperator("ESP")
Misc:Toggle("ESP Player","6022668898",espplyer,function(a)
		ESPPlayer = a
		UpdatePlayerChams()
	end)
Misc:Toggle("ESP Chest","6022668898",espchest,function(a)
		ChestESP = a
		UpdateChestChams() 
	end)
Misc:Toggle("ESP Devil Fruit","6022668898",espdevilfruit,function(a)
		DevilFruitESP = a
		UpdateDevilChams() 
	end)
Misc:Toggle("ESP Flower","6022668898",espflower,function(a)
		FlowerESP = a
		UpdateFlowerChams() 
	end)
Misc:Seperator("server")
Misc:Button("Hop",function()
Hop()
end)
Misc:Button("rejoin",function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)
Misc:Button("Hop To Lower Player",function()
    getgenv().AutoTeleport = true
    getgenv().DontTeleportTheSameNumber = true 
    getgenv().CopytoClipboard = false
    if not game:IsLoaded() then
        print("Game is loading waiting...")
    end
    local maxplayers = math.huge
    local serversmaxplayer;
    local goodserver;
    local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
    function serversearch()
        for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
            if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                serversmaxplayer = v.maxPlayers
                maxplayers = v.playing
                goodserver = v.id
            end
        end       
    end
    function getservers()
        serversearch()
        for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
            if i == "nextPageCursor" then
                if gamelink:find("&cursor=") then
                    local a = gamelink:find("&cursor=")
                    local b = gamelink:sub(a)
                    gamelink = gamelink:gsub(b, "")
                end
                gamelink = gamelink .. "&cursor=" ..v
                getservers()
            end
        end
    end 
    getservers()
    if AutoTeleport then
        if DontTeleportTheSameNumber then 
            if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                return warn("It has same number of players (except you)")
            elseif goodserver == game.JobId then
                return warn("Your current server is the most empty server atm") 
            end
        end
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
    end
end)
Misc:Toggle("Rejoint Team","6022668898",true,function(value)
_G.Team = value
end)
spawn(function()
    while task.wait() do
        if game.Players.LocalPlayer.Team == nil then
            pcall(function()
                if _G.Team then
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(10000,1000,10000,1000)
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4,0,-5,0)
                    wait(.5)
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(730,394,0,true,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(730,394,0,false,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
                end
            end)
        end
    end
end)
Misc:Toggle('Auto Rejoin',"6022668898",true,function(value)
        getgenv().ABC = value
    end)
    
    spawn(function()
	    while wait() do
	        if ABC then
	                getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                            game:GetService("TeleportService"):Teleport(game.PlaceId)
                        end
                    end)
	            end
	        end
      end)
    
    
    Misc:Toggle('Save Member',"6022668898",_G.Setting_table.Save_Member,function(vu)
        _G.Setting_table.Save_Member = vu
	if vu then
		_G.Dis = nil
	end
	Update_Setting(_G.Check_Save_Setting)
	if _G.Setting_table.Save_Member then
		getgenv()['MyName'] = game.Players.LocalPlayer.Name
		Update_Setting(getgenv()['MyName'])
		Check_Setting(getgenv()['MyName'])
		Get_Setting(getgenv()['MyName'])
	end
    end)
    Misc:Toggle('Save All Member',"6022668898",_G.Setting_table.Save_All_Member,function(vu)
    _G.Setting_table.Save_All_Member = vu
	if vu then
		_G.Dis = nil
	end
	Update_Setting(_G.Check_Save_Setting)
	if _G.Setting_table.Save_All_Member then
		getgenv()['MyName'] = "AllMember"
		Update_Setting(getgenv()['MyName'])
		Check_Setting(getgenv()['MyName'])
		Get_Setting(getgenv()['MyName'])
	end
    end)
    Misc:Toggle('Show_Damage',"6022668898",_G.Setting_table.Show_Damage,function(vu)
    game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = vu
	_G.Setting_table.Show_Damage = vu
	Update_Setting(getgenv()['MyName'])
	end)
	Misc:Button("Delete Effect Slash Hit",function()
    if game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit') then
        game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit'):Destroy()
	end
end)
if game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit') then
	game:GetService("ReplicatedStorage").Assets:FindFirstChild('SlashHit'):Destroy()
end
Misc:Toggle("No Clip","9606294253",_G.Setting_table.NoClip,function(vu)
	_G.Setting_table.NoClip = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
    while game:GetService("RunService").Stepped:wait() do
		pcall(function()
        	if _G.Setting_table.NoClip then
				local character = game.Players.LocalPlayer.Character
				for _, v in pairs(character:GetChildren()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end
        end)
    end
end)
Misc:Label("Setting Attack")
Misc:Toggle("Auto Buso Haki","9606294253",true,function(vu)
	_G.Setting_table.Auto_Buso = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
    while wait(1) do
		pcall(function()
			if _G.Setting_table.Auto_Buso then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				else
					wait(3)
				end
			end
		end)
    end
end)
Misc:Toggle("Auto Ken Haki","9606294253",_G.Setting_table.Auto_Ken,function(vu)
	_G.Setting_table.Auto_Ken = vu
	Update_Setting(getgenv()['MyName'])
end)
spawn(function()
	while wait(2) do
		pcall(function()
			if _G.Setting_table.Auto_Ken then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
				wait(7)
			end
		end)
	end
end)
----------------------------FN----------------------------
function CheckQuest() 
	local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	if game.PlaceId == 2753915549 then
		if MyLevel == 1 or MyLevel <= 9 then -- Bandit
		Mon = "Bandit [Lv. 5]"
		NameQuest = "BanditQuest1"
		LevelQuest = 1
		NameMon = "Bandit"
		CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
		CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
	elseif MyLevel == 10 or MyLevel <= 14 then -- Bandit
	   Mon = "Monkey [Lv. 14]"
	   NameQuest = "JungleQuest"
		LevelQuest = 1
		NameMon = "Monkey"
		CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
	elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
		Mon = "Gorilla [Lv. 20]"
		NameQuest = "JungleQuest"
		LevelQuest = 2
		NameMon = "Gorilla"
		CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
	elseif MyLevel == 30 or MyLevel <= 39 then -- Pirat
		Mon = "Pirate [Lv. 35]"
		NameQuest = "BuggyQuest1"
		LevelQuest = 1
		NameMon = "Pirate"
		CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
	elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
		Mon = "Brute [Lv. 45]"
		NameQuest = "BuggyQuest1"
		LevelQuest = 2
		NameMon = "Brute"
		CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
	elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
		Mon = "Desert Bandit [Lv. 60]"
		NameQuest = "DesertQuest"
		LevelQuest = 1
		NameMon = "Desert Bandit"
		CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
		CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
	elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
		Mon = "Desert Officer [Lv. 70]"
		NameQuest = "DesertQuest"
		LevelQuest = 2
		NameMon = "Desert Officer"
		CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
		CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
	elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
		Mon = "Snow Bandit [Lv. 90]"
		NameQuest = "SnowQuest"
		LevelQuest = 1
		NameMon = "Snow Bandits"
		CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
		CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
	elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
		Mon = "Snowman [Lv. 100]"
		NameQuest = "SnowQuest"
		LevelQuest = 2
		NameMon = "Snowman"
		CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
		CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
	elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
		Mon = "Chief Petty Officer [Lv. 120]"
		NameQuest = "MarineQuest2"
		LevelQuest = 1
		NameMon = "Chief Petty Officer"
		CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
		CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
	elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
		Mon = "Sky Bandit [Lv. 150]"
		NameQuest = "SkyQuest"
		LevelQuest = 1
		NameMon = "Sky Bandit"
		CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
		CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
	elseif MyLevel == 175 or MyLevel <= 249 then -- Dark Master
		Mon = "Dark Master [Lv. 175]"
		NameQuest = "SkyQuest"
		LevelQuest = 2
		NameMon = "Dark Master"
		CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
		CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
	elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
		Mon = "Toga Warrior [Lv. 250]"
		NameQuest = "ColosseumQuest"
		LevelQuest = 1
		NameMon = "Toga Warrior"
		CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
		CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
	elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
		Mon = "Gladiator [Lv. 275]"
		NameQuest = "ColosseumQuest"
		LevelQuest = 2
		NameMon = "Gladiato"
		CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
		CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
	elseif MyLevel == 300 or MyLevel <= 324 then -- Military Soldier
		Mon = "Military Soldier [Lv. 300]"
		NameQuest = "MagmaQuest"
		LevelQuest = 1
		NameMon = "Military Soldier"
		CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
		CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
	elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy
		Mon = "Military Spy [Lv. 325]"
		NameQuest = "MagmaQuest"
		LevelQuest = 2
		NameMon = "Military Spy"
		CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
		CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
	elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
		FM = true
		Mon = "Fishman Warrior [Lv. 375]"
		NameQuest = "FishmanQuest"
		LevelQuest = 1
		NameMon = "Fishman Warrior"
		CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
		CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
		if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		end
	elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
		FM = true
		Mon = "Fishman Commando [Lv. 400]"
		NameQuest = "FishmanQuest"
		LevelQuest = 2
		NameMon = "Fishman Commando"
		CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
		CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
		if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		end
	elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
		FM = false
		Mon = "God's Guard [Lv. 450]"
		NameQuest = "SkyExp1Quest"
		LevelQuest = 1
		NameMon = "God's Guards"
		CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
		CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
		if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		end
	elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
		sky = false
		Mon = "Shanda [Lv. 475]"
		NameQuest = "SkyExp1Quest"
		LevelQuest = 2
		NameMon = "Shandas"
		CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
		CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
		if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		end
	elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
		sky = true
		Mon = "Royal Squad [Lv. 525]"
		NameQuest = "SkyExp2Quest"
		LevelQuest = 1
		NameMon = "Royal Squad"
		CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
		CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
	elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
		Dis = 240
		sky = true
		Mon = "Royal Soldier [Lv. 550]"
		NameQuest = "SkyExp2Quest"
		LevelQuest = 2
		NameMon = "Royal Soldier"
		CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
		CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
	elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
		Dis = 240
		sky = false
		Mon = "Galley Pirate [Lv. 625]"
		NameQuest = "FountainQuest"
		LevelQuest = 1
		NameMon = "Galley Pirate"
		CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
		CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
	elseif MyLevel >= 650 then -- Galley Captain
		Dis = 240
		Mon = "Galley Captain [Lv. 650]"
		NameQuest = "FountainQuest"
		LevelQuest = 2
		NameMon = "Galley Captain"
		CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
		CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
	end
	elseif game.PlaceId == 4442272183 then
		if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
		Mon = "Raider [Lv. 700]"
		NameQuest = "Area1Quest"
		LevelQuest = 1
		NameMon = "Raider"
		CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
	elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
		Mon = "Mercenary [Lv. 725]"
		NameQuest = "Area1Quest"
		LevelQuest = 2
		NameMon = "Mercenary"
		CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
	elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
		Mon = "Swan Pirate [Lv. 775]"
		NameQuest = "Area2Quest"
		LevelQuest = 1
		NameMon = "Swan Pirate"
		CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
	elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
		Mon = "Factory Staff [Lv. 800]"
		NameQuest = "Area2Quest"
		LevelQuest = 2
		NameMon = "Factory Staff"
		CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
	elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
		Mon = "Marine Lieutenant [Lv. 875]"
		NameQuest = "MarineQuest3"
		LevelQuest = 1
		NameMon = "Marine Lieutenant"
		CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
	elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
		Mon = "Marine Captain [Lv. 900]"
		NameQuest = "MarineQuest3"
		LevelQuest = 2
		NameMon = "Marine Captain"
		CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
	elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
		Mon = "Zombie [Lv. 950]"
		NameQuest = "ZombieQuest"
		LevelQuest = 1
		NameMon = "Zombie"
		CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
		CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
	elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
		Mon = "Vampire [Lv. 975]"
		NameQuest = "ZombieQuest"
		LevelQuest = 2
		NameMon = "Vampire"
		CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
		CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
	elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
		Mon = "Snow Trooper [Lv. 1000]"
		NameQuest = "SnowMountainQuest"
		LevelQuest = 1
		NameMon = "Snow Trooper"
		CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
		CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
	elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
		Mon = "Winter Warrior [Lv. 1050]"
		NameQuest = "SnowMountainQuest"
		LevelQuest = 2
		NameMon = "Winter Warrior"
		CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
		CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
	elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
		Mon = "Lab Subordinate [Lv. 1100]"
		NameQuest = "IceSideQuest"
		LevelQuest = 1
		NameMon = "Lab Subordinate"
		CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
		CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
	elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
		Mon = "Horned Warrior [Lv. 1125]"
		NameQuest = "IceSideQuest"
		LevelQuest = 2
		NameMon = "Horned Warrior"
		CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
		CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
	elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
		Mon = "Magma Ninja [Lv. 1175]"
		NameQuest = "FireSideQuest"
		LevelQuest = 1
		NameMon = "Magma Ninja"
		CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
		CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
	elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
		Mon = "Lava Pirate [Lv. 1200]"
		NameQuest = "FireSideQuest"
		LevelQuest = 2
		NameMon = "Lava Pirate"
		CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
		CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
	elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
		Mon = "Ship Deckhand [Lv. 1250]"
		NameQuest = "ShipQuest1"
		LevelQuest = 1
		NameMon = "Ship Deckhand"
		CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
		CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
		if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
		Mon = "Ship Engineer [Lv. 1275]"
		NameQuest = "ShipQuest1"
		LevelQuest = 2
		NameMon = "Ship Engineer"
		CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
		CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
		if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
		Mon = "Ship Steward [Lv. 1300]"
		NameQuest = "ShipQuest2"
		LevelQuest = 1
		NameMon = "Ship Steward"
		CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
		CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
		if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
		Mon = "Ship Officer [Lv. 1325]"
		NameQuest = "ShipQuest2"
		LevelQuest = 2
		NameMon = "Ship Officer"
		CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
		CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
		if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
		Mon = "Arctic Warrior [Lv. 1350]"
		NameQuest = "FrostQuest"
		LevelQuest = 1
		NameMon = "Arctic Warrior"
		CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
		CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
		if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		end
	elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
		Mon = "Snow Lurker [Lv. 1375]"
		NameQuest = "FrostQuest"
		LevelQuest = 2
		NameMon = "Snow Lurker"
		CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
		CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
	elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
		Mon = "Sea Soldier [Lv. 1425]"
		NameQuest = "ForgottenQuest"
		LevelQuest = 1
		NameMon = "Sea Soldier"
		CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
		CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
	elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
		Mon = "Water Fighter [Lv. 1450]"
		NameQuest = "ForgottenQuest"
		LevelQuest = 2
		NameMon = "Water Fighter"
		CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
		CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
	end
	elseif game.PlaceId == 7449423635 then
		if MyLevel == 1500 or MyLevel <= 1524 then
		Mon = "Pirate Millionaire [Lv. 1500]"
		NameQuest = "PiratePortQuest"
		LevelQuest = 1
		NameMon = "Pirate Millionaire"
		CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
		CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
	elseif MyLevel == 1525 or MyLevel <= 1574 then
		Mon = "Pistol Billionaire [Lv. 1525]"
		NameQuest = "PiratePortQuest"
		LevelQuest = 2
		NameMon = "Pistol Billionaire"
		CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
		CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
	elseif MyLevel == 1575 or MyLevel <= 1599 then
		Mon = "Dragon Crew Warrior [Lv. 1575]"
		NameQuest = "AmazonQuest"
		LevelQuest = 1
		NameMon = "Dragon Crew Warrior"
		CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
		CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
	elseif MyLevel == 1600 or MyLevel <= 1624 then
		Mon = "Dragon Crew Archer [Lv. 1600]"
		NameQuest = "AmazonQuest"
		LevelQuest = 2
		NameMon = "Dragon Crew Archer"
		CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
		CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
	elseif MyLevel == 1625 or MyLevel <= 1649 then
		Mon = "Female Islander [Lv. 1625]"
		NameQuest = "AmazonQuest2"
		LevelQuest = 1
		NameMon = "Female Islander"
		CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
	elseif MyLevel == 1650 or MyLevel <= 1699 then
		Mon = "Giant Islander [Lv. 1650]"
		NameQuest = "AmazonQuest2"
		LevelQuest = 2
		NameMon = "Giant Islander"
		CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
	elseif MyLevel == 1700 or MyLevel <= 1724 then
		Mon = "Marine Commodore [Lv. 1700]"
		NameQuest = "MarineTreeIsland"
		LevelQuest = 1
		NameMon = "Marine Commodore"
		CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
		CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
	elseif MyLevel == 1725 or MyLevel <= 1774 then
		Mon = "Marine Rear Admiral [Lv. 1725]"
		NameQuest = "MarineTreeIsland"
		LevelQuest = 2
		NameMon = "Marine Rear Admiral"
		CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
		CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
	elseif MyLevel == 1775 or MyLevel <= 1799 then
		Mon = "Fishman Raider [Lv. 1775]"
		NameQuest = "DeepForestIsland3"
		LevelQuest = 1
		NameMon = "Fishman Raider"
		CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
	elseif MyLevel == 1800 or MyLevel <= 1824 then
		Mon = "Fishman Captain [Lv. 1800]"
		NameQuest = "DeepForestIsland3"
		LevelQuest = 2
		NameMon = "Fishman Captain"
		CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
	elseif MyLevel == 1825 or MyLevel <= 1849 then
		Mon = "Forest Pirate [Lv. 1825]"
		NameQuest = "DeepForestIsland"
		LevelQuest = 1
		NameMon = "Forest Pirate"
		CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
		CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
	elseif MyLevel == 1850 or MyLevel <= 1899 then
		Mon = "Mythological Pirate [Lv. 1850]"
		NameQuest = "DeepForestIsland"
		LevelQuest = 2
		NameMon = "Mythological Pirate"
		CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
		CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
	elseif MyLevel == 1900 or MyLevel <= 1924 then
		Mon = "Jungle Pirate [Lv. 1900]"
		NameQuest = "DeepForestIsland2"
		LevelQuest = 1
		NameMon = "Jungle Pirate"
		CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
		CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
	elseif MyLevel == 1925 or MyLevel <= 1974 then
		Mon = "Musketeer Pirate [Lv. 1925]"
		NameQuest = "DeepForestIsland2"
		LevelQuest = 2
		NameMon = "Musketeer Pirate"
		CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
		CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
	elseif MyLevel == 1975 or MyLevel <= 1999 then
		Mon = "Reborn Skeleton [Lv. 1975]"
		NameQuest = "HauntedQuest1"
		LevelQuest = 1
		NameMon = "Reborn Skeleton"
		CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
	elseif MyLevel == 2000 or MyLevel <= 2024 then
		Mon = "Living Zombie [Lv. 2000]"
		NameQuest = "HauntedQuest1"
		LevelQuest = 2
		NameMon = "Living Zombie"
		CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
	elseif MyLevel == 2025 or MyLevel <= 2049 then
		Mon = "DeMonic Soul [Lv. 2025]"
		NameQuest = "HauntedQuest2"
		LevelQuest = 1
		NameMon = "DeMonic Soul"
		CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
		CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
	elseif MyLevel == 2050 or MyLevel <= 2074 then
		Mon = "Posessed Mummy [Lv. 2050]" 
		NameQuest = "HauntedQuest2"
		LevelQuest = 2
		NameMon = "Posessed Mummy"
		CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
		CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
	elseif MyLevel == 2075 or MyLevel <= 2099 then
		Mon = "Peanut Scout [Lv. 2075]"
		NameQuest = "NutsIslandQuest"
		LevelQuest = 1
		NameMon = "Peanut Scout"
		CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
		CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
	elseif MyLevel == 2100 or MyLevel <= 2124 then
		Mon = "Peanut President [Lv. 2100]"
		NameQuest = "NutsIslandQuest"
		LevelQuest = 2
		NameMon = "Peanut President"
		CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
		CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
	elseif MyLevel == 2125 or MyLevel <= 2149 then
		Mon = "Ice Cream Chef [Lv. 2125]"
		NameQuest = "IceCreamIslandQuest"
		LevelQuest = 1
		NameMon = "Ice Cream Chef"
		CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
		CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
	elseif MyLevel == 2150 or MyLevel <= 2199 then
		Mon = "Ice Cream Commander [Lv. 2150]"
		NameQuest = "IceCreamIslandQuest"
		LevelQuest = 2
		NameMon = "Ice Cream Commander"
		CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
		CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
	elseif MyLevel == 2200 or MyLevel <= 2224 then
		Mon = "Cookie Crafter [Lv. 2200]"
		NameQuest = "CakeQuest1"
		LevelQuest = 1
		NameMon = "Cookie Crafter"
		CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
		CFrameMon = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
	elseif MyLevel == 2225 or MyLevel <= 2249 then
		Mon = "Cake Guard [Lv. 2225]"
		NameQuest = "CakeQuest1"
		LevelQuest = 2
		NameMon = "Cake Guard"
		CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
		CFrameMon = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
	elseif MyLevel == 2250 or MyLevel <= 2274 then
		Mon = "Baking Staff [Lv. 2250]"
		NameQuest = "CakeQuest2"
		LevelQuest = 1
		NameMon = "Baking Staff"
		CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
		CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
	elseif MyLevel == 2275 or MyLevel <= 2299 then
		Mon = "Head Baker [Lv. 2275]"
		LevelQuest = 2
		NameQuest = "CakeQuest2"
		NameMon = "Head Baker"
		CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
		CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
	elseif MyLevel == 2300 or MyLevel <= 2324 then
		Mon = "Cocoa Warrior [Lv. 2300]"
		LevelQuest = 1
		NameQuest = "ChocQuest1"
		NameMon = "Cocoa Warrior"
		CFrameQuest = CFrame.new(-237.279648, 24.760088, -12194.0879, 0.37110126, 0, -0.928592443, -0, 1.00000012, -0, 0.928592443, 0, 0.37110126)
		CFrameMon = CFrame.new(4.03491974, 68.286705, -12170.5713, 4.76837158e-05, -0.996190667, 0.0872024298, -1, -4.76837158e-05, 2.08243728e-06, 2.08243728e-06, -0.0872024298, -0.996190667)
	elseif MyLevel == 2325 or MyLevel <= 2349 then
		Mon = "Chocolate Bar Battler [Lv. 2325]"
		LevelQuest = 2
		NameQuest = "ChocQuest1"
		NameMon = "Chocolate Bar Battler"
		CFrameQuest = CFrame.new(149.342697, 24.8196201, -12775.0957, -0.344634354, -2.06621564e-08, -0.938736975, 5.85849484e-08, 1, -4.35186216e-08, 0.938736975, -6.99938667e-08, -0.344634354)
		CFrameMon = CFrame.new(4.03491974, 68.286705, -12170.5713, 4.76837158e-05, -0.996190667, 0.0872024298, -1, -4.76837158e-05, 2.08243728e-06, 2.08243728e-06, -0.0872024298, -0.996190667)
	elseif MyLevel == 2350 or MyLevel <= 2374 then
		Mon = "Sweet Thief [Lv. 2350]"
		LevelQuest = 1
		NameQuest =   "ChocQuest2"
	    NameMon = "Sweet Thief"
		CFrameQuest = CFrame.new(149.814438, 24.8196201, -12775.6064, -0.329403073, -1.39752903e-08, -0.94418937, -1.07108015e-07, 1, 2.25658319e-08, 0.94418937, 1.08563505e-07, -0.329403073)
		CFrameMon = CFrame.new(-13.8405685, 13.8881378, -12845.4707, 0.819155693, 0, 0.573571265, 0, 1, 0, -0.573571265, 0, 0.819155693)
	elseif MyLevel >= 2375 then
		Mon = "Candy Rebel [Lv. 2375]"
		LevelQuest = 2
		NameQuest = "ChocQuest2"
	    NameMon = "Candy Rebel"
		CFrameQuest = CFrame.new(149.814438, 24.8196201, -12775.6064, -0.329403073, -1.39752903e-08, -0.94418937, -1.07108015e-07, 1, 2.25658319e-08, 0.94418937, 1.08563505e-07, -0.329403073)
		CFrameMon = CFrame.new(-244.225952, 77.8919601, -13067.8477, 0.642763317, 0, 0.766064942, 0, 1, 0, -0.766064942, 0, 0.642763317)
		end
	end
end

function CheckMs() 
	local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	if World1 then
		if MyLevel == 1 or MyLevel <= 9 then -- Bandit
		Ms = "Bandit [Lv. 5]"
		NameMs = "Bandit"
		CFrameMs = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
	elseif MyLevel == 10 or MyLevel <= 14 then -- Bandit
	   Ms = "Mskey [Lv. 14]"
	   NameMs = "Mskey"
	   CFrameMs = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
	elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
		Ms = "Gorilla [Lv. 20]"
		NameMs = "Gorilla"
		CFrameMs = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
	elseif MyLevel == 30 or MyLevel <= 39 then -- Pirat
		Ms = "Pirate [Lv. 35]"
		NameMs = "Pirate"
		CFrameMs = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
	elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
		Ms = "Brute [Lv. 45]"
		NameMs = "Brute"
		CFrameMs = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
	elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
		Ms = "Desert Bandit [Lv. 60]"
		NameMs = "Desert Bandit"
		CFrameMs = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
	elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
		Ms = "Desert Officer [Lv. 70]"
		NameMs = "Desert Officer"
		CFrameMs = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
	elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
		Ms = "Snow Bandit [Lv. 90]"
		NameMs = "Snow Bandits"
		CFrameMs = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
	elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
		Ms = "Snowman [Lv. 100]"
		NameMs = "Snowman"
		CFrameMs = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
	elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
		Ms = "Chief Petty Officer [Lv. 120]"
		NameMs = "Chief Petty Officer"
		CFrameMs = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
	elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
		Ms = "Sky Bandit [Lv. 150]"
		NameMs = "Sky Bandit"
		CFrameMs = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
	elseif MyLevel == 175 or MyLevel <= 249 then -- Dark Master
		Ms = "Dark Master [Lv. 175]"
		NameMs = "Dark Master"
		CFrameMs = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
	elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
		Ms = "Toga Warrior [Lv. 250]"
		NameMs = "Toga Warrior"
		CFrameMs = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
	elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
		Ms = "Gladiator [Lv. 275]"
		NameMs = "Gladiato"
		CFrameMs = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
	elseif MyLevel == 300 or MyLevel <= 324 then -- Military Soldier
		Ms = "Military Soldier [Lv. 300]"
		NameMs = "Military Soldier"
		CFrameMs = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
	elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy
		Ms = "Military Spy [Lv. 325]"
		NameMs = "Military Spy"
		CFrameMs = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
	elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
		FM = true
		Ms = "Fishman Warrior [Lv. 375]"
		NameMs = "Fishman Warrior"
		CFrameMs = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
		if FarmNoQ and (CFrameMs.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		end
	elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
		FM = true
		Ms = "Fishman Commando [Lv. 400]"
		NameMs = "Fishman Commando"
		CFrameMs = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
		if FarmNoQ and (CFrameMs.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		end
	elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
		FM = false
		Ms = "God's Guard [Lv. 450]"
		NameMs = "God's Guards"
		CFrameMs = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
		if FarmNoQ and (CFrameMs.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		end
	elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
		sky = false
		Ms = "Shanda [Lv. 475]"
		NameMs = "Shandas"
		CFrameMs = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
		if FarmNoQ and (CFrameMs.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		end
	elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
		sky = true
		Ms = "Royal Squad [Lv. 525]"
		NameMs = "Royal Squad"
		CFrameMs = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
	elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
		Dis = 240
		sky = true
		Ms = "Royal Soldier [Lv. 550]"
		NameMs = "Royal Soldier"
		CFrameMs = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
	elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
		Dis = 240
		sky = false
		Ms = "Galley Pirate [Lv. 625]"
		NameMs = "Galley Pirate"
		CFrameMs = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
	elseif MyLevel >= 650 then -- Galley Captain
		Dis = 240
		Ms = "Galley Captain [Lv. 650]"
		NameMs = "Galley Captain"
		CFrameMs = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
	end
	elseif World2 then
		if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
		Ms = "Raider [Lv. 700]"
		NameMs = "Raider"
		CFrameMs = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
	elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
		Ms = "Mercenary [Lv. 725]"
		NameMs = "Mercenary"
		CFrameMs = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
	elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
		Ms = "Swan Pirate [Lv. 775]"
		NameMs = "Swan Pirate"
		CFrameMs = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
	elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
		Ms = "Factory Staff [Lv. 800]"
		NameMs = "Factory Staff"
		CFrameMs = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
	elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
		Ms = "Marine Lieutenant [Lv. 875]"
		NameMs = "Marine Lieutenant"
		CFrameMs = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
	elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
		Ms = "Marine Captain [Lv. 900]"
		NameMs = "Marine Captain"
		CFrameMs = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
	elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
		Ms = "Zombie [Lv. 950]"
		NameMs = "Zombie"
		CFrameMs = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
	elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
		Ms = "Vampire [Lv. 975]"
		NameMs = "Vampire"
		CFrameMs = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
	elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
		Ms = "Snow Trooper [Lv. 1000]"
		NameMs = "Snow Trooper"
		CFrameMs = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
	elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
		Ms = "Winter Warrior [Lv. 1050]"
		NameMs = "Winter Warrior"
		CFrameMs = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
	elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
		Ms = "Lab Subordinate [Lv. 1100]"
		NameMs = "Lab Subordinate"
		CFrameMs = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
	elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
		Ms = "Horned Warrior [Lv. 1125]"
		NameMs = "Horned Warrior"
		CFrameMs = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
	elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
		Ms = "Magma Ninja [Lv. 1175]"
		NameMs = "Magma Ninja"
		CFrameMs = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
	elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
		Ms = "Lava Pirate [Lv. 1200]"
		NameMs = "Lava Pirate"
		CFrameMs = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
	elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
		Ms = "Ship Deckhand [Lv. 1250]"
		NameMs = "Ship Deckhand"
		CFrameMs = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
		if FarmNoQ and (CFrameMs.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
		Ms = "Ship Engineer [Lv. 1275]"
		NameMs = "Ship Engineer"
		CFrameMs = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
		if FarmNoQ and (CFrameMs.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
		Ms = "Ship Steward [Lv. 1300]"
		NameMs = "Ship Steward"
		CFrameMs = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
		if FarmNoQ and (CFrameMs.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
		Ms = "Ship Officer [Lv. 1325]"
		NameMs = "Ship Officer"
		CFrameMs = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
		if FarmNoQ and (CFrameMs.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
		Ms = "Arctic Warrior [Lv. 1350]"
		NameMs = "Arctic Warrior"
		CFrameMs = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
		if FarmNoQ and (CFrameMs.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		end
	elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
		Ms = "Snow Lurker [Lv. 1375]"
		NameMs = "Snow Lurker"
		CFrameMs = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
	elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
		Ms = "Sea Soldier [Lv. 1425]"
		NameMs = "Sea Soldier"
		CFrameMs = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
	elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
		Ms = "Water Fighter [Lv. 1450]"
		NameMs = "Water Fighter"
		CFrameMs = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
	end
	elseif World3 then
		if MyLevel == 1500 or MyLevel <= 1524 then
		Ms = "Pirate Millionaire [Lv. 1500]"
		NameMs = "Pirate Millionaire"
		CFrameMs = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
	elseif MyLevel == 1525 or MyLevel <= 1574 then
		Ms = "Pistol Billionaire [Lv. 1525]"
		NameMs = "Pistol Billionaire"
		CFrameMs = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
	elseif MyLevel == 1575 or MyLevel <= 1599 then
		Ms = "Dragon Crew Warrior [Lv. 1575]"
		NameMs = "Dragon Crew Warrior"
		CFrameMs = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
	elseif MyLevel == 1600 or MyLevel <= 1624 then
		Ms = "Dragon Crew Archer [Lv. 1600]"
		NameMs = "Dragon Crew Archer"
		CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
		CFrameMs = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
	elseif MyLevel == 1625 or MyLevel <= 1649 then
		Ms = "Female Islander [Lv. 1625]"
		NameMs = "Female Islander"
		CFrameMs = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
	elseif MyLevel == 1650 or MyLevel <= 1699 then
		Ms = "Giant Islander [Lv. 1650]"
		NameMs = "Giant Islander"
		CFrameMs = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
	elseif MyLevel == 1700 or MyLevel <= 1724 then
		Ms = "Marine Commodore [Lv. 1700]"
		NameMs = "Marine Commodore"
	    CFrameMs = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
	elseif MyLevel == 1725 or MyLevel <= 1774 then
		Ms = "Marine Rear Admiral [Lv. 1725]"
		NameMs = "Marine Rear Admiral"
		CFrameMs = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
	elseif MyLevel == 1775 or MyLevel <= 1799 then
		Ms = "Fishman Raider [Lv. 1775]"
		NameMs = "Fishman Raider"
		CFrameMs = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
	elseif MyLevel == 1800 or MyLevel <= 1824 then
		Ms = "Fishman Captain [Lv. 1800]"
		NameMs = "Fishman Captain"
		CFrameMs = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
	elseif MyLevel == 1825 or MyLevel <= 1849 then
		Ms = "Forest Pirate [Lv. 1825]"
		NameMs = "Forest Pirate"
		CFrameMs = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
	elseif MyLevel == 1850 or MyLevel <= 1899 then
		Ms = "Mythological Pirate [Lv. 1850]"
		NameMs = "Mythological Pirate"
		CFrameMs = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
	elseif MyLevel == 1900 or MyLevel <= 1924 then
		Ms = "Jungle Pirate [Lv. 1900]"
		NameMs = "Jungle Pirate"
		CFrameMs = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
	elseif MyLevel == 1925 or MyLevel <= 1974 then
		Ms = "Musketeer Pirate [Lv. 1925]"
		NameMs = "Musketeer Pirate"
		CFrameMs = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
	elseif MyLevel == 1975 or MyLevel <= 1999 then
		Ms = "Reborn Skeleton [Lv. 1975]"
		NameMs = "Reborn Skeleton"
		CFrameMs = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
	elseif MyLevel == 2000 or MyLevel <= 2024 then
		Ms = "Living Zombie [Lv. 2000]"
		NameMs = "Living Zombie"
		CFrameMs = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
	elseif MyLevel == 2025 or MyLevel <= 2049 then
		Ms = "DeMsic Soul [Lv. 2025]"
		NameMs = "DeMsic Soul"
		CFrameMs = CFrame.new(-9466.72949, 171.162918, 6132.01514)
	elseif MyLevel == 2050 or MyLevel <= 2074 then
		Ms = "Posessed Mummy [Lv. 2050]" 
		NameMs = "Posessed Mummy"
		CFrameMs = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
	elseif MyLevel == 2075 or MyLevel <= 2099 then
		Ms = "Peanut Scout [Lv. 2075]"
	    NameMs = "Peanut Scout"
		CFrameMs = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
	elseif MyLevel == 2100 or MyLevel <= 2124 then
		Ms = "Peanut President [Lv. 2100]"
	    NameMs = "Peanut President"
		CFrameMs = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
	elseif MyLevel == 2125 or MyLevel <= 2149 then
		Ms = "Ice Cream Chef [Lv. 2125]"
		NameMs = "Ice Cream Chef"
		CFrameMs = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
	elseif MyLevel == 2150 or MyLevel <= 2199 then
		Ms = "Ice Cream Commander [Lv. 2150]"
		NameMs = "Ice Cream Commander"
		CFrameMs = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
	elseif MyLevel == 2200 or MyLevel <= 2224 then
		Ms = "Cookie Crafter [Lv. 2200]"
		NameMs = "Cookie Crafter"
		CFrameMs = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
	elseif MyLevel == 2225 or MyLevel <= 2249 then
		Ms = "Cake Guard [Lv. 2225]"
		NameMs = "Cake Guard"
		CFrameMs = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
	elseif MyLevel == 2250 or MyLevel <= 2274 then
		Ms = "Baking Staff [Lv. 2250]"
		NameMs = "Baking Staff"
		CFrameMs = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
	elseif MyLevel == 2275 or MyLevel <= 2299 then
		Ms = "Head Baker [Lv. 2275]"
		NameMs = "Head Baker"
		CFrameMs = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
	elseif MyLevel == 2300 or MyLevel <= 2324 then
		Ms = "Cocoa Warrior [Lv. 2300]"
		NameMs = "Cocoa Warrior"
		CFrameMs = CFrame.new(4.03491974, 68.286705, -12170.5713, 4.76837158e-05, -0.996190667, 0.0872024298, -1, -4.76837158e-05, 2.08243728e-06, 2.08243728e-06, -0.0872024298, -0.996190667)
	elseif MyLevel == 2325 or MyLevel <= 2349 then
		Ms = "Chocolate Bar Battler [Lv. 2325]"
		NameMs = "Chocolate Bar Battler"
		CFrameMs = CFrame.new(4.03491974, 68.286705, -12170.5713, 4.76837158e-05, -0.996190667, 0.0872024298, -1, -4.76837158e-05, 2.08243728e-06, 2.08243728e-06, -0.0872024298, -0.996190667)
	elseif MyLevel == 2350 or MyLevel <= 2374 then
		Ms = "Sweet Thief [Lv. 2350]"
	    NameMs = "Sweet Thief"
		CFrameMs = CFrame.new(-13.8405685, 13.8881378, -12845.4707, 0.819155693, 0, 0.573571265, 0, 1, 0, -0.573571265, 0, 0.819155693)
	elseif MyLevel >= 2375 then
		Ms = "Candy Rebel [Lv. 2375]"
	    NameMs = "Candy Rebel"
		CFrameMs = CFrame.new(-244.225952, 77.8919601, -13067.8477, 0.642763317, 0, 0.766064942, 0, 1, 0, -0.766064942, 0, 0.642763317)
		end
	end
end

function ByPass(Position)
game.Players.LocalPlayer.Character.Head:Destroy()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position 
wait(.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end

function Haki()
if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end

function  BringBone()
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
    end


function StopTween(target)
        if not target then
            _G.StopTween = true
            wait()
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
        end
    end
     function EquipWapon(Tool)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(Tool))
     end

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 110 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
     end
    
    spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if MaterialFish1 or _G.AutoBartilo or _G.AutoRengoku or AutoRaceV2q or AutoFarmMasteryGun or _G.Part or Chest_Farm or AutoFarmMastery or _G.AutoP or FarmLevel or _G.Lol or FarmBone or _G.Auto_Dungeon or _G.AutoBudySwordHop or _G.AutoBudySword or AutoFarm or _G.Auto_Open_Dough_Dungeon or _G.AutoDoughtBoss or AutoElitehunter or _G.AutoSea2 or _G.TeleportIsland or AutoAllBoss or AutoFarmBoss or AutoQuestBartilo or AutoPole or AutoSaber then
            if not game:GetService("Workspace"):FindFirstChild("Part") then
                local Part = Instance.new("Part")
                Part.Name = "Part"
                Part.Parent = game.Workspace
                Part.Anchored = true
				Part.Color = Color3.fromRGB(255, 255, 0)
                Part.Transparency = 1
                Part.Size = Vector3.new(40,40,40)
            elseif game:GetService("Workspace"):FindFirstChild("Part") then
                game.Workspace["Part"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("Part") then
                game:GetService("Workspace"):FindFirstChild("Part"):Destroy()
            end
        end
    end)
end)
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if MaterialFish1 or _G.AutoBartilo or _G.AutoRengoku or AutoRaceV2q or AutoFarmMasteryGun or _G.Part or Chest_Farm or AutoFarmMastery or _G.AutoP or FarmLevel or _G.Lol or FarmBone or _G.Auto_Dungeon or _G.AutoBudySwordHop or _G.AutoBudySword or AutoFarm or _G.Auto_Open_Dough_Dungeon or _G.AutoDoughtBoss or AutoElitehunter or _G.AutoSea2 or _G.TeleportIsland or AutoAllBoss or AutoFarmBoss or AutoQuestBartilo or AutoPole or AutoSaber  then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
            end
        end
    end)
end)
function changestate()
    game.Workspace["Part"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Clip or MaterialFish1 or _G.AutoBartilo or _G.AutoRengoku or AutoRaceV2q or AutoFarmMasteryGun or _G.Part or Chest_Farm or AutoFarmMastery or _G.AutoP or FarmLevel or _G.Lol or FarmBone or _G.Auto_Dungeon or _G.AutoBudySwordHop or _G.AutoBudySword or AutoFarm or _G.Auto_Open_Dough_Dungeon or _G.AutoDoughtBoss or AutoElitehunter or _G.AutoSea2 or _G.TeleportIsland or AutoAllBoss or AutoFarmBoss or AutoQuestBartilo or AutoPole or AutoSaber  then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)

function TP(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 110 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
     end


local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


function TPP(Pos)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
end

----------------------------AutoFarm---------------------------------
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting_table.SelectModFarm == "Normal" and FarmLevel then
                CheckQuest()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    BringMobFarm = false
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				CheckQuest()
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Mon then
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                	EquipWapon(_G.Setting_table.Weapon)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                    if FarmLevel and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                    BringMobFarm = true
									end
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until not AutoFarm or not v.Humanoid.Health <= 0
                            	end
                           end
                    end
                else
                    topos(CFrameQuest)
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        BringMobFarm = false
                        topos(CFrameMon)
 		 		end
			end
				CheckQuest()
				 for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
			   	   if v.Name == Mon then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                          end
                     end
			    end
          end)
      end
 end)
 
 
 
  function Bring()
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      	  for x,y in pairs(game.Workspace.Enemies:GetChildren()) do
      	      if v.Name == y.Name then
         	       v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
      	          v.HumanoidRootPart.Transparency = 0.5
        	        y.HumanoidRootPart.Transparency = 0.5
        	        v.Humanoid.WalkSpeed = 0
      	          y.Humanoid.WalkSpeed = 0
           	     v.Humanoid.JumpPower = 0
        	        y.Humanoid.JumpPower = 0
           	     if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                   end
                     sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
               	 end
    	      end
   	 end
   end

	spawn(function()
		while wait() do
		  pcall(function()
			  if BringMonster and FarmLevel and BringMobFarm then
	 			Bring()
			 end
		  end)
		end
	end)

 spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting_table.SelectModFarm == "No Tween Quet" and FarmLevel then
                CheckQuest()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    BringMobFarm = false
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				CheckQuest()
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Mon then
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                	EquipWapon(_G.Setting_table.Weapon)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                    if FarmLevel and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                    BringMobFarm = true
									end
									FastAttack = true
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until not AutoFarm or not v.Humanoid.Health <= 0
                            	end
                           end
                    end
                else
                	BringMobFarm = false
                    topos(CFrameMon)
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 20000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        topos(CFrameMon)
                     end
				end
				CheckQuest()
			    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
					 if v.Name == Mon then
                         	topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                          end
                     end
			    end
          end)
      end
 end)
----------------------------AutoSaber---------------------------------
spawn(function()
    while task.wait() do
        pcall(function()
            if AutoSaber then
                if game.Players.LocalPlayer.Data.Level.Value >= 200 then
                    local PartJungle = game:GetService("Workspace").Map.Jungle.QuestPlates
                    if PartJungle["Plate1"].Button.BrickColor ~= BrickColor.new("Camo") then
                        topos(PartJungle["Plate1"].Button.CFrame)
                    elseif PartJungle["Plate2"].Button.BrickColor ~= BrickColor.new("Camo") then
                        topos(PartJungle["Plate2"].Button.CFrame)
                    elseif PartJungle["Plate3"].Button.BrickColor ~= BrickColor.new("Camo") then
                        topos(PartJungle["Plate3"].Button.CFrame)
                    elseif PartJungle["Plate4"].Button.BrickColor ~= BrickColor.new("Camo") then
                        topos(PartJungle["Plate4"].Button.CFrame)
                    elseif PartJungle["Plate5"].Button.BrickColor ~= BrickColor.new("Camo") then
                        topos(PartJungle["Plate5"].Button.CFrame)
                    end
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.CanCollide == false and game:GetService("Workspace").Map.Desert.Burn.Part.CanCollide == true then
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                            topos(CFrame.new(-1610.025634765625, 12.177388191223145, 162.5987091064453))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                            EquipWapon("Torch")
                            game:GetService("Workspace").Map.Desert.Burn.Fire.Size = Vector3.new(10,10,10)
                            game:GetService("Workspace").Map.Desert.Burn.Fire.CanCollide = false
                            topos(CFrame.new(1113.6805419921875, 5.046795845031738, 4349.96484375))
                        end
                    end
                    if game:GetService("Workspace").Map.Desert.Burn.Part.CanCollide == false and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
                            topos(CFrame.new(1114.609619140625, 7.24679708480835, 4365.28076171875))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
                            EquipWapon("Cup")
                            game:GetService("Workspace").Map.Ice.ParticleDrop.Water.Size = Vector3.new(40,40,40)
                            game:GetService("Workspace").Map.Ice.ParticleDrop.Water.Transparency = 0
                            topos(CFrame.new(1397.471435546875, 37.47333908081055, -1321.564208984375))
                        end
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").UsedCup == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                    end 
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").TalkedSon == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").UsedRelic == false then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                if v:FindFirstChild("HumanoidRootPart") then
                                    repeat task.wait()
                                       BringBone()
                                        EquipWapon(_G.Setting_table.Weapon)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        if sethiddenproperty then
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        end
                                    until not AutoSaber
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").UsedRelic == false and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").KilledMob == true then
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Relic"])
                            game:GetService("Workspace").Map.Jungle.Final.Invis.Size = Vector3.new(20,20,20)
                            game:GetService("Workspace").Map.Jungle.Final.Invis.CanCollide = false
                            topos(CFrame.new(-1407.0384521484375, 29.977327346801758, 4.923530578613281))
                        end
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").UsedRelic == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress").KilledShanks == false then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                if v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Humanoid") then
                                    repeat task.wait()
                                       BringBone()
                                        EquipWapon(_G.Setting_table.Weapon)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        game:GetService'VirtualUser':CaptureController()
                                       game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until not AutoSaber
                                    if sethiddenproperty then
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    end
                                end
                            end
                        end
                     end
                end
            end
        end)
    end
end)
----------------------------AutoPole---------------------------------
spawn(function()
    while task.wait() do
        if AutoPole then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Thunder God [Lv. 575] [Boss]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                               BringBone()
                                EquipWapon(_G.Setting_table.Weapon)
                                 topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                 v.HumanoidRootPart.CanCollide = false
                                 v.Humanoid.WalkSpeed = 0
                                 v.Head.CanCollide = false
                                 v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                 game:GetService'VirtualUser':CaptureController()
                                 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not AutoPole or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Thunder God [Lv. 575] [Boss]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                    end
                end
            end)
        end
    end
end)

----------------------------FarmBone---------------------------------

spawn(function()
    while task.wait() do
        if FarmBone then
            pcall(function()
                topos(CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625))
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name =="Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                StartBoneMagnet = true
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                                BoneMob = v.Name
                            until not FarmBone or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
				StartBoneMagnet = false
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Reborn Skeleton [Lv. 1975]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Living Zombie [Lv. 2000]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Demonic Soul [Lv. 2025]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Posessed Mummy [Lv. 2050]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625))
                    end
                end
            end)
        end
    end
end)

function BringBone()
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      	  for x,y in pairs(game.Workspace.Enemies:GetChildren()) do
      	      if v.Name == y.Name then
         	       v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
      	          v.HumanoidRootPart.Transparency = 0.5
        	        y.HumanoidRootPart.Transparency = 0.5
        	        v.Humanoid.WalkSpeed = 0
      	          y.Humanoid.WalkSpeed = 0
           	     v.Humanoid.JumpPower = 0
        	        y.Humanoid.JumpPower = 0
           	     if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                   end
                     sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
               	 end
    	      end
   	 end
   end

  spawn(function()
	while wait(.5) do
		pcall(function()
			if RandomBone then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
			end
		end)
	end
end)
  


----------------------------AutoElitehunter---------------------------------
spawn(function()
    while task.wait() do
        if AutoElitehunter then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not AutoElitehunter or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Diablo [Lv. 1750]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Deandre [Lv. 1750]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Urban [Lv. 1750]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    topos(CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625))
                    end
                end
            end)
        end
    end
end)
  
  spawn(function()
    while task.wait() do
        if AutoElitehunterHop then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not AutoElitehunterHop or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Diablo [Lv. 1750]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Deandre [Lv. 1750]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Urban [Lv. 1750]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     else
					    Hop()
                    end
                end
            end)
        end
    end
end)
----------------------------AutoQuestBartilo---------------------------------

spawn(function()
    while task.wait() do
        pcall(function()
            if AutoQuestBartilo then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledBandits == false then
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Swan Pirate [Lv. 775]" then
                                repeat task.wait()
                                    if v:FindFirstChild("HumanoidRootPart") then
                                 EquipWapon(_G.Setting_table.Weapon)
                                 BringBone()
                                 topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                 v.HumanoidRootPart.CanCollide = false
                                 v.Humanoid.WalkSpeed = 0
                                 v.Head.CanCollide = false
                                 v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                 game:GetService'VirtualUser':CaptureController()
                                 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                until not AutoQuestBartilo
                            end
                        end
                    else
                        topos(CFrame.new(-461.06024169921875, 73.02008056640625, 300.6614074707031))
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-461.06024169921875, 73.02008056640625, 300.6614074707031).Position).Magnitude <= 20 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                        end
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledBandits == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledSpring == false then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                repeat task.wait()
                                 BringBone()
                                    if v:FindFirstChild("HumanoidRootPart") then
                                  EquipWapon(_G.Setting_table.Weapon)
                                 topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                 v.HumanoidRootPart.CanCollide = false
                                 v.Humanoid.WalkSpeed = 0
                                 v.Head.CanCollide = false
                                 v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                 game:GetService'VirtualUser':CaptureController()
                                  game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                until not AutoQuestBartilo
                            end
                        end
					end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").KilledSpring == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress").DidPlates == false then
                        local Plates = game:GetService("Workspace").Map.Dressrosa.BartiloPlates
                        if Plates:FindFirstChild("Plate1").BrickColor ~= BrickColor.new("Olivine") then
                            topos(Plates:FindFirstChild("Plate1").CFrame)
                        elseif Plates:FindFirstChild("Plate2").BrickColor ~= BrickColor.new("Olivine") then
                            TP(Plates:FindFirstChild("Plate2").CFrame)
                        elseif Plates:FindFirstChild("Plate3").BrickColor ~= BrickColor.new("Olivine") then
                            TP(Plates:FindFirstChild("Plate3").CFrame)
                        elseif Plates:FindFirstChild("Plate4").BrickColor ~= BrickColor.new("Olivine") then
                            TP(Plates:FindFirstChild("Plate4").CFrame)
                        elseif Plates:FindFirstChild("Plate5").BrickColor ~= BrickColor.new("Olivine") then
                            TP(Plates:FindFirstChild("Plate5").CFrame)
                        elseif Plates:FindFirstChild("Plate6").BrickColor ~= BrickColor.new("Olivine") then
                            TP(Plates:FindFirstChild("Plate6").CFrame)
                        elseif Plates:FindFirstChild("Plate7").BrickColor ~= BrickColor.new("Olivine") then
                            TP(Plates:FindFirstChild("Plate7").CFrame)
                        elseif Plates:FindFirstChild("Plate8").BrickColor ~= BrickColor.new("Olivine") then
                            TP(Plates:FindFirstChild("Plate8").CFrame)
                        end 
                    end
                end
            end
        end)
    end
end)

----------------------------Esp---------------------------------
spawn(function()
		while wait() do
			if FlowerESP then
				UpdateFlowerChams() 
			end
			if DevilFruitESP then
				UpdateDevilChams() 
			end
			if ChestESP then
				UpdateChestChams() 
			end
			if ESPPlayer then
				UpdatePlayerChams()
			end
		end
	end)
	function isnil(thing)
		return (thing == nil)
	end
	local function round(n)
		return math.floor(tonumber(n) + 0.5)
	end
	Number = math.random(1, 1000000)
	function UpdatePlayerChams()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if ESPPlayer then
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Character.Head)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Character.Head
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.new(0,255,0)
							else
								name.TextColor3 = Color3.new(255,0,0)
							end
						else
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
						end
					else
						if v.Character.Head:FindFirstChild('NameEsp'..Number) then
							v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
	function UpdateChestChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if string.find(v.Name,"Chest") then
					if ChestESP then
						if string.find(v.Name,"Chest") then
							if not v:FindFirstChild('NameEsp'..Number) then
								local bill = Instance.new('BillboardGui',v)
								bill.Name = 'NameEsp'..Number
								bill.ExtentsOffset = Vector3.new(0, 1, 0)
								bill.Size = UDim2.new(1,200,1,30)
								bill.Adornee = v
								bill.AlwaysOnTop = true
								local name = Instance.new('TextLabel',bill)
								name.Font = "GothamBold"
								name.FontSize = "Size14"
								name.TextWrapped = true
								name.Size = UDim2.new(1,0,1,0)
								name.TextYAlignment = 'Top'
								name.BackgroundTransparency = 1
								name.TextStrokeTransparency = 0.5
								if v.Name == "Chest1" then
									name.TextColor3 = Color3.fromRGB(109, 109, 109)
									name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
								if v.Name == "Chest2" then
									name.TextColor3 = Color3.fromRGB(173, 158, 21)
									name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
								if v.Name == "Chest3" then
									name.TextColor3 = Color3.fromRGB(85, 255, 255)
									name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
							else
								v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
						end
					else
						if v:FindFirstChild('NameEsp'..Number) then
							v:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
	function UpdateDevilChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if DevilFruitESP then
					if string.find(v.Name, "Fruit") then   
						if not v.Handle:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Handle)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Handle
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
						else
							v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
						end
					end
				else
					if v.Handle:FindFirstChild('NameEsp'..Number) then
						v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end)
		end
	end
	function UpdateFlowerChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if v.Name == "Flower2" or v.Name == "Flower1" then
					if FlowerESP then 
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
							if v.Name == "Flower1" then 
								name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(0, 0, 255)
							end
							if v.Name == "Flower2" then
								name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(255, 0, 0)
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
						end
					else
						if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end   
			end)
		end
	end
----------------------------ChestFarm---------------------------------

spawn(function()
   while wait(.8) do
      if Chest_Farm then
          pcall(function()
			  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    			  if string.find(v.Name, "Chest") then
        		  print(v.Name)
          		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
         		 wait(.15)
                  game.Players.LocalPlayer.Character.Head:Destroy()
      		end
  		end
  		game.Players.LocalPlayer.Character.Head:Destroy()
  			for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				   if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
					   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
   					wait()
  					 firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
 					  end
 				  end
  			end)
         end
    end
end)
---------------------------AutoAllBoss---------------------------------
spawn(function()
    while task.wait() do
        if AutoFarmBoss then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == SelectBoss then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == SelectBoss then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						end
                    end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if AutoAllBoss then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name,"Boss") then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                BringBone()
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not AutoAllBoss or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if string.find(v.Name,"Boss") then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
						end
                    end
            end)
        end
    end
end)

----------------------------Status---------------------------------

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Melee then
                if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Defense then
                if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Sword then
                if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.PointStats)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Gun then
                if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.PointStats)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_DevilFruit then
                if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",_G.PointStats)
                end
            end
        end)
    end
end)

----------------------------AutoSea2---------------------------------

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoSea2 then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == false then
                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                        EquipTool("Key")
                        topos(CFrame.new(1349.697265625, 37.34928512573242, -1328.8309326171875))
                        game:GetService("Workspace").Map.Ice.Door.Size = Vector3.new(30,30,30)
                    end
                end
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == false then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                            if v:FindFirstChild("HumanoidRootPart") then
                                BringBone()
                                EquipTool(_G.Setting_table.Weapon)
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(20,0,0))
                            end
                        end
                    end
                    for x,y in pairs(game.ReplicatedStorage:GetChildren()) do
                        if y.Name == "Ice Admiral [Lv. 700] [Boss]" then
                            if y:FindFirstChild("HumanoidRootPart") then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - y.HumanoidRootPart.Position).Magnitude >= 100 then
                                    topos(y.HumanoidRootPart.CFrame * CFrame.new(20,0,0))
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
        while wait() do
            if _G.AutoThirdSea then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and W2 then
                        _G.AutoFarm = false
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                            topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                            if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                            end
                            wait(1.8)
                            if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.Setting_table.Weapon)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                            end
                        end
                    end
                end)
            end
        end
    end)


----------------------------Dough---------------------------------

spawn(function()
		while wait() do
			if _G.Auto_Open_Dough_Dungeon then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
							warn("Not Have Enough Material")
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						else
							if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
									if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.Setting_table.Weapon)
											StartCakeMagnet = true
											v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)  
											v.Humanoid.WalkSpeed = 0
											POSCAKE = v.HumanoidRootPart.CFrame
											TP(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.Auto_Open_Dough_Dungeon == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								StartCakeMagnet = false
								TP(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
							end
						end						
					elseif game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.Setting_table.Weapon)
										v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
										v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
										TP(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Open_Dough_Dungeon == false or not v.Parent or v.Humanoid.Health <= 0
								end    
							end    
						else
							TP(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
						local args = {
							[1] = "CakeScientist",
							[2] = "Check"
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													AutoHaki()
													EquipWeapon(_G.Setting_table.Weapon)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.Size = Vector3.new(80,80,80)
													TP(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
													game:GetService("VirtualUser"):CaptureController()
													game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
													sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
												until _G.Auto_Open_Dough_Dungeon == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
											end
										end
									end
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
									end
								end                    
							end
						else
							wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)

spawn(function()
    while task.wait() do
        if _G.AutoDoughtBoss then
         pcall(function()
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                    if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWapon(_G.Setting_table.Weapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                            until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                        end
                      end
                   else
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                             repeat wait()
                               EquipWapon(_G.Setting_table.Weapon)
                               topos(v.Humanoid.CFrame * CFrame.new(0,35,5))
                               BringBone()
                               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
                              until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                           end
                         end
                      end
                   end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                    elseif v.Name == "Cookie Crafter [Lv. 2200]" then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
                     elseif v.Name == "Cake Guard [Lv. 2225]" then
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
					elseif v.Name == "Baking Staff [Lv. 2250]" then
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
					elseif v.Name == "Head Baker [Lv. 2275]" then
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
					else
						topos(CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875))
                    end
                end
            end)
        end
    end
end)
----------------------------AutoBudySword---------------------------------
spawn(function()
    while wait() do
        if _G.AutoBudySword then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.Setting_table.Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if _G.AutoBudySword then
            pcall(function()
            local Mob1 = "Cake Queen [Lv. 2175] [Boss]"
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == Mob1 then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                               BringBone()
                                EquipWapon(_G.Setting_table.Weapon)
                                 topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                 v.HumanoidRootPart.CanCollide = false
                                 v.Humanoid.WalkSpeed = 0
                                 v.Head.CanCollide = false
                                 v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                 game:GetService'VirtualUser':CaptureController()
                                 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == Mob1 then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                    end
                end
            end)
        end
    end
end)


spawn(function()
    while task.wait() do
        if _G.AutoBudySwordHop then
            pcall(function()
            local Mob2 = "Cake Queen [Lv. 2175] [Boss]"
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == Mob1 then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                               BringBone()
                                EquipWapon(_G.Setting_table.Weapon)
                                 topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,5))
                                 v.HumanoidRootPart.CanCollide = false
                                 v.Humanoid.WalkSpeed = 0
                                 v.Head.CanCollide = false
                                 v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                 game:GetService'VirtualUser':CaptureController()
                                 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not _G.AutoBudySwordHop or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                    if v.Name == Mob2 then
                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                     else
						Hop()
                    end
                end
            end)
        end
    end
end)

----------------------------Dungeon---------------------------------

spawn(function()
    while task.wait() do
        if _G.Auto_Dungeon  then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat task.wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(500,500,500)
                            v.HumanoidRootPart.Transparency = 1
                        until not _G.Auto_Dungeon or v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end) 
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Auto_Dungeon then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,25,0))
                        end
                    end
                end
            end
        end)
    end)
    
   spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Auto_StartRaid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if game.PlaceId == 4442272183 then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif game.PlaceId == 7449423635 then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end
        end)
    end)

----------------------------Fighting Style-----------------------------

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoSuperhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end   
                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    _G.Setting_table.Weapon = "Superhuman"
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        _G.Setting_table.Weapon = "Black Leg"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        _G.Setting_table.Weapon = "Electro"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        _G.Setting_table.Weapon = "Fishman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        _G.Setting_table.Weapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoGodhuman then
                if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                    _G.Setting_table.Weapon = "Godhuman"
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 then
                        _G.Setting_table.Weapon = "Death Step"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 then
                        _G.Setting_table.Weapon = "Electric Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 then
                        _G.Setting_table.Weapon = "Sharkman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value <= 399 then
                        _G.Setting_table.Weapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    end 
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:Character("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do wait()
        if _G.AutoDeathStep then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    _G.Setting_table.Weapon = "Death Step"
                end  
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    _G.Setting_table.Weapon = "Death Step"
                end  
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                    _G.Setting_table.Weapon = "Black Leg"
                end 
            else 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
            end
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoSharkman then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                        topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                    else 
                        Ms = "Tide Keeper [Lv. 1475] [Boss]"
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then    
                                    OldCFrameShark = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.Setting_table.Weapon)
                                        v.Head.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameShark
                                        topos(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                end
                            end
                        else
                            topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                            wait(3)
                        end
                    end
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do 
            if _G.AutoElectricClaw then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        _G.Setting_table.Weapon = "Electric Claw"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        _G.Setting_table.Weapon = "Electric Claw"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                        _G.Setting_table.Weapon = "Electro"
                    end 
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                end
            end
            if _G.AutoElectricClaw then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        if AutoFarm == false then
                            TP(CFrame.new(-10371.4717, 330.764496, -10131.4199))           
                            wait(1.1)                
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            wait(.5)
                            TP(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))                            
                            wait(.5)
                            TP(CFrame.new(-10371.4717, 330.764496, -10131.4199))                           
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        elseif _G.AutoFarm == true then
                            _G.AutoFarm = false
                            wait(.5)
                            TP(CFrame.new(-10371.4717, 330.764496, -10131.4199))           
                            wait(1.1)                
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                            wait(.5)
                            TP(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))                            
                            wait(.5)
                            TP(CFrame.new(-10371.4717, 330.764496, -10131.4199))                           
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.Setting_table.Weapon = "Electric Claw"
                            _G.AutoFarm = true
                        end
                    end
                end
            end
        end
    end)    
end)

spawn(function()
    while wait() do
        if _G.AutoDragonTalon then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    _G.Setting_table.Weapon = "Dragon Talon"
                end  
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    _G.Setting_table.Weapon = "Dragon Talon"
                end  
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                    _G.Setting_table.Weapon = "Dragon Claw"
                end 
            else 
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
            end
        end
    end
end)

----------------------------FastAttack---------------------------------

local plr = game.Players.LocalPlayer

local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end

function AttackNoCD() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
            end
        end
    end
end
spawn(function()
	while wait(.5) do
		pcall(function()
			if FastAttack then
				repeat wait(_G.Fast_Delay)
					AttackNoCD()
				until not FastAttack
			end
		end)
	end
end)

