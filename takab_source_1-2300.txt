
repeat wait() until game:IsLoaded()
xwd = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
Gamename = xwd.Name
local games = {
   [game.PlaceId] = {
      Title = "Blox Fruits",
      Icons = "rbxassetid://7607745682",
      Welcome = function()
            return tostring(
              " "
                   ..

                        Gamename.. "!" .. " \nTAKAB HUB]"  .."\n Loadded..."
            )
      end
   }
}
if games[game.PlaceId] then
   if games[game.PlaceId].Title == "Blox Fruits" then
      local function notify(types, ...)
            if types == "Notify" then
               require(game.ReplicatedStorage.Notification).new(...):Display()
            end
      end
      notify("Notify", games[game.PlaceId].Welcome())
   end
end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "TAKAB HUB",
    Text = "Script By: RO OD and Curve"
  })
  
wait(2.4)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "DISCORD TAKAB HUB",
    Text = "https://discord.gg/DbNyvsRzZC"
  })
			--[[if _G.Team == "Pirate" then
				for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
					v.Function()
				end
			elseif _G.Team == "Marine" then
				for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
					v.Function()
				end
			else
				for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
					v.Function()
				end
			end
			if _G.Team == "Pirate" then
				for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
					v.Function()
				end
			elseif _G.Team == "Marine" then
				for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
					v.Function()
				end
			else
				for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
					v.Function()
				end
			end]]
wait(.5)
local UILib = {}

if game.CoreGui:FindFirstChild("Sawadd") then
    game.CoreGui:FindFirstChild("Sawadd"):Destroy()
end

local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
function RippleEffect(object)
    spawn(
        function()
            local ImageLabel = Instance.new("ImageLabel")
            ImageLabel.Name = "ImageLabel"
            ImageLabel.Parent = object
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.ZIndex = 18
            ImageLabel.Image = "rbxassetid://2708891598"
            ImageLabel.ImageTransparency = 0.800
            ImageLabel.ScaleType = Enum.ScaleType.Slice
            ImageLabel.SliceCenter = Rect.new(204, 183, 220, 284)
            ImageLabel.SliceScale = 0.050
            ImageLabel.Size = UDim2.new(0, 0, 1, 0)

            ImageLabel.Position =
                UDim2.new(
                (Mouse.X - ImageLabel.AbsolutePosition.X) / object.AbsoluteSize.X,
                0,
                (Mouse.Y - ImageLabel.AbsolutePosition.Y) / object.AbsoluteSize.Y,
                0
            )
            TweenService:Create(
                ImageLabel,
                TweenInfo.new(.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out),
                {Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 1, 0)}
            ):Play()

            wait(.5)
            TweenService:Create(
                ImageLabel,
                TweenInfo.new(.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out),
                {ImageTransparency = 1}
            ):Play()

            wait(1)
            ImageLabel:Destroy()
        end
    )
end
function dragify(Frame)
    dragToggle = nil
    dragSpeed = .25 -- You can edit this.
    dragInput = nil
    dragStart = nil
    dragPos = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseButton1 or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragToggle = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(
                    function()
                        if (input.UserInputState == Enum.UserInputState.End) then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )

    Frame.InputChanged:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragInput = input
            end
        end
    )

    game:GetService("UserInputService").InputChanged:Connect(
        function(input)
            if (input == dragInput and dragToggle) then
                updateInput(input)
            end
        end
    )
end

function UILib:CreateMain(txt, logo)
    local Sawadd = Instance.new("ScreenGui")
    local BackgroundFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local OntopPage = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local FIRSTNAME = Instance.new("TextLabel")
    local NAME = Instance.new("TextLabel")
    local NAME2 = Instance.new("TextLabel")
    local SmallLogo = Instance.new("ImageLabel")
    local TabBar = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local BigLogo = Instance.new("ImageLabel")
    local TabList = Instance.new("ScrollingFrame")
    local LayoutBar = Instance.new("UIListLayout")
    local PaggingBar = Instance.new("UIPadding")

    Sawadd.Name = "Sawadd"
    Sawadd.Parent = game.CoreGui
    Sawadd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	UserInputService.InputBegan:Connect(
  function(io, p)
     if io.KeyCode == Enum.KeyCode.RightControl then
       Sawadd.Enabled = not Sawadd.Enabled
     end
  end
 )

    BackgroundFrame.Name = "BackgroundFrame"
    BackgroundFrame.Parent = Sawadd
    BackgroundFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    BackgroundFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    BackgroundFrame.ClipsDescendants = true
    BackgroundFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    BackgroundFrame.Size = UDim2.new(0, 525, 0, 453)
    dragify(BackgroundFrame)

    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Name = ""
    UICorner.Parent = BackgroundFrame

    OntopPage.Name = "OntopPage"
    OntopPage.Parent = BackgroundFrame
    OntopPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    OntopPage.BorderSizePixel = 0
    OntopPage.Position = UDim2.new(0.00761904754, 0, 0, 0)
    OntopPage.Size = UDim2.new(0, 525, 0, 27)

    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Name = ""
    UICorner_2.Parent = OntopPage

    FIRSTNAME.Name = "FIRSTNAME"
    FIRSTNAME.Parent = OntopPage
    FIRSTNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FIRSTNAME.BackgroundTransparency = 1.000
    FIRSTNAME.Position = UDim2.new(0.0533333421, 0, 0, 0)
    FIRSTNAME.Size = UDim2.new(0, 137, 0, 27)
    FIRSTNAME.Font = Enum.Font.GothamSemibold
    FIRSTNAME.Text = txt
    FIRSTNAME.TextColor3 = Color3.fromRGB(255, 255, 255)
    FIRSTNAME.TextSize = 17.000
    FIRSTNAME.TextXAlignment = Enum.TextXAlignment.Left

    NAME.Name = "NAME"
    NAME.Parent = OntopPage
    NAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NAME.BackgroundTransparency = 1.000
    NAME.Position = UDim2.new(0.171428561, 0, 0, 0)
    NAME.Size = UDim2.new(0, 137, 0, 27)
    NAME.Font = Enum.Font.GothamSemibold
    NAME.Text = "HUB"
    NAME.TextColor3 = Color3.fromRGB(155, 142, 0)
    NAME.TextSize = 17.000
    NAME.TextXAlignment = Enum.TextXAlignment.Left
    
    NAME2.Name = "NAME2"
    NAME2.Parent = OntopPage
    NAME2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NAME2.BackgroundTransparency = 1.000
    NAME2.Position = UDim2.new(0.171428561, 0, 0, 0)
    NAME2.Size = UDim2.new(0, 137, 0, 27)
    NAME2.Font = Enum.Font.GothamSemibold
    NAME2.Text = "TA"
    NAME2.TextColor3 = Color3.fromRGB(155, 142, 0)
    NAME2.TextSize = 17.000
    NAME2.TextXAlignment = Enum.TextXAlignment.Left
    

    SmallLogo.Name = "SmallLogo"
    SmallLogo.Parent = OntopPage
    SmallLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SmallLogo.BackgroundTransparency = 1.000
    SmallLogo.Size = UDim2.new(0, 27, 0, 27)
    SmallLogo.Image = "rbxassetid://" .. tostring(logo)

    TabBar.Name = "TabBar"
    TabBar.Parent = BackgroundFrame
    TabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TabBar.Position = UDim2.new(0, 0, 0.059602648, 0)
    TabBar.Size = UDim2.new(0, 165, 0, 426)

    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Name = ""
    UICorner_3.Parent = TabBar

    BigLogo.Name = "BigLogo"
    BigLogo.Parent = TabBar
    BigLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BigLogo.BackgroundTransparency = 1.000
    BigLogo.Position = UDim2.new(0.183452412, 0, 0, 0)
    BigLogo.Size = UDim2.new(0, 100, 0, 100)
    BigLogo.Image = "rbxassetid://" .. tostring(logo)

    TabList.Name = "TabList"
    TabList.Parent = TabBar
    TabList.Active = true
    TabList.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TabList.BackgroundTransparency = 1.000
    TabList.BorderColor3 = Color3.fromRGB(30, 30, 30)
    TabList.Position = UDim2.new(0, 0, 0.218309864, 0)
    TabList.Size = UDim2.new(0, 160, 0, 333)
    TabList.CanvasSize = UDim2.new(0, 0, 0, 100)
    TabList.ScrollBarThickness = 4
    TabList.AutomaticCanvasSize = Enum.AutomaticSize.Y

    LayoutBar.Name = "LayoutBar"
    LayoutBar.Parent = TabList
    LayoutBar.SortOrder = Enum.SortOrder.LayoutOrder
    LayoutBar.Padding = UDim.new(0, 4)

    PaggingBar.Name = "PaggingBar"
    PaggingBar.Parent = TabList
    PaggingBar.PaddingTop = UDim.new(0, 15)

    local Folder_Page = Instance.new("Folder")

    Folder_Page.Name = "Folder_Page"
    Folder_Page.Parent = BackgroundFrame

    local TabL = {}
    function TabL:CreateTab(txt, logo, loadede)
        loadede = loadede or false
        local TabFrame = Instance.new("Frame")
        local Line1 = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local Transpane = Instance.new("Frame")
        local UICorner_5 = Instance.new("UICorner")
        local TabLogo = Instance.new("ImageLabel")
        local TextLabel = Instance.new("TextLabel")
        local TabClick = Instance.new("TextButton")
        local PageMain = Instance.new("Frame")
        local PageReal = Instance.new("Frame")
        local ScrollingFrame_ = Instance.new("ScrollingFrame")
        local PaggingBar_Scol = Instance.new("UIPadding")
        local UIListLayout = Instance.new("UIListLayout")

        TabFrame.Name = "TabFrame"
        TabFrame.Parent = TabList
        TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabFrame.BackgroundTransparency = 1.000
        TabFrame.Size = UDim2.new(0, 131, 0, 42)

        Line1.Name = "Line1"
        Line1.Parent = TabFrame
        Line1.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
        Line1.Size = UDim2.new(0, 4, 0, 42)
        Line1.BackgroundTransparency = 1

        UICorner_4.Parent = Line1

        Transpane.Name = "Transpane"
        Transpane.Parent = TabFrame
        Transpane.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Transpane.BackgroundTransparency = 1
        Transpane.Position = UDim2.new(0.0305343512, 0, 0, 0)
        Transpane.Size = UDim2.new(0, 138, 0, 42)

        UICorner_5.CornerRadius = UDim.new(0, 4)
        UICorner_5.Parent = Transpane

        TabLogo.Name = "TabLogo"
        TabLogo.Parent = TabFrame
        TabLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabLogo.BackgroundTransparency = 1.000
        TabLogo.Position = UDim2.new(0, 13, 0, 7)
        TabLogo.Size = UDim2.new(0, 25, 0, 25)
        TabLogo.ImageColor3 = Color3.fromRGB(155, 142, 0)
        TabLogo.Image = "rbxassetid://" .. tostring(logo)
        TabLogo.ImageTransparency = 0.2

        TextLabel.Parent = TabFrame
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.412213743, 0, 0.142857149, 0)
        TextLabel.Size = UDim2.new(0, 104, 0, 29)
        TextLabel.Font = Enum.Font.SourceSansBold
        TextLabel.Text = txt
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 18.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.TextTransparency = 0.2

        TabClick.Name = "TabClick"
        TabClick.Parent = TabFrame
        TabClick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabClick.BackgroundTransparency = 1.000
        TabClick.Size = UDim2.new(0, 158, 0, 42)
        TabClick.Font = Enum.Font.SourceSans
        TabClick.Text = ""
        TabClick.TextColor3 = Color3.fromRGB(0, 0, 0)
        TabClick.TextSize = 14.000

        PageMain.Name = "PageMain"
        PageMain.Parent = Folder_Page
        PageMain.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        PageMain.BorderSizePixel = 0
        PageMain.ClipsDescendants = true
        PageMain.Position = UDim2.new(0.304761916, 0, 0.059602648, 0)
        PageMain.Size = UDim2.new(0, 365, 0, 426)
        PageMain.Visible = false

        PageReal.Name = "PageReal"
        PageReal.Parent = PageMain
        PageReal.BorderSizePixel = 0
        PageReal.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        PageReal.Position = UDim2.new(0.00999999978, 0, 0.00899999961, 0)
        PageReal.Size = UDim2.new(0, 365, 0, 426)

        ScrollingFrame_.Name = "ScrollingFrame_"
        ScrollingFrame_.Parent = PageReal
        ScrollingFrame_.Active = true
        ScrollingFrame_.AnchorPoint = Vector2.new(0.5, 0.5)
        ScrollingFrame_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ScrollingFrame_.BackgroundTransparency = 1.000
        ScrollingFrame_.BorderColor3 = Color3.fromRGB(30, 30, 30)
        ScrollingFrame_.Position = UDim2.new(0.5, 0, 0.5, 0)
        ScrollingFrame_.Size = UDim2.new(0, 349, 0, 0)
        ScrollingFrame_.CanvasSize = UDim2.new(0, 0, 0, 137)
        ScrollingFrame_.ScrollBarThickness = 0
        ScrollingFrame_.AutomaticCanvasSize = Enum.AutomaticSize.Y

        PaggingBar_Scol.Name = "PaggingBar_Scol"
        PaggingBar_Scol.Parent = ScrollingFrame_
        PaggingBar_Scol.PaddingLeft = UDim.new(0, 5)
        PaggingBar_Scol.PaddingTop = UDim.new(0, 15)

        UIListLayout.Parent = ScrollingFrame_
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 7)

        if loadede then
            TweenService:Create(
                Line1,
                TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {BackgroundTransparency = 0}
            ):Play()
            TweenService:Create(
                Transpane,
                TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {BackgroundTransparency = 0.990}
            ):Play()
            TweenService:Create(
                TabLogo,
                TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {ImageTransparency = 0}
            ):Play()
            TweenService:Create(
                TextLabel,
                TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {TextTransparency = 0}
            ):Play()
            for i, v in pairs(Folder_Page:GetDescendants()) do
                if v:IsA "ScrollingFrame" then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                        {Size = UDim2.new(0, 349, 0, 0)}
                    ):Play()
                end
            end
            wait(0.12)
            for i, v in pairs(Folder_Page:GetChildren()) do
                if v:IsA "Frame" then
                    v.Visible = false
                end
            end
            PageMain.Visible = true
            TweenService:Create(
                ScrollingFrame_,
                TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 349, 0, 409)}
            ):Play()
        end

        TabClick.MouseButton1Click:Connect(
            function()
                if PageMain.Visible == false then
                    for i, v in pairs(TabList:GetDescendants()) do
                        if v.Name == "Line1" then
                            v.BackgroundTransparency = 1
                        end
                        if v.Name == "Transpane" then
                            v.BackgroundTransparency = 1
                        end
                        if v.Name == "TabLogo" then
                            v.ImageTransparency = 0.2
                        end
                        if v.Name == "TextLabel" then
                            v.TextTransparency = 0.2
                        end
                    end
                    TweenService:Create(
                        Line1,
                        TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        Transpane,
                        TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {BackgroundTransparency = 0.990}
                    ):Play()
                    TweenService:Create(
                        TabLogo,
                        TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {ImageTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextLabel,
                        TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {TextTransparency = 0}
                    ):Play()
                    for i, v in pairs(Folder_Page:GetDescendants()) do
                        if v:IsA "ScrollingFrame" then
                            TweenService:Create(
                                v,
                                TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                                {Size = UDim2.new(0, 349, 0, 0)}
                            ):Play()
                        end
                    end
                    wait(0.12)
                    for i, v in pairs(Folder_Page:GetChildren()) do
                        if v:IsA "Frame" then
                            v.Visible = false
                        end
                    end
                    PageMain.Visible = true
                    TweenService:Create(
                        ScrollingFrame_,
                        TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                        {Size = UDim2.new(0, 349, 0, 409)}
                    ):Play()
                end
            end
        )
        local All = {}
        function All:CreateTi(txt)
            local Ti = Instance.new("Frame")
            local Ti2 = Instance.new("TextLabel")
            local Ti3 = Instance.new("TextLabel")
            local TextTi = Instance.new("TextLabel")
            Ti.Name = "Ti"
            Ti.Parent = ScrollingFrame_
            Ti.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Ti.BackgroundTransparency = 1.000
            Ti.BorderSizePixel = 0
            Ti.ClipsDescendants = true
            Ti.Position = UDim2.new(0.5, 0, 0.5, 0)
            Ti.Size = UDim2.new(0, 300, 0, 33)

            Ti2.Name = "Ti2"
            Ti2.Parent = Ti
            Ti2.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti2.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            Ti2.BorderSizePixel = 0
            Ti2.Position = UDim2.new(0, 0, 0.5, 0)
            Ti2.Size = UDim2.new(0, 150, 0, 1)
            Ti2.Font = Enum.Font.GothamSemibold
            Ti2.Text = ""
            Ti2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Ti2.TextSize = 13.000

            Ti3.Name = "Ti3"
            Ti3.Parent = Ti
            Ti3.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti3.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            Ti3.BorderSizePixel = 0
            Ti3.Position = UDim2.new(1, 0, 0.5, 0)
            Ti3.Size = UDim2.new(0, 150, 0, 1)
            Ti3.Font = Enum.Font.GothamSemibold
            Ti3.Text = ""
            Ti3.TextColor3 = Color3.fromRGB(255, 255, 255)
            Ti3.TextSize = 13.000

            TextTi.Name = "TextTi"
            TextTi.Parent = Ti
            TextTi.AnchorPoint = Vector2.new(0.5, 0.5)
            TextTi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextTi.BackgroundTransparency = 1.000
            TextTi.BorderSizePixel = 0
            TextTi.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextTi.Size = UDim2.new(0, 150, 0, 20)
            TextTi.Font = Enum.Font.GothamSemibold
            TextTi.Text = txt
            TextTi.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextTi.TextSize = 12.000
        end
        function All:CreateLabel(txt)
            local Label = Instance.new("Frame")
            local LabelText = Instance.new("TextLabel")
            Label.Name = "Label"
            Label.Parent = ScrollingFrame_
            Label.AnchorPoint = Vector2.new(0.5, 0.5)
            Label.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Label.BackgroundTransparency = 1.000
            Label.BorderSizePixel = 0
            Label.ClipsDescendants = true
            Label.Position = UDim2.new(0.436046511, 0, 0.153129384, 0)
            Label.Size = UDim2.new(0, 300, 0, 40)

            LabelText.Name = "LabelText"
            LabelText.Parent = Label
            LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.BackgroundTransparency = 1.000
            LabelText.BorderSizePixel = 0
            LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
            LabelText.Size = UDim2.new(0, 150, 0, 20)
            LabelText.Font = Enum.Font.GothamSemibold
            LabelText.Text = txt
            LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.TextSize = 14.000
        end

        function All:CreateToggle(txt, def, callback)
            callback = callback or function()
                end
            local Toggle = Instance.new("Frame")
            local ToggleText = Instance.new("TextLabel")
            local ToggleFrameIn = Instance.new("Frame")
            local UICorner_6 = Instance.new("UICorner")
            local check = Instance.new("ImageButton")
            local UICorner_7 = Instance.new("UICorner")
            local ToggleTap = Instance.new("TextButton")
            Toggle.Name = "Toggle"
            Toggle.Parent = ScrollingFrame_
            Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            Toggle.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Toggle.BackgroundTransparency = 1.000
            Toggle.BorderSizePixel = 0
            Toggle.ClipsDescendants = true
            Toggle.Position = UDim2.new(0, 152, 0, 62)
            Toggle.Size = UDim2.new(0, 300, 0, 40)

            ToggleText.Name = "ToggleText"
            ToggleText.Parent = Toggle
            ToggleText.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.BackgroundTransparency = 1.000
            ToggleText.BorderSizePixel = 0
            ToggleText.Position = UDim2.new(0, 148, 0, 20)
            ToggleText.Size = UDim2.new(0, 154, 0, 20)
            ToggleText.Font = Enum.Font.GothamSemibold
            ToggleText.Text = txt
            ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.TextSize = 14.000
            ToggleText.TextXAlignment = Enum.TextXAlignment.Left

            ToggleFrameIn.Name = "ToggleFrameIn"
            ToggleFrameIn.Parent = Toggle
            ToggleFrameIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            ToggleFrameIn.Position = UDim2.new(0, 21, 0, 7)
            ToggleFrameIn.Size = UDim2.new(0, 28, 0, 28)

            UICorner_6.CornerRadius = UDim.new(0, 3)
            UICorner_6.Parent = ToggleFrameIn

            check.Name = "check"
            check.Parent = ToggleFrameIn
            check.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            check.LayoutOrder = 1
            check.Position = UDim2.new(0, 2, 0, 2)
            check.Size = UDim2.new(0, 24, 0, 24)
            check.ZIndex = 2
            check.AutoButtonColor = false
            check.Image = "rbxassetid://3926305904"
            check.ImageColor3 = Color3.fromRGB(27, 27, 27)
            check.ImageRectOffset = Vector2.new(312, 4)
            check.ImageRectSize = Vector2.new(24, 24)

            UICorner_7.CornerRadius = UDim.new(0, 3)
            UICorner_7.Parent = check

            ToggleTap.Name = "ToggleTap"
            ToggleTap.Parent = Toggle
            ToggleTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleTap.BackgroundTransparency = 1.000
            ToggleTap.Size = UDim2.new(0, 300, 0, 42)
            ToggleTap.Font = Enum.Font.SourceSans
            ToggleTap.Text = ""
            ToggleTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            ToggleTap.TextSize = 14.000

            if def then
                callback(true)
                check.BackgroundTransparency = 1
            else
                callback(false)
            end
            ToggleTap.MouseButton1Click:Connect(
                function()
                    if check.BackgroundTransparency == 1 then
                        callback(false)
                        TweenService:Create(
                            check,
                            TweenInfo.new(0.15, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut),
                            {BackgroundTransparency = 0}
                        ):Play()
                    else
                        callback(true)
                        TweenService:Create(
                            check,
                            TweenInfo.new(0.15, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut),
                            {BackgroundTransparency = 1}
                        ):Play()
                    end
                end
            )
        end

        function All:CreateButton(txt, callback)
            callback = callback or function()
                end
            local Button = Instance.new("Frame")
            local ButtonTap = Instance.new("TextButton")
            local UICorner_8 = Instance.new("UICorner")
            local UIGradient = Instance.new("UIGradient")
            local TextLabel_2 = Instance.new("TextLabel")
            local UICorner_9 = Instance.new("UICorner")
            local UICorner_10 = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = ScrollingFrame_
            Button.AnchorPoint = Vector2.new(0.5, 0.5)
            Button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Button.BackgroundTransparency = 1.000
            Button.BorderSizePixel = 0
            Button.ClipsDescendants = true
            Button.Position = UDim2.new(0, 150, 0, 155)
            Button.Size = UDim2.new(0, 300, 0, 42)

            ButtonTap.Name = "ButtonTap"
            ButtonTap.Parent = Button
            ButtonTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonTap.AnchorPoint = Vector2.new(0, 0)
            ButtonTap.Position = UDim2.new(0, 46, 0, 6)
            ButtonTap.Size = UDim2.new(0, 219, 0, 28)
            ButtonTap.AutoButtonColor = false
            ButtonTap.Font = Enum.Font.SourceSans
            ButtonTap.Text = ""
            ButtonTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            ButtonTap.TextSize = 14.000
            ButtonTap.BackgroundTransparency = 0.2

            UICorner_8.CornerRadius = UDim.new(0, 3)
            UICorner_8.Parent = ButtonTap

            UIGradient.Color =
                ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(155, 142, 0)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 28, 34))
            }
            UIGradient.Parent = ButtonTap

            TextLabel_2.Parent = ButtonTap
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.Position = UDim2.new(0, 24, 0, 0)
            TextLabel_2.Size = UDim2.new(0, 175, 0, 27)
            TextLabel_2.Font = Enum.Font.SourceSansBold
            TextLabel_2.Text = txt
            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.TextSize = 15.000

            UICorner_9.CornerRadius = UDim.new(0, 4)
            UICorner_9.Name = ""
            UICorner_9.Parent = PageReal

            UICorner_10.Name = ""
            UICorner_10.Parent = PageReal
            ButtonTap.MouseEnter:Connect(
                function()
                end
            )
            ButtonTap.MouseButton1Click:Connect(
                function()
                    RippleEffect(ButtonTap)
                    pcall(callback)
                end
            )
        end

        function All:CreateDropdown(txt, list, logo, def, callback)
            local Dropdown = Instance.new("Frame")
            local DropdownIn = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local DropdownOut = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local DropdownText = Instance.new("TextLabel")
            local DropdownLogo = Instance.new("ImageLabel")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ScrollingFrame_
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0, 183)
            Dropdown.Size = UDim2.new(0, 323, 0, 47)

            DropdownIn.Name = "DropdownIn"
            DropdownIn.Parent = Dropdown
            DropdownIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            DropdownIn.Position = UDim2.new(0, 0, 0, 7)
            DropdownIn.Size = UDim2.new(0, 320, 0, 38)

            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = DropdownIn

            DropdownOut.Name = "DropdownOut"
            DropdownOut.Parent = DropdownIn
            DropdownOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            DropdownOut.Position = UDim2.new(0, 1, 0, 1)
            DropdownOut.Size = UDim2.new(0, 317, 0, 36)

            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = DropdownOut

            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropdownOut
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.Position = UDim2.new(0, 8, 0, 0)
            DropdownText.Size = UDim2.new(0, 280, 0, 33)
            DropdownText.Font = Enum.Font.SourceSansSemibold
            DropdownText.Text = txt
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextSize = 17.000
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left

            local DropdownTap = Instance.new("TextButton")

            DropdownTap.Name = "DropdownTap"
            DropdownTap.Parent = DropdownIn
            DropdownTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTap.BackgroundTransparency = 1.000
            DropdownTap.Size = UDim2.new(0, 316, 0, 36)
            DropdownTap.Font = Enum.Font.SourceSans
            DropdownTap.Text = ""
            DropdownTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownTap.TextSize = 14.000

            if def then
                callback(tostring(def))
                DropdownText.Text = txt .. " : " .. tostring(def)
            end
            DropdownLogo.Name = "DropdownLogo"
            DropdownLogo.Parent = DropdownOut
            DropdownLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLogo.BackgroundTransparency = 1.000
            DropdownLogo.Position = UDim2.new(0, 282, 0, 3)
            DropdownLogo.Size = UDim2.new(0, 32, 0, 32)
            DropdownLogo.Image = "rbxassetid://" .. tostring(logo)

            local ItemList = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")

            ItemList.Name = "ItemList"
            ItemList.Parent = ScrollingFrame_
            ItemList.Active = true
            ItemList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemList.BackgroundTransparency = 1.000
            ItemList.BorderColor3 = Color3.fromRGB(27, 27, 27)
            ItemList.Position = UDim2.new(0, 0, -0.0209009312, 0)
            ItemList.Size = UDim2.new(0, 321, 0, 120)
            ItemList.CanvasSize = UDim2.new(0, 0, 0, 0)
            ItemList.ScrollBarThickness = 3
            ItemList.Visible = false
            ItemList.AutomaticCanvasSize = Enum.AutomaticSize.Y

            local Dropdownz = {}
            function Dropdownz:CreateTabList(z)
                for i, v in next, z do
                    local eq = Instance.new("TextButton")
                    local UICorner = Instance.new("UICorner")
                    eq.Parent = ItemList
                    eq.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
                    eq.Size = UDim2.new(0, 316, 0, 19)
                    eq.Font = Enum.Font.SourceSansBold
                    eq.Text = v
                    eq.TextColor3 = Color3.fromRGB(255, 255, 255)
                    eq.TextSize = 17.000
                    eq.MouseButton1Click:Connect(
                        function()
                            callback(eq.Text)
                            DropdownText.Text = txt .. " : " .. eq.Text
                            TweenService:Create(
                                ItemList,
                                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                                {Size = UDim2.new(0, 323, 0, 12)}
                            ):Play()
                            wait(.3)
                            ItemList.Visible = false
                        end
                    )
                    UICorner.CornerRadius = UDim.new(0, 4)
                    UICorner.Parent = eq
                end
            end

            UIListLayout.Parent = ItemList
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 1)

            Dropdownz:CreateTabList(list)

            DropdownTap.MouseButton1Click:Connect(
                function()
                    if ItemList.Visible == false then
                        ItemList.Visible = true
                        TweenService:Create(
                            ItemList,
                            TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Size = UDim2.new(0, 323, 0, 54)}
                        ):Play()
                    else
                        TweenService:Create(
                            ItemList,
                            TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Size = UDim2.new(0, 323, 0, 12)}
                        ):Play()
                        wait(.3)
                        ItemList.Visible = false
                    end
                end
            )
            function Dropdownz:Refresh(eeqeeqqe)
                for i, v in pairs(ItemList:GetChildren()) do
                    if v:IsA "TextButton" then
                        v:Destroy()
                    end
                end
                Dropdownz:CreateTabList(eeqeeqqe)
                TweenService:Create(
                    ItemList,
                    TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                    {Size = UDim2.new(0, 323, 0, 12)}
                ):Play()
                wait(.3)
                ItemList.Visible = false
            end
            return Dropdownz
        end
        function All:CreateMultiDropdown(txt, list, logo, def, callback)
            local Dropdownlistmulti = {}
            local Dropdown = Instance.new("Frame")
            local DropdownIn = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local DropdownOut = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local DropdownText = Instance.new("TextLabel")
            local DropdownLogo = Instance.new("ImageLabel")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ScrollingFrame_
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0, 183)
            Dropdown.Size = UDim2.new(0, 323, 0, 47)

            DropdownIn.Name = "DropdownIn"
            DropdownIn.Parent = Dropdown
            DropdownIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            DropdownIn.Position = UDim2.new(0, 0, 0, 7)
            DropdownIn.Size = UDim2.new(0, 320, 0, 38)

            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = DropdownIn

            DropdownOut.Name = "DropdownOut"
            DropdownOut.Parent = DropdownIn
            DropdownOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            DropdownOut.Position = UDim2.new(0, 1, 0, 1)
            DropdownOut.Size = UDim2.new(0, 317, 0, 36)

            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = DropdownOut

            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropdownOut
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.Position = UDim2.new(0, 8, 0, 0)
            DropdownText.Size = UDim2.new(0, 280, 0, 33)
            DropdownText.Font = Enum.Font.SourceSansSemibold
            DropdownText.Text = txt
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextSize = 17.000
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left

            local DropdownTap = Instance.new("TextButton")

            DropdownTap.Name = "DropdownTap"
            DropdownTap.Parent = DropdownIn
            DropdownTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTap.BackgroundTransparency = 1.000
            DropdownTap.Size = UDim2.new(0, 316, 0, 36)
            DropdownTap.Font = Enum.Font.SourceSans
            DropdownTap.Text = ""
            DropdownTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownTap.TextSize = 14.000

            if def then
                callback(tostring(def))
                DropdownText.Text = txt .. " : " .. tostring(def)
            end
            DropdownLogo.Name = "DropdownLogo"
            DropdownLogo.Parent = DropdownOut
            DropdownLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLogo.BackgroundTransparency = 1.000
            DropdownLogo.Position = UDim2.new(0, 282, 0, 3)
            DropdownLogo.Size = UDim2.new(0, 32, 0, 32)
            DropdownLogo.Image = "rbxassetid://" .. tostring(logo)

            local ItemList = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")

            ItemList.Name = "ItemList"
            ItemList.Parent = ScrollingFrame_
            ItemList.Active = true
            ItemList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemList.BackgroundTransparency = 1.000
            ItemList.BorderColor3 = Color3.fromRGB(27, 27, 27)
            ItemList.Position = UDim2.new(0, 0, -0.0209009312, 0)
            ItemList.Size = UDim2.new(0, 321, 0, 120)
            ItemList.CanvasSize = UDim2.new(0, 0, 0, 0)
            ItemList.ScrollBarThickness = 3
            ItemList.Visible = false
            ItemList.AutomaticCanvasSize = Enum.AutomaticSize.Y

            local Dropdownz = {}
            function Dropdownz:CreateTabList(z)
                local eq = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                eq.Parent = ItemList
                eq.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
                eq.Size = UDim2.new(0, 316, 0, 19)
                eq.Font = Enum.Font.SourceSansBold
                eq.Text = z
                eq.TextColor3 = Color3.fromRGB(255, 255, 255)
                eq.TextSize = 17.000
                eq.MouseButton1Click:Connect(
                    function()
                        if eq.BackgroundColor3 == Color3.fromRGB(100, 18, 22) then
                            for i, v in pairs(Dropdownlistmulti) do
                                if v == eq.Text then
                                    table.remove(Dropdownlistmulti, i)
                                end
                            end
                            TweenService:Create(
                                eq,
                                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                                {BackgroundColor3 = Color3.fromRGB(155, 142, 0)}
                            ):Play()
                        else
                            if not table.find(Dropdownlistmulti, eq.Text) then
                                table.insert(Dropdownlistmulti, eq.Text)
                            end
                            TweenService:Create(
                                eq,
                                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                                {BackgroundColor3 = Color3.fromRGB(100, 18, 22)}
                            ):Play()
                        end
                        DropdownText.Text = txt .. " : " .. table.concat(Dropdownlistmulti, " , ")
                        callback(Dropdownlistmulti)
                    end
                )
                UICorner.CornerRadius = UDim.new(0, 4)
                UICorner.Parent = eq
            end

            UIListLayout.Parent = ItemList
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 1)
            for i, v in next, list do
                Dropdownz:CreateTabList(v)
            end

            DropdownTap.MouseButton1Click:Connect(
                function()
                    if ItemList.Visible == false then
                        ItemList.Visible = true
                        TweenService:Create(
                            ItemList,
                            TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Size = UDim2.new(0, 323, 0, 54)}
                        ):Play()
                    else
                        TweenService:Create(
                            ItemList,
                            TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Size = UDim2.new(0, 323, 0, 12)}
                        ):Play()
                        wait(.3)
                        ItemList.Visible = false
                    end
                end
            )
            function Dropdownz:Refresh(eeqeeqqe)
                for i, v in pairs(ItemList:GetChildren()) do
                    if v:IsA "TextButton" then
                        v:Destroy()
                    end
                end
                for i, v in next, eeqeeqqe do
                    Dropdownz:CreateTabList(v)
                end
                TweenService:Create(
                    ItemList,
                    TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                    {Size = UDim2.new(0, 323, 0, 12)}
                ):Play()
                wait(.3)
                ItemList.Visible = false
            end
            return Dropdownz
        end

        function All:CreateSlider(Title, min, max, default, callback)
            local Slider = Instance.new("Frame")
            local SliderFrame_ = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local SliderOut = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local SliderText = Instance.new("TextLabel")
            local SliderText1 = Instance.new("TextLabel")
            local SliderIn = Instance.new("Frame")
            local SliderBackground = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local UICorner_4 = Instance.new("UICorner")
            local TextButton = Instance.new("TextButton")

            Slider.Name = "Slider"
            Slider.Parent = ScrollingFrame_
            Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Slider.BackgroundTransparency = 1.000
            Slider.Position = UDim2.new(0, 0, 0, 244)
            Slider.Size = UDim2.new(0, 323, 0, 59)

            SliderFrame_.Name = "SliderFrame_"
            SliderFrame_.Parent = Slider
            SliderFrame_.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            SliderFrame_.Position = UDim2.new(0, 0, 0, 7)
            SliderFrame_.Size = UDim2.new(0, 320, 0, 43)

            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = SliderFrame_

            SliderOut.Name = "SliderOut"
            SliderOut.Parent = SliderFrame_
            SliderOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            SliderOut.Position = UDim2.new(0, 1, 0, 1)
            SliderOut.Size = UDim2.new(0, 317, 0, 40)

            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = SliderOut

            SliderText.Name = "SliderText"
            SliderText.Parent = SliderOut
            SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.BackgroundTransparency = 1.000
            SliderText.Position = UDim2.new(0, 8, 0, 4)
            SliderText.Size = UDim2.new(0, 262, 0, 16)
            SliderText.Font = Enum.Font.SourceSansSemibold
            SliderText.Text = Title
            SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.TextSize = 14.000
            SliderText.TextXAlignment = Enum.TextXAlignment.Left

            SliderText1.Name = "SliderText1"
            SliderText1.Parent = SliderOut
            SliderText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText1.BackgroundTransparency = 1.000
            SliderText1.Position = UDim2.new(0, 275, 0, 4)
            SliderText1.Size = UDim2.new(0, 40, 0, 16)
            SliderText1.Font = Enum.Font.SourceSansSemibold
            SliderText1.Text = "12"
            SliderText1.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderText1.TextSize = 14.000

            SliderIn.Name = "SliderIn"
            SliderIn.Parent = SliderFrame_
            SliderIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderIn.Position = UDim2.new(0, 8, 0, 28)
            SliderIn.Size = UDim2.new(0, 301, 0, 5)

            SliderBackground.Name = "SliderBackground"
            SliderBackground.Parent = SliderIn
            SliderBackground.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            SliderBackground.Size = UDim2.new(0, 301, 0, 5)

            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = SliderBackground

            UICorner_4.CornerRadius = UDim.new(0, 4)
            UICorner_4.Parent = SliderIn

            TextButton.Parent = SliderFrame_
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.Position = UDim2.new(0.0187500007, 0, 0.604651153, 0)
            TextButton.Size = UDim2.new(0, 310, 0, 10)
            TextButton.Font = Enum.Font.SourceSans
            TextButton.Text = ""
            TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.TextSize = 14.000
            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value
            if default then
                SliderBackground.Size = UDim2.new((default or 0) / max, 0, 0, 5)

                SliderText1.Text = default
                pcall(
                    function()
                        callback(default)
                    end
                )
            end

            TextButton.MouseButton1Down:Connect(
                function()
                    Value =
                        math.floor(
                        (((tonumber(max) - tonumber(min)) / 301) * SliderBackground.AbsoluteSize.X) + tonumber(min)
                    ) or 0
                    pcall(
                        function()
                            callback(Value)
                        end
                    )
                    SliderBackground.Size =
                        UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                    moveconnection =
                        mouse.Move:Connect(
                        function()
                            SliderText1.Text = Value
                            Value =
                                math.floor(
                                (((tonumber(max) - tonumber(min)) / 301) * SliderBackground.AbsoluteSize.X) +
                                    tonumber(min)
                            )
                            pcall(
                                function()
                                    callback(Value)
                                end
                            )
                            SliderBackground.Size =
                                UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                        end
                    )
                    releaseconnection =
                        uis.InputEnded:Connect(
                        function(Mouse)
                            if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                Value =
                                    math.floor(
                                    (((tonumber(max) - tonumber(min)) / 301) * SliderIn.AbsoluteSize.X) + tonumber(min)
                                )
                                pcall(
                                    function()
                                        callback(Value)
                                    end
                                )
                                SliderBackground.Size =
                                    UDim2.new(
                                    0,
                                    math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301),
                                    0,
                                    5
                                )
                                moveconnection:Disconnect()
                                releaseconnection:Disconnect()
                            end
                        end
                    )
                end
            )
            function All:CreateTextbox(txt, callback)
                local Textbox = Instance.new("Frame")
                local TextBoxFrame = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextBox = Instance.new("TextBox")
                local UICorner_2 = Instance.new("UICorner")

                --Properties:

                Textbox.Name = "Textbox"
                Textbox.Parent = ScrollingFrame_
                Textbox.AnchorPoint = Vector2.new(0.5, 0.5)
                Textbox.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                Textbox.BackgroundTransparency = 1.000
                Textbox.BorderSizePixel = 0
                Textbox.ClipsDescendants = true
                Textbox.Position = UDim2.new(0, 150, 0, 329)
                Textbox.Size = UDim2.new(0, 300, 0, 39)

                TextBoxFrame.Name = "TextBoxFrame"
                TextBoxFrame.Parent = Textbox
                TextBoxFrame.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
                TextBoxFrame.Position = UDim2.new(0.185000002, 0, 0.0714285746, 0)
                TextBoxFrame.Size = UDim2.new(0, 200, 0, 32)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = TextBoxFrame

                TextBox.Parent = TextBoxFrame
                TextBox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
                TextBox.Position = UDim2.new(-0.00499999989, 3, 0.063000001, 0)
                TextBox.Size = UDim2.new(0, 195, 0, 27)
                TextBox.Font = Enum.Font.SourceSansSemibold
                TextBox.Text = txt
                TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.TextSize = 16.000

                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = TextBox
                TextBox.FocusLost:Connect(
                    function()
                        if #TextBox.Text < 1 then
                            TextBox.Text = txt
                        else
                            callback(TextBox.Text)
                        end
                    end
                )
            end
        end
        return All
    end
    return TabL
end
local UILib = {}

if game.CoreGui:FindFirstChild("Sawadd") then
    game.CoreGui:FindFirstChild("Sawadd"):Destroy()
end

local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
function RippleEffect(object)
    spawn(function()
        local ImageLabel = Instance.new("ImageLabel")
        ImageLabel.Name = "ImageLabel"
        ImageLabel.Parent = object
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.ZIndex = 18
        ImageLabel.Image = "rbxassetid://2708891598"
        ImageLabel.ImageTransparency = 0.800
        ImageLabel.ScaleType = Enum.ScaleType.Slice
        ImageLabel.SliceCenter = Rect.new(204, 183, 220, 284)
        ImageLabel.SliceScale = 0.050
        ImageLabel.Size = UDim2.new(0,0,1,0)

        ImageLabel.Position = UDim2.new((Mouse.X - ImageLabel.AbsolutePosition.X) / object.AbsoluteSize.X, 0, (Mouse.Y - ImageLabel.AbsolutePosition.Y) / object.AbsoluteSize.Y, 0)
        TweenService:Create(ImageLabel, TweenInfo.new(.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 1, 0)}):Play()

        wait(.5)
        TweenService:Create(ImageLabel, TweenInfo.new(.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()

        wait(1)
        ImageLabel:Destroy()
    end)
end
function dragify(Frame)
    dragToggle = nil
    dragSpeed = .25 -- You can edit this.
    dragInput = nil
    dragStart = nil
    dragPos = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseButton1 or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragToggle = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(
                    function()
                        if (input.UserInputState == Enum.UserInputState.End) then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )

    Frame.InputChanged:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragInput = input
            end
        end
    )

    game:GetService("UserInputService").InputChanged:Connect(
        function(input)
            if (input == dragInput and dragToggle) then
                updateInput(input)
            end
        end
    )
end

function UILib:CreateMain(txt, logo)
    local Sawadd = Instance.new("ScreenGui")
    local BackgroundFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local OntopPage = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local FIRSTNAME = Instance.new("TextLabel")
    local NAME = Instance.new("TextLabel")
    local NAME2 = Instance.new("TextLabel")
    local SmallLogo = Instance.new("ImageLabel")
    local TabBar = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local BigLogo = Instance.new("ImageLabel")
    local TabList = Instance.new("ScrollingFrame")
    local LayoutBar = Instance.new("UIListLayout")
    local PaggingBar = Instance.new("UIPadding")

    Sawadd.Name = "Sawadd"
    Sawadd.Parent = game.CoreGui
    Sawadd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    BackgroundFrame.Name = "BackgroundFrame"
    BackgroundFrame.Parent = Sawadd
    BackgroundFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    BackgroundFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    BackgroundFrame.ClipsDescendants = true
    BackgroundFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    BackgroundFrame.Size = UDim2.new(0, 525, 0, 453)
    dragify(BackgroundFrame)
    
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Name = ""
    UICorner.Parent = BackgroundFrame

    OntopPage.Name = "OntopPage"
    OntopPage.Parent = BackgroundFrame
    OntopPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    OntopPage.BorderSizePixel = 0
    OntopPage.Position = UDim2.new(0.00761904754, 0, 0, 0)
    OntopPage.Size = UDim2.new(0, 525, 0, 27)

    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Name = ""
    UICorner_2.Parent = OntopPage

    FIRSTNAME.Name = "FIRSTNAME"
    FIRSTNAME.Parent = OntopPage
    FIRSTNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FIRSTNAME.BackgroundTransparency = 1.000
    FIRSTNAME.Position = UDim2.new(0.0933333421, 0, 0, 0)
    FIRSTNAME.Size = UDim2.new(0, 137, 0, 27)
    FIRSTNAME.Font = Enum.Font.GothamSemibold
    FIRSTNAME.Text = txt
    FIRSTNAME.TextColor3 = Color3.fromRGB(255, 255, 255)
    FIRSTNAME.TextSize = 17.000
    FIRSTNAME.TextXAlignment = Enum.TextXAlignment.Left

    NAME.Name = "NAME"
    NAME.Parent = OntopPage
    NAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NAME.BackgroundTransparency = 1.000
    NAME.Position = UDim2.new(0.171428561, 0, 0, 0)
    NAME.Size = UDim2.new(0, 137, 0, 27)
    NAME.Font = Enum.Font.GothamSemibold
    NAME.Text = "HUB"
    NAME.TextColor3 = Color3.fromRGB(155, 142, 0)
    NAME.TextSize = 17.000
    NAME.TextXAlignment = Enum.TextXAlignment.Left
    
    NAME2.Name = "NAME2"
    NAME2.Parent = OntopPage
    NAME2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NAME2.BackgroundTransparency = 1.000
    NAME2.Position = UDim2.new(0.0533333421, 0, 0, 0)
    NAME2.Size = UDim2.new(0, 137, 0, 27)
    NAME2.Font = Enum.Font.GothamSemibold
    NAME2.Text = "TA"
    NAME2.TextColor3 = Color3.fromRGB(155, 142, 0)
    NAME2.TextSize = 17.000
    NAME2.TextXAlignment = Enum.TextXAlignment.Left

    SmallLogo.Name = "SmallLogo"
    SmallLogo.Parent = OntopPage
    SmallLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SmallLogo.BackgroundTransparency = 1.000
    SmallLogo.Size = UDim2.new(0, 27, 0, 27)
    SmallLogo.Image = "rbxassetid://" .. tostring(logo)

    TabBar.Name = "TabBar"
    TabBar.Parent = BackgroundFrame
    TabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TabBar.Position = UDim2.new(0, 0, 0.059602648, 0)
    TabBar.Size = UDim2.new(0, 165, 0, 426)

    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Name = ""
    UICorner_3.Parent = TabBar

    BigLogo.Name = "BigLogo"
    BigLogo.Parent = TabBar
    BigLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BigLogo.BackgroundTransparency = 1.000
    BigLogo.Position = UDim2.new(0.183452412, 0, 0, 0)
    BigLogo.Size = UDim2.new(0, 100, 0, 100)
    BigLogo.Image = "rbxassetid://" .. tostring(logo)

    TabList.Name = "TabList"
    TabList.Parent = TabBar
    TabList.Active = true
    TabList.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TabList.BackgroundTransparency = 1.000
    TabList.BorderColor3 = Color3.fromRGB(30, 30, 30)
    TabList.Position = UDim2.new(0, 0, 0.218309864, 0)
    TabList.Size = UDim2.new(0, 160, 0, 333)
    TabList.CanvasSize = UDim2.new(0, 0, 0, 100)
    TabList.ScrollBarThickness = 4
    TabList.AutomaticCanvasSize = Enum.AutomaticSize.Y

    LayoutBar.Name = "LayoutBar"
    LayoutBar.Parent = TabList
    LayoutBar.SortOrder = Enum.SortOrder.LayoutOrder
    LayoutBar.Padding = UDim.new(0, 4)

    PaggingBar.Name = "PaggingBar"
    PaggingBar.Parent = TabList
    PaggingBar.PaddingTop = UDim.new(0, 15)
    
            local Folder_Page = Instance.new("Folder")
        
        Folder_Page.Name = "Folder_Page"
        Folder_Page.Parent = BackgroundFrame
        
    local TabL = {}
    function TabL:CreateTab(txt, logo , loadede)
        loadede = loadede or false
        local TabFrame = Instance.new("Frame")
        local Line1 = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local Transpane = Instance.new("Frame")
        local UICorner_5 = Instance.new("UICorner")
        local TabLogo = Instance.new("ImageLabel")
        local TextLabel = Instance.new("TextLabel")
        local TabClick = Instance.new("TextButton")
        local PageMain = Instance.new("Frame")
        local PageReal = Instance.new("Frame")
        local ScrollingFrame_ = Instance.new("ScrollingFrame")
        local PaggingBar_Scol = Instance.new("UIPadding")
        local UIListLayout = Instance.new("UIListLayout")

        TabFrame.Name = "TabFrame"
        TabFrame.Parent = TabList
        TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabFrame.BackgroundTransparency = 1.000
        TabFrame.Size = UDim2.new(0, 131, 0, 42)

        Line1.Name = "Line1"
        Line1.Parent = TabFrame
        Line1.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
        Line1.Size = UDim2.new(0, 4, 0, 42)
        Line1.BackgroundTransparency = 1
        
        UICorner_4.Parent = Line1

        Transpane.Name = "Transpane"
        Transpane.Parent = TabFrame
        Transpane.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Transpane.BackgroundTransparency = 1
        Transpane.Position = UDim2.new(0.0305343512, 0, 0, 0)
        Transpane.Size = UDim2.new(0, 138, 0, 42)

        UICorner_5.CornerRadius = UDim.new(0, 4)
        UICorner_5.Parent = Transpane

        TabLogo.Name = "TabLogo"
        TabLogo.Parent = TabFrame
        TabLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabLogo.BackgroundTransparency = 1.000
        TabLogo.Position = UDim2.new(0, 13, 0, 7)
        TabLogo.Size = UDim2.new(0, 25, 0, 25)
        TabLogo.ImageColor3 = Color3.fromRGB(155, 142, 0)
        TabLogo.Image = "rbxassetid://" .. tostring(logo)
        TabLogo.ImageTransparency = 0.2
        
        TextLabel.Parent = TabFrame
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.412213743, 0, 0.142857149, 0)
        TextLabel.Size = UDim2.new(0, 104, 0, 29)
        TextLabel.Font = Enum.Font.SourceSansBold
        TextLabel.Text = txt
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 18.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.TextTransparency = 0.2

        TabClick.Name = "TabClick"
        TabClick.Parent = TabFrame
        TabClick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabClick.BackgroundTransparency = 1.000
        TabClick.Size = UDim2.new(0, 158, 0, 42)
        TabClick.Font = Enum.Font.SourceSans
        TabClick.Text = ""
        TabClick.TextColor3 = Color3.fromRGB(0, 0, 0)
        TabClick.TextSize = 14.000

        PageMain.Name = "PageMain"
        PageMain.Parent = Folder_Page
        PageMain.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        PageMain.BorderSizePixel = 0
        PageMain.ClipsDescendants = true
        PageMain.Position = UDim2.new(0.304761916, 0, 0.059602648, 0)
        PageMain.Size = UDim2.new(0, 365, 0, 426)
        PageMain.Visible = false
        
        PageReal.Name = "PageReal"
        PageReal.Parent = PageMain
        PageReal.BorderSizePixel = 0
        PageReal.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        PageReal.Position = UDim2.new(0.00999999978, 0, 0.00899999961, 0)
        PageReal.Size = UDim2.new(0, 365, 0, 426)

        ScrollingFrame_.Name = "ScrollingFrame_"
        ScrollingFrame_.Parent = PageReal
        ScrollingFrame_.Active = true
        ScrollingFrame_.AnchorPoint = Vector2.new(0.5, 0.5)
        ScrollingFrame_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ScrollingFrame_.BackgroundTransparency = 1.000
        ScrollingFrame_.BorderColor3 = Color3.fromRGB(30, 30, 30)
        ScrollingFrame_.Position = UDim2.new(0.5, 0, 0.5, 0)
        ScrollingFrame_.Size = UDim2.new(0, 349, 0, 0)
        ScrollingFrame_.CanvasSize = UDim2.new(0, 0, 0, 137)
        ScrollingFrame_.ScrollBarThickness = 0
        ScrollingFrame_.AutomaticCanvasSize = Enum.AutomaticSize.Y
        
        PaggingBar_Scol.Name = "PaggingBar_Scol"
        PaggingBar_Scol.Parent = ScrollingFrame_
        PaggingBar_Scol.PaddingLeft = UDim.new(0, 5)
        PaggingBar_Scol.PaddingTop = UDim.new(0, 15)

        UIListLayout.Parent = ScrollingFrame_
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 7)
        
        if loadede then
            TweenService:Create(Line1, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
            TweenService:Create(Transpane, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.990}):Play()
            TweenService:Create(TabLogo, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
            TweenService:Create(TextLabel, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
            for i,v in pairs(Folder_Page:GetDescendants()) do
                if v:IsA"ScrollingFrame" then
                    TweenService:Create(v, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0,349,0,0)}):Play()
                end
            end
            wait(0.12)
            for i,v in pairs(Folder_Page:GetChildren()) do
                if v:IsA"Frame" then
                    v.Visible = false
                end
            end
            PageMain.Visible = true
            TweenService:Create(ScrollingFrame_, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0,349,0,409)}):Play()
        end
        
        TabClick.MouseButton1Click:Connect(function()
            if PageMain.Visible == false then
            for i,v in pairs(TabList:GetDescendants()) do
                if v.Name == "Line1" then
                    v.BackgroundTransparency = 1
                end
                if v.Name == "Transpane" then
                    v.BackgroundTransparency = 1
                end
                if v.Name == "TabLogo" then
                    v.ImageTransparency = 0.2
                end
                if v.Name == "TextLabel" then
                    v.TextTransparency = 0.2
                end
            end
            TweenService:Create(Line1, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
            TweenService:Create(Transpane, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.990}):Play()
            TweenService:Create(TabLogo, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
            TweenService:Create(TextLabel, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
            for i,v in pairs(Folder_Page:GetDescendants()) do
                if v:IsA"ScrollingFrame" then
                    TweenService:Create(v, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0,349,0,0)}):Play()
                end
            end
            wait(0.12)
            for i,v in pairs(Folder_Page:GetChildren()) do
                if v:IsA"Frame" then
                    v.Visible = false
                end
            end
            PageMain.Visible = true
            TweenService:Create(ScrollingFrame_, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0,349,0,409)}):Play()
            end
        end)
        local All = {}
        function All:CreateTi(txt)
            local Ti = Instance.new("Frame")
            local Ti2 = Instance.new("TextLabel")
            local Ti3 = Instance.new("TextLabel")
            local TextTi = Instance.new("TextLabel")
            Ti.Name = "Ti"
            Ti.Parent = ScrollingFrame_
            Ti.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Ti.BackgroundTransparency = 1.000
            Ti.BorderSizePixel = 0
            Ti.ClipsDescendants = true
            Ti.Position = UDim2.new(0.5, 0, 0.5, 0)
            Ti.Size = UDim2.new(0, 300, 0, 33)

            Ti2.Name = "Ti2"
            Ti2.Parent = Ti
            Ti2.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti2.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            Ti2.BorderSizePixel = 0
            Ti2.Position = UDim2.new(0, 0, 0.5, 0)
            Ti2.Size = UDim2.new(0, 150, 0, 1)
            Ti2.Font = Enum.Font.GothamSemibold
            Ti2.Text = ""
            Ti2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Ti2.TextSize = 13.000

            Ti3.Name = "Ti3"
            Ti3.Parent = Ti
            Ti3.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti3.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            Ti3.BorderSizePixel = 0
            Ti3.Position = UDim2.new(1, 0, 0.5, 0)
            Ti3.Size = UDim2.new(0, 150, 0, 1)
            Ti3.Font = Enum.Font.GothamSemibold
            Ti3.Text = ""
            Ti3.TextColor3 = Color3.fromRGB(255, 255, 255)
            Ti3.TextSize = 13.000

            TextTi.Name = "TextTi"
            TextTi.Parent = Ti
            TextTi.AnchorPoint = Vector2.new(0.5, 0.5)
            TextTi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextTi.BackgroundTransparency = 1.000
            TextTi.BorderSizePixel = 0
            TextTi.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextTi.Size = UDim2.new(0, 150, 0, 20)
            TextTi.Font = Enum.Font.GothamSemibold
            TextTi.Text = txt
            TextTi.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextTi.TextSize = 12.000
        end
        function All:CreateLabel(txt)
            local Label = Instance.new("Frame")
            local LabelText = Instance.new("TextLabel")
            Label.Name = "Label"
            Label.Parent = ScrollingFrame_
            Label.AnchorPoint = Vector2.new(0.5, 0.5)
            Label.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Label.BackgroundTransparency = 1.000
            Label.BorderSizePixel = 0
            Label.ClipsDescendants = true
            Label.Position = UDim2.new(0.436046511, 0, 0.153129384, 0)
            Label.Size = UDim2.new(0, 300, 0, 40)

            LabelText.Name = "LabelText"
            LabelText.Parent = Label
            LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.BackgroundTransparency = 1.000
            LabelText.BorderSizePixel = 0
            LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
            LabelText.Size = UDim2.new(0, 150, 0, 20)
            LabelText.Font = Enum.Font.GothamSemibold
            LabelText.Text = txt
            LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.TextSize = 14.000
        end

        function All:CreateToggle(txt, def, callback)
            callback = callback or function() end
            local Toggle = Instance.new("Frame")
            local ToggleText = Instance.new("TextLabel")
            local ToggleFrameIn = Instance.new("Frame")
            local UICorner_6 = Instance.new("UICorner")
            local check = Instance.new("ImageButton")
            local UICorner_7 = Instance.new("UICorner")
            local ToggleTap = Instance.new("TextButton")
            Toggle.Name = "Toggle"
            Toggle.Parent = ScrollingFrame_
            Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            Toggle.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Toggle.BackgroundTransparency = 1.000
            Toggle.BorderSizePixel = 0
            Toggle.ClipsDescendants = true
            Toggle.Position = UDim2.new(0, 152, 0, 62)
            Toggle.Size = UDim2.new(0, 300, 0, 40)

            ToggleText.Name = "ToggleText"
            ToggleText.Parent = Toggle
            ToggleText.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.BackgroundTransparency = 1.000
            ToggleText.BorderSizePixel = 0
            ToggleText.Position = UDim2.new(0, 148, 0, 20)
            ToggleText.Size = UDim2.new(0, 154, 0, 20)
            ToggleText.Font = Enum.Font.GothamSemibold
            ToggleText.Text = txt
            ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.TextSize = 14.000
            ToggleText.TextXAlignment = Enum.TextXAlignment.Left

            ToggleFrameIn.Name = "ToggleFrameIn"
            ToggleFrameIn.Parent = Toggle
            ToggleFrameIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            ToggleFrameIn.Position = UDim2.new(0, 21, 0, 7)
            ToggleFrameIn.Size = UDim2.new(0, 28, 0, 28)

            UICorner_6.CornerRadius = UDim.new(0, 3)
            UICorner_6.Parent = ToggleFrameIn

            check.Name = "check"
            check.Parent = ToggleFrameIn
            check.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            check.LayoutOrder = 1
            check.Position = UDim2.new(0, 2, 0, 2)
            check.Size = UDim2.new(0, 24, 0, 24)
            check.ZIndex = 2
            check.AutoButtonColor = false
            check.Image = "rbxassetid://3926305904"
            check.ImageColor3 = Color3.fromRGB(27, 27, 27)
            check.ImageRectOffset = Vector2.new(312, 4)
            check.ImageRectSize = Vector2.new(24, 24)

            UICorner_7.CornerRadius = UDim.new(0, 3)
            UICorner_7.Parent = check

            ToggleTap.Name = "ToggleTap"
            ToggleTap.Parent = Toggle
            ToggleTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleTap.BackgroundTransparency = 1.000
            ToggleTap.Size = UDim2.new(0, 300, 0, 42)
            ToggleTap.Font = Enum.Font.SourceSans
            ToggleTap.Text = ""
            ToggleTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            ToggleTap.TextSize = 14.000
            
            if def then
                callback(true)
                check.BackgroundTransparency = 1
                else
                callback(false)
            end
            ToggleTap.MouseButton1Click:Connect(function()
                if check.BackgroundTransparency == 1 then
                   callback(false)
                   TweenService:Create(check, TweenInfo.new(0.15, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
                   else
                    callback(true)
                    TweenService:Create(check, TweenInfo.new(0.15, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                end
            end)
        end

        function All:CreateButton(txt, callback)
            callback = callback or function() end
            local Button = Instance.new("Frame")
            local ButtonTap = Instance.new("TextButton")
            local UICorner_8 = Instance.new("UICorner")
            local UIGradient = Instance.new("UIGradient")
            local TextLabel_2 = Instance.new("TextLabel")
            local UICorner_9 = Instance.new("UICorner")
            local UICorner_10 = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = ScrollingFrame_
            Button.AnchorPoint = Vector2.new(0.5, 0.5)
            Button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Button.BackgroundTransparency = 1.000
            Button.BorderSizePixel = 0 
            Button.ClipsDescendants = true
            Button.Position = UDim2.new(0, 150, 0, 155)
            Button.Size = UDim2.new(0, 300, 0, 42)

            ButtonTap.Name = "ButtonTap"
            ButtonTap.Parent = Button
            ButtonTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonTap.AnchorPoint = Vector2.new(0, 0)
            ButtonTap.Position = UDim2.new(0, 46, 0, 6)
            ButtonTap.Size = UDim2.new(0, 219, 0, 28)
            ButtonTap.AutoButtonColor = false
            ButtonTap.Font = Enum.Font.SourceSans
            ButtonTap.Text = ""
            ButtonTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            ButtonTap.TextSize = 14.000
            ButtonTap.BackgroundTransparency = 0.2
            
            UICorner_8.CornerRadius = UDim.new(0, 3)
            UICorner_8.Parent = ButtonTap

            UIGradient.Color =
                ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(155, 142, 0)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))
            }
            UIGradient.Parent = ButtonTap

            TextLabel_2.Parent = ButtonTap
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.Position = UDim2.new(0, 24, 0, 0)
            TextLabel_2.Size = UDim2.new(0, 175, 0, 27)
            TextLabel_2.Font = Enum.Font.SourceSansBold
            TextLabel_2.Text = txt
            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.TextSize = 15.000

            UICorner_9.CornerRadius = UDim.new(0, 4)
            UICorner_9.Name = ""
            UICorner_9.Parent = PageReal

            UICorner_10.Name = ""
            UICorner_10.Parent = PageReal
            ButtonTap.MouseEnter:Connect(function()
                 
            end)
            ButtonTap.MouseButton1Click:Connect(
                function()
                   RippleEffect(ButtonTap)
                   pcall(callback)
                end)
        end
        
        function All:CreateDropdown(txt,list,logo,def,callback)
            
            local Dropdown = Instance.new("Frame")
            local DropdownIn = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local DropdownOut = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local DropdownText = Instance.new("TextLabel")
            local DropdownLogo = Instance.new("ImageLabel")
            
            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ScrollingFrame_
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0, 183)
            Dropdown.Size = UDim2.new(0, 323, 0, 47)
            
            DropdownIn.Name = "DropdownIn"
            DropdownIn.Parent = Dropdown
            DropdownIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            DropdownIn.Position = UDim2.new(0, 0, 0, 7)
            DropdownIn.Size = UDim2.new(0, 320, 0, 38)
            
            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = DropdownIn
            
            DropdownOut.Name = "DropdownOut"
            DropdownOut.Parent = DropdownIn
            DropdownOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            DropdownOut.Position = UDim2.new(0, 1, 0, 1)
            DropdownOut.Size = UDim2.new(0, 317, 0, 36)
            
            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = DropdownOut
            
            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropdownOut
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.Position = UDim2.new(0, 8, 0, 0)
            DropdownText.Size = UDim2.new(0, 280, 0, 33)
            DropdownText.Font = Enum.Font.SourceSansSemibold
            DropdownText.Text = txt
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextSize = 17.000
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left
            
            local DropdownTap = Instance.new("TextButton")

            DropdownTap.Name = "DropdownTap"
            DropdownTap.Parent = DropdownIn
            DropdownTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTap.BackgroundTransparency = 1.000
            DropdownTap.Size = UDim2.new(0, 316, 0, 36)
            DropdownTap.Font = Enum.Font.SourceSans
            DropdownTap.Text = ""
            DropdownTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownTap.TextSize = 14.000

            if def then
               callback(tostring(def)) 
               DropdownText.Text = txt.." : "..tostring(def)
            end
            DropdownLogo.Name = "DropdownLogo"
            DropdownLogo.Parent = DropdownOut
            DropdownLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLogo.BackgroundTransparency = 1.000
            DropdownLogo.Position = UDim2.new(0, 282, 0, 3)
            DropdownLogo.Size = UDim2.new(0, 32, 0, 32)
            DropdownLogo.Image = "rbxassetid://"..tostring(logo)
            
            local ItemList = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            
            ItemList.Name = "ItemList"
            ItemList.Parent = ScrollingFrame_
            ItemList.Active = true
            ItemList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemList.BackgroundTransparency = 1.000
            ItemList.BorderColor3 = Color3.fromRGB(27, 27, 27)
            ItemList.Position = UDim2.new(0, 0, -0.0209009312, 0)
            ItemList.Size = UDim2.new(0, 321, 0, 120)
            ItemList.CanvasSize = UDim2.new(0, 0, 0, 0)
            ItemList.ScrollBarThickness = 3
            ItemList.Visible = false
            ItemList.AutomaticCanvasSize = Enum.AutomaticSize.Y
            
            local Dropdownz = {}
                function Dropdownz:CreateTabList(z)
                for i,v in next, z do
                     local eq = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            eq.Parent = ItemList
            eq.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            eq.Size = UDim2.new(0, 316, 0, 19)
            eq.Font = Enum.Font.SourceSansBold
            eq.Text = v
            eq.TextColor3 = Color3.fromRGB(255, 255, 255)
            eq.TextSize = 17.000
            eq.MouseButton1Click:Connect(function()
                callback(eq.Text)
                DropdownText.Text = txt.." : "..eq.Text
                TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
            end)
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = eq
                end
            end
            
                        UIListLayout.Parent = ItemList
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 1)
            
            Dropdownz:CreateTabList(list)
            
              DropdownTap.MouseButton1Click:Connect(function()
                if ItemList.Visible == false then
                    ItemList.Visible = true
                    TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 54)}):Play()
                    else
                   TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
                end
              end)
             function Dropdownz:Refresh(eeqeeqqe)
                  for i,v in pairs(ItemList:GetChildren()) do
                      if v:IsA"TextButton" then
                          v:Destroy()
                      end
                  end
                  Dropdownz:CreateTabList(eeqeeqqe)
                  TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
                    end
            return Dropdownz
        end
        function All:CreateMultiDropdown(txt,list,logo,def,callback)
            local Dropdownlistmulti = {}
            local Dropdown = Instance.new("Frame")
            local DropdownIn = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local DropdownOut = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local DropdownText = Instance.new("TextLabel")
            local DropdownLogo = Instance.new("ImageLabel")
            
            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ScrollingFrame_
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0, 183)
            Dropdown.Size = UDim2.new(0, 323, 0, 47)
            
            DropdownIn.Name = "DropdownIn"
            DropdownIn.Parent = Dropdown
            DropdownIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            DropdownIn.Position = UDim2.new(0, 0, 0, 7)
            DropdownIn.Size = UDim2.new(0, 320, 0, 38)
            
            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = DropdownIn
            
            DropdownOut.Name = "DropdownOut"
            DropdownOut.Parent = DropdownIn
            DropdownOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            DropdownOut.Position = UDim2.new(0, 1, 0, 1)
            DropdownOut.Size = UDim2.new(0, 317, 0, 36)
            
            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = DropdownOut
            
            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropdownOut
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.Position = UDim2.new(0, 8, 0, 0)
            DropdownText.Size = UDim2.new(0, 280, 0, 33)
            DropdownText.Font = Enum.Font.SourceSansSemibold
            DropdownText.Text = txt
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextSize = 17.000
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left
            
            local DropdownTap = Instance.new("TextButton")

            DropdownTap.Name = "DropdownTap"
            DropdownTap.Parent = DropdownIn
            DropdownTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTap.BackgroundTransparency = 1.000
            DropdownTap.Size = UDim2.new(0, 316, 0, 36)
            DropdownTap.Font = Enum.Font.SourceSans
            DropdownTap.Text = ""
            DropdownTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownTap.TextSize = 14.000

            if def then
               callback(tostring(def)) 
               DropdownText.Text = txt.." : "..tostring(def)
            end
            DropdownLogo.Name = "DropdownLogo"
            DropdownLogo.Parent = DropdownOut
            DropdownLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLogo.BackgroundTransparency = 1.000
            DropdownLogo.Position = UDim2.new(0, 282, 0, 3)
            DropdownLogo.Size = UDim2.new(0, 32, 0, 32)
            DropdownLogo.Image = "rbxassetid://"..tostring(logo)
            
            local ItemList = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            
            ItemList.Name = "ItemList"
            ItemList.Parent = ScrollingFrame_
            ItemList.Active = true
            ItemList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemList.BackgroundTransparency = 1.000
            ItemList.BorderColor3 = Color3.fromRGB(27, 27, 27)
            ItemList.Position = UDim2.new(0, 0, -0.0209009312, 0)
            ItemList.Size = UDim2.new(0, 321, 0, 120)
            ItemList.CanvasSize = UDim2.new(0, 0, 0, 0)
            ItemList.ScrollBarThickness = 3
            ItemList.Visible = false
            ItemList.AutomaticCanvasSize = Enum.AutomaticSize.Y
            
            local Dropdownz = {}
                function Dropdownz:CreateTabList(z)
                     local eq = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            eq.Parent = ItemList
            eq.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            eq.Size = UDim2.new(0, 316, 0, 19)
            eq.Font = Enum.Font.SourceSansBold
            eq.Text = z
            eq.TextColor3 = Color3.fromRGB(255, 255, 255)
            eq.TextSize = 17.000
            eq.MouseButton1Click:Connect(function()
                if eq.BackgroundColor3 == Color3.fromRGB(100,18,22) then
                    for i,v in pairs(Dropdownlistmulti) do
                        if v == eq.Text then
                            table.remove(Dropdownlistmulti,i)
                        end
                    end
                    TweenService:Create(eq, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(155, 142, 0)}):Play()
                else
                    if not table.find(Dropdownlistmulti,eq.Text) then
                        table.insert(Dropdownlistmulti,eq.Text)
                    end
                    TweenService:Create(eq, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(100,18,22)}):Play()
                end
                DropdownText.Text = txt.." : "..table.concat(Dropdownlistmulti," , ")
                callback(Dropdownlistmulti)
            end)
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = eq
            end
            
                        UIListLayout.Parent = ItemList
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 1)
            for i,v in next, list do
            Dropdownz:CreateTabList(v)
            end
            
              DropdownTap.MouseButton1Click:Connect(function()
                if ItemList.Visible == false then
                    ItemList.Visible = true
                    TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 54)}):Play()
                    else
                   TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
                end
              end)
              function Dropdownz:Refresh(eeqeeqqe)
                  for i,v in pairs(ItemList:GetChildren()) do
                      if v:IsA"TextButton" then
                          v:Destroy()
                      end
                  end
                  for i,v in next , eeqeeqqe do
                  Dropdownz:CreateTabList(v)
                  end
                  TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
                    end
            return Dropdownz
        end
        
        function All:CreateSlider(Title, min, max, default, callback)
            
            local Slider = Instance.new("Frame")
            local SliderFrame_ = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local SliderOut = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local SliderText = Instance.new("TextLabel")
            local SliderText1 = Instance.new("TextLabel")
            local SliderIn = Instance.new("Frame")
            local SliderBackground = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local UICorner_4 = Instance.new("UICorner")
            local TextButton = Instance.new("TextButton")
            
            Slider.Name = "Slider"
            Slider.Parent = ScrollingFrame_
            Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Slider.BackgroundTransparency = 1.000
            Slider.Position = UDim2.new(0, 0, 0, 244)
            Slider.Size = UDim2.new(0, 323, 0, 59)
            
            SliderFrame_.Name = "SliderFrame_"
            SliderFrame_.Parent = Slider
            SliderFrame_.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            SliderFrame_.Position = UDim2.new(0, 0, 0, 7)
            SliderFrame_.Size = UDim2.new(0, 320, 0, 43)
            
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = SliderFrame_
            
            SliderOut.Name = "SliderOut"
            SliderOut.Parent = SliderFrame_
            SliderOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            SliderOut.Position = UDim2.new(0, 1, 0, 1)
            SliderOut.Size = UDim2.new(0, 317, 0, 40)
            
            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = SliderOut
            
            SliderText.Name = "SliderText"
            SliderText.Parent = SliderOut
            SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.BackgroundTransparency = 1.000
            SliderText.Position = UDim2.new(0, 8, 0, 4)
            SliderText.Size = UDim2.new(0, 262, 0, 16)
            SliderText.Font = Enum.Font.SourceSansSemibold
            SliderText.Text = Title
            SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.TextSize = 14.000
            SliderText.TextXAlignment = Enum.TextXAlignment.Left
            
            SliderText1.Name = "SliderText1"
            SliderText1.Parent = SliderOut
            SliderText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText1.BackgroundTransparency = 1.000
            SliderText1.Position = UDim2.new(0, 275, 0, 4)
            SliderText1.Size = UDim2.new(0, 40, 0, 16)
            SliderText1.Font = Enum.Font.SourceSansSemibold
            SliderText1.Text = "12"
            SliderText1.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderText1.TextSize = 14.000
            
            SliderIn.Name = "SliderIn"
            SliderIn.Parent = SliderFrame_
            SliderIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderIn.Position = UDim2.new(0, 8, 0, 28)
            SliderIn.Size = UDim2.new(0, 301, 0, 5)
            
            SliderBackground.Name = "SliderBackground"
            SliderBackground.Parent = SliderIn
            SliderBackground.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            SliderBackground.Size = UDim2.new(0, 301, 0, 5)
            
            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = SliderBackground
            
            UICorner_4.CornerRadius = UDim.new(0, 4)
            UICorner_4.Parent = SliderIn
            
            TextButton.Parent = SliderFrame_
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.Position = UDim2.new(0.0187500007, 0, 0.604651153, 0)
            TextButton.Size = UDim2.new(0, 310, 0, 10)
            TextButton.Font = Enum.Font.SourceSans
            TextButton.Text = ""
            TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.TextSize = 14.000
              local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")
                local Value;
                if default then
                SliderBackground.Size = UDim2.new((default or 0) / max, 0, 0, 5)

                SliderText1.Text = default
                pcall(
                    function()
                        callback(default)
                    end
                )
            end
                
              TextButton.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 301) * SliderBackground.AbsoluteSize.X) + tonumber(min)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    SliderBackground.Size = UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                    moveconnection = mouse.Move:Connect(function()
                        SliderText1.Text = Value
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 301) * SliderBackground.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        SliderBackground.Size = UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            Value = math.floor((((tonumber(max) - tonumber(min)) / 301) * SliderIn.AbsoluteSize.X) + tonumber(min))
                            pcall(function()
                                callback(Value)
                            end)
                            SliderBackground.Size = UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
        function All:CreateTextbox(txt,callback)
            
            local Textbox = Instance.new("Frame")
            local TextBoxFrame = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")
            local UICorner_2 = Instance.new("UICorner")
            
            --Properties:
            
            Textbox.Name = "Textbox"
            Textbox.Parent = ScrollingFrame_
            Textbox.AnchorPoint = Vector2.new(0.5, 0.5)
            Textbox.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Textbox.BackgroundTransparency = 1.000
            Textbox.BorderSizePixel = 0
            Textbox.ClipsDescendants = true
            Textbox.Position = UDim2.new(0, 150, 0, 329)
            Textbox.Size = UDim2.new(0, 300, 0, 39)
            
            TextBoxFrame.Name = "TextBoxFrame"
            TextBoxFrame.Parent = Textbox
            TextBoxFrame.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            TextBoxFrame.Position = UDim2.new(0.185000002, 0, 0.0714285746, 0)
            TextBoxFrame.Size = UDim2.new(0, 200, 0, 32)
            
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = TextBoxFrame
            
            TextBox.Parent = TextBoxFrame
            TextBox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            TextBox.Position = UDim2.new(-0.00499999989, 3, 0.063000001, 0)
            TextBox.Size = UDim2.new(0, 195, 0, 27)
            TextBox.Font = Enum.Font.SourceSansSemibold
            TextBox.Text = txt
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextSize = 16.000
            
            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = TextBox 
            TextBox.FocusLost:Connect(function()
                if #TextBox.Text < 1 then
                    TextBox.Text = txt
                    else
                    callback(TextBox.Text)
                end
            end)

        end
        
        end
        return All
    end
    return TabL
end
---------------------------------------------------------UI--------------------------------

local Main = UILib:CreateMain("KAB", 8824541759)
 
 local Tab1 = Main:CreateTab("Auto Farm", 6031075938,true)
 local Stats = Main:CreateTab("Stats", 6031075938,false)
 local TPSEC = Main:CreateTab("Teleport", 6031075938,false)
 local dun = Main:CreateTab("Dungeon", 6031075938,false)
 local buy = Main:CreateTab("Buy Item", 6031075938,false)
 local misc = Main:CreateTab("Misc", 6031075938,false)
 local music = Main:CreateTab("Music", 6031075938,false)
 

 -------------
 
 --2753915549 --OLD WORLD
 --4442272183 --NEW WORLD
 _G.FARM = false 
 _G.TOOLUP = ""
 _G.WEAPONUO = "None"
 _G.AUTOEQUIP = false
 _G.QUEST = 1
 
 
 
 
 local vu = game:GetService("VirtualUser")
 game:GetService("Players").LocalPlayer.Idled:connect(function()
 vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 wait()
 vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 end)
 
 
 
 
 
 
 
 
 
 
 function quest() -- QUESTTTTTTTTTTTTTTTT
 
 if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
 
 else
StopTween()
 repeat TP(_G.QUESTMON) wait() until _G.StopTween == true or not _G.FARM or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _G.QUESTMON.Position).Magnitude <= 8
 
 wait(0.5)
 local args = {
 [1] = "StartQuest",
 [2] = _G.NAMEQUEST,
 [3] = _G.QUESTNUM
 }
 
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
 wait(0.5)
 
 end
 end
 
 
 
 
 

 
 
 
 
 function attack() -- ATACKKKKKKKKKKKKKK
 
 require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut = 2,Sustained = 0,Inactive =1}
 game:GetService'VirtualUser':CaptureController()
 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
 
 
 end
 
 
 function TPMON()
     local mon = game:GetService("Workspace").Enemies:GetChildren()
     for i,v in pairs(mon) do
   
         if v.Name == _G.Mon then
             v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
             v.HumanoidRootPart.CanCollide = false
   
             TP(v.HumanoidRootPart.CFrame * _G.FARMMODE)
 
 
     
   
     end
     end
     
     end
 
 
     
 
 
     function StopTween()
         pcall(function()
             tween:Cancel()
             _G.StopTween = true
             wait()
             _G.StopTween = false
         end)
     end
 
 
 
 
 --------------------------------------------------------------------------------------------------
 
 
 
 
 
 
 
 
 
 
 OldWorld = false
newworld = false           
thirdworld = false   
local placeId = game.PlaceId
if placeId == 2753915549 then
OldWorld = true
elseif placeId == 4442272183 then
newworld = true
elseif placeId == 7449423635 then
thirdworld = true
end












function checklevel()
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
    if OldWorld then
        magbring = 240
		if MYLEVEL == 1 or MYLEVEL <= 14 then
		magbring = 400
		_G.Mon = "Bandit [Lv. 5]"
		_G.NAMEQUEST = "BanditQuest1"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$350\n250 Exp."
		_G.QUESTMON = CFrame.new(1060.61548, 16.5166187, 1546.06348, -0.966731012, 9.64880797e-08, 0.255795151, 8.52720916e-08, 1, -5.49381056e-08, -0.255795151, -3.12981818e-08, -0.966731012)
		_G.PUK = CFrame.new(1094.74158, 68.1195679, 1617.98132, -0.805238843, 2.58748241e-06, -0.592950821, 6.83637325e-07, 1, 3.43534839e-06, 0.592950821, 2.36091159e-06, -0.805238843)
--[[		elseif MYLEVEL == 10 or MYLEVEL <= 14 then
		magbring = 400
		_G.Mon = "Monkey [Lv. 14]"
		_G.NAMEQUEST = "JungleQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$800\n1,800 Exp."
		_G.QUESTMON = CFrame.new(-1600.24353, 36.8521347, 153.224792, 0.0664860159, 1.09421023e-07, -0.997787356, 9.55680779e-09, 1, 1.10300476e-07, 0.997787356, -1.68691017e-08, 0.0664860159)
		_G.PUK = CFrame.new(-1609.71216, 39.8521576, 123.384674, 0.708323717, 6.74341152e-08, 0.705887735, -1.86098941e-08, 1, -7.68568071e-08, -0.705887735, 4.13030072e-08, 0.708323717)]]
		elseif MYLEVEL == 15 or MYLEVEL <= 29 then
		magbring = 240
		_G.Mon = "Gorilla [Lv. 20]"
		_G.NAMEQUEST = "JungleQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$1,200\n3,500 Exp."
		_G.QUESTMON = CFrame.new(-1600.24353, 36.8521347, 153.224792, 0.0664860159, 1.09421023e-07, -0.997787356, 9.55680779e-09, 1, 1.10300476e-07, 0.997787356, -1.68691017e-08, 0.0664860159)
		_G.PUK = CFrame.new(-1260.29321, 18.6214619, -398.3508, 0.816335142, 5.76316722e-07, -0.577578545, 8.32609999e-08, 1, 1.11549434e-06, 0.577578545, -9.58707005e-07, 0.816335142)
		elseif MYLEVEL == 30 or MYLEVEL <= 39 then
		_G.Mon = "Pirate [Lv. 35]"
		_G.NAMEQUEST = "BuggyQuest1"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$3,000\n10,000 Exp."
		_G.QUESTMON = CFrame.new(-1139.56116, 4.75204945, 3825.97827, -0.947666645, 2.60038924e-08, 0.319261551, 3.65571005e-08, 1, 2.70626153e-08, -0.319261551, 3.73176157e-08, -0.947666645)
		_G.PUK = CFrame.new(-1223.64111, 4.75204945, 3914.84668, -0.99005419, 5.39223821e-09, 0.140686572, -6.35229591e-10, 1, -4.27983267e-08, -0.140686572, -4.24620303e-08, -0.99005419)
		elseif MYLEVEL == 40 or MYLEVEL <= 59 then
		_G.Mon = "Brute [Lv. 45]"
		_G.NAMEQUEST = "BuggyQuest1"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$3,500\n18,000 Exp."
		_G.QUESTMON = CFrame.new(-1139.56116, 4.75204945, 3825.97827, -0.947666645, 2.60038924e-08, 0.319261551, 3.65571005e-08, 1, 2.70626153e-08, -0.319261551, 3.73176157e-08, -0.947666645)
		_G.PUK = CFrame.new(-1140.92944, 14.8098745, 4317.16455, -0.943479657, 3.71900555e-08, -0.331430465, 1.7316566e-08, 1, 6.2915845e-08, 0.331430465, 5.36205853e-08, -0.943479657)
		elseif MYLEVEL == 60 or MYLEVEL <= 74 then
		_G.Mon = "Desert Bandit [Lv. 60]"
		_G.NAMEQUEST = "DesertQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$4,000\n35,000 Exp."
		_G.QUESTMON = CFrame.new(896.408142, 6.43846178, 4389.37891, -0.846945703, -2.31297754e-08, 0.531679392, -1.55507234e-08, 1, 1.87315088e-08, -0.531679392, 7.59657048e-09, -0.846945703)
		_G.PUK = CFrame.new(949.532593, 15.2893953, 4403.09912, -0.832314849, -4.19622452e-08, 0.55430311, 7.94023236e-10, 1, 7.68949704e-08, -0.55430311, 6.44409539e-08, -0.832314849)
		elseif MYLEVEL == 75 or MYLEVEL <= 89 then
		_G.Mon = "Desert Officer [Lv. 70]"
		_G.NAMEQUEST = "DesertQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$4,500\n50,000 Exp."
		_G.QUESTMON = CFrame.new(896.408142, 6.43846178, 4389.37891, -0.846945703, -2.31297754e-08, 0.531679392, -1.55507234e-08, 1, 1.87315088e-08, -0.531679392, 7.59657048e-09, -0.846945703)
		_G.PUK = CFrame.new(1547.40369, 14.4520388, 4359.40625, 0.228631318, -1.20783e-07, -0.973513126, -3.43095508e-08, 1, -1.32126871e-07, 0.973513126, 6.36091286e-08, 0.228631318)
		elseif MYLEVEL == 90 or MYLEVEL <= 99 then
		_G.Mon = "Snow Bandit [Lv. 90]"
		_G.NAMEQUEST = "SnowQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$5,000\n70,000 Exp."
		_G.QUESTMON = CFrame.new(1384.01538, 87.272789, -1296.28137, 0.462413222, -7.79864777e-08, -0.88666451, -1.42050363e-08, 1, -9.53630916e-08, 0.88666451, 5.6692258e-08, 0.462413222)
		_G.PUK = CFrame.new(1372.84326, 105.990303, -1422.19507, 0.719091773, -2.12436309e-08, 0.694915235, 9.82151036e-08, 1, -7.10619616e-08, -0.694915235, 1.19351228e-07, 0.719091773)
		elseif MYLEVEL == 100 or MYLEVEL <= 119 then
		_G.Mon = "Snowman [Lv. 100]"
		_G.NAMEQUEST = "SnowQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$5,500\n120,000 Exp."
		_G.QUESTMON = CFrame.new(1384.01538, 87.272789, -1296.28137, 0.462413222, -7.79864777e-08, -0.88666451, -1.42050363e-08, 1, -9.53630916e-08, 0.88666451, 5.6692258e-08, 0.462413222)
		_G.PUK = CFrame.new(1220.92712, 138.011871, -1489.01208, 0.389352709, -7.53626693e-07, 0.921088696, 1.45705499e-07, 1, 7.56600116e-07, -0.921088696, -1.60376572e-07, 0.389352709)
		elseif MYLEVEL == 120 or MYLEVEL <= 149 then
		_G.Mon = "Chief Petty Officer [Lv. 120]"
		_G.NAMEQUEST = "MarineQuest2"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$6,000\n180,000 Exp."
		_G.QUESTMON = CFrame.new(-5034.64893, 28.6520348, 4324.53369, -0.0616381466, 5.83357576e-08, 0.998098552, -1.59750098e-08, 1, -5.9433436e-08, -0.998098552, -1.96080023e-08, -0.0616381466)
		_G.PUK = CFrame.new(-4863.61328, 22.6520348, 4306.39307, 0.536051273, 7.00434066e-09, -0.844185412, -5.8011751e-10, 1, 7.92878918e-09, 0.844185412, -3.76051057e-09, 0.536051273)
		elseif MYLEVEL == 150 or MYLEVEL <= 174 then
		_G.Mon = "Sky Bandit [Lv. 150]"
		_G.NAMEQUEST = "SkyQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$7,000\n250,000 Exp."
		_G.QUESTMON = CFrame.new(-4843.2041, 717.669617, -2623.13159, -0.775086224, -1.6359829e-08, -0.631855488, -4.10942462e-08, 1, 2.45178793e-08, 0.631855488, 4.49690951e-08, -0.775086224)
		_G.PUK = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311165e-08, -0.101116329, -9.10836278e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
		elseif MYLEVEL == 175 or MYLEVEL <= 224 then
		_G.Mon = "Dark Master [Lv. 175]"
		_G.NAMEQUEST = "SkyQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$7,500\n350,000 Exp."
		_G.QUESTMON = CFrame.new(-4843.2041, 717.669617, -2623.13159, -0.775086224, -1.6359829e-08, -0.631855488, -4.10942462e-08, 1, 2.45178793e-08, 0.631855488, 4.49690951e-08, -0.775086224)
		_G.PUK = CFrame.new(-5239.94629, 392.217102, -2208.18335, 0.969297886, -5.95604988e-09, -0.245889395, 3.87897714e-09, 1, -8.93151775e-09, 0.245889395, 7.70350184e-09, 0.969297886)
		elseif MYLEVEL == 225 or MYLEVEL <= 275 then
		_G.Mon = "Toga Warrior [Lv. 225]"
		_G.NAMEQUEST = "ColosseumQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$7,000\n700,000 Exp."
		_G.QUESTMON = CFrame.new(-1575.72961, 7.38933659, -2983.39453, 0.52762109, -1.48187587e-06, 0.849479854, 2.69328297e-07, 1, 1.57716818e-06, -0.849479854, -6.0335816e-07, 0.52762109)
		_G.PUK = CFrame.new(-1819.12415, 7.28907108, -2744.02539, 0.547199547, 2.10840998e-08, -0.837002158, -1.27399286e-10, 1, 2.51067309e-08, 0.837002158, -1.36317579e-08, 0.547199547)
		elseif MYLEVEL == 275 or MYLEVEL <= 299 then
		_G.Mon = "Gladiator [Lv. 275]"
		_G.NAMEQUEST = "ColosseumQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$7,500\n1,000,000 Exp."
		_G.QUESTMON = CFrame.new(-1575.72961, 7.38933659, -2983.39453, 0.52762109, -1.48187587e-06, 0.849479854, 2.69328297e-07, 1, 1.57716818e-06, -0.849479854, -6.0335816e-07, 0.52762109)
		_G.PUK = CFrame.new(-1334.76514, 7.44254398, -3228.90552, -0.340173125, 2.8230156e-08, 0.940362811, 2.60959143e-09, 1, -2.90764834e-08, -0.940362811, -7.4370754e-09, -0.340173125)
		elseif MYLEVEL == 300 or MYLEVEL <= 329 then
		_G.Mon = "Military Soldier [Lv. 300]"
		_G.NAMEQUEST = "MagmaQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$8,250\n1,300,000 Exp."
		_G.QUESTMON = CFrame.new(-5316.33887, 12.236989, 8517.67285, 0.499506682, -5.08374072e-08, -0.86631006, -1.30872131e-08, 1, -6.62286652e-08, 0.86631006, 4.44192452e-08, 0.499506682)
		_G.PUK = CFrame.new(-5419.0752, 10.9255161, 8464.50488, -0.637788415, -4.55103836e-05, 0.770211577, 7.05542743e-06, 1, 6.49305366e-05, -0.770211577, 4.68461185e-05, -0.637788415)
		elseif MYLEVEL == 330 or MYLEVEL <= 374 then
		_G.Mon = "Military Spy [Lv. 330]"
		_G.NAMEQUEST = "MagmaQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$8,500\n1,850,000 Exp."
		_G.QUESTMON = CFrame.new(-5316.33887, 12.236989, 8517.67285, 0.499506682, -5.08374072e-08, -0.86631006, -1.30872131e-08, 1, -6.62286652e-08, 0.86631006, 4.44192452e-08, 0.499506682)
		_G.PUK = CFrame.new(-5805.42041, 99.5276108, 8782.36719, -0.316935152, -6.4923519e-08, 0.948447227, 4.12987404e-08, 1, 8.2252896e-08, -0.948447227, 6.52385026e-08, -0.316935152)
		elseif MYLEVEL == 375 or MYLEVEL <= 399 then
		_G.Mon = "Fishman Warrior [Lv. 375]"
		_G.NAMEQUEST = "FishmanQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$8,750\n2,500,000 Exp."
		_G.QUESTMON = CFrame.new(61122.2422, 18.4716377, 1568.84778, 0.971045971, -1.77007031e-08, 0.238892734, 4.80190776e-09, 1, 5.45760841e-08, -0.238892734, -5.18487475e-08, 0.971045971)
		_G.PUK = CFrame.new(60898.043, 18.4828224, 1550.9906, -0.0750192106, -4.46996573e-09, 0.997182071, 3.6461556e-10, 1, 4.51002746e-09, -0.997182071, 7.0192685e-10, -0.0750192106)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
        elseif MYLEVEL == 400 or MYLEVEL <= 449 then
		_G.Mon = "Fishman Commando [Lv. 400]"
		_G.NAMEQUEST = "FishmanQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$9,000\n3,000,000 Exp."
		_G.QUESTMON = CFrame.new(61122.2422, 18.4716377, 1568.84778, 0.971045971, -1.77007031e-08, 0.238892734, 4.80190776e-09, 1, 5.45760841e-08, -0.238892734, -5.18487475e-08, 0.971045971)
		_G.PUK = CFrame.new(61885.4063, 18.4828224, 1500.37195, 0.722261012, 4.84021889e-08, -0.691620588, 1.27929427e-08, 1, 8.33434299e-08, 0.691620588, -6.90435726e-08, 0.722261012)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
        elseif MYLEVEL == 450 or MYLEVEL <= 474 then
		_G.Mon = "God's Guard [Lv. 450]"
		_G.NAMEQUEST = "SkyExp1Quest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$8,750\n3,800,000 Exp."
		_G.QUESTMON = CFrame.new(-4721.28369, 845.277161, -1954.95154, -0.979754269, -1.72096932e-08, 0.200205252, -2.52417198e-09, 1, 7.36076018e-08, -0.200205252, 7.16119786e-08, -0.979754269)
		_G.PUK = CFrame.new(-4630.00635, 866.902954, -1936.76331, -0.656243384, 9.12737941e-12, 0.754549265, 3.58402819e-09, 1, 3.10498938e-09, -0.754549265, 4.74195483e-09, -0.656243384)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        end
        elseif MYLEVEL == 475 or MYLEVEL <= 524 then
		_G.Mon = "Shanda [Lv. 475]"
		_G.NAMEQUEST = "SkyExp1Quest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$9,000\n4,300,000 Exp."
		_G.QUESTMON = CFrame.new(-7861.79736, 5545.49316, -379.920776, 0.504107952, -1.41941534e-08, -0.863640666, -1.31181936e-08, 1, -2.40923566e-08, 0.863640666, 2.34745521e-08, 0.504107952)
		_G.PUK = CFrame.new(-7682.69775, 5607.36279, -445.691833, 0.786274791, -4.48163426e-08, -0.617877364, -4.81674345e-09, 1, -7.86622607e-08, 0.617877364, 6.48263239e-08, 0.786274791)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        end
        elseif MYLEVEL == 525 or MYLEVEL <= 549 then
		_G.Mon = "Royal Squad [Lv. 525]"
		_G.NAMEQUEST = "SkyExp2Quest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$9,500\n4,600,000 Exp."
		_G.QUESTMON = CFrame.new(-7902.23242, 5635.96387, -1411.96741, -0.0435957126, -2.13718043e-09, 0.999049246, 4.23562352e-10, 1, 2.15769735e-09, -0.999049246, 5.1722604e-10, -0.0435957126)
		_G.PUK = CFrame.new(-7579.42285, 5628.39111, -1540.75073, -0.0374937952, 1.17099557e-08, 0.999296963, -3.30279164e-08, 1, -1.29574085e-08, -0.999296963, -3.34905081e-08, -0.0374937952)
		elseif MYLEVEL == 550 or MYLEVEL <= 624 then
		_G.Mon = "Royal Soldier [Lv. 550]"
		_G.NAMEQUEST = "SkyExp2Quest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$9,750\n5,000,000 Exp."
		_G.QUESTMON = CFrame.new(-7902.23242, 5635.96387, -1411.96741, -0.0435957126, -2.13718043e-09, 0.999049246, 4.23562352e-10, 1, 2.15769735e-09, -0.999049246, 5.1722604e-10, -0.0435957126)
		_G.PUK = CFrame.new(-7834.84717, 5681.36182, -1790.76782, -0.102890432, 3.28112684e-08, 0.994692683, -6.45397762e-08, 1, -3.96622966e-08, -0.994692683, -6.82781121e-08, -0.102890432)
		elseif MYLEVEL == 625 or MYLEVEL <= 649 then
		_G.Mon = "Galley Pirate [Lv. 625]"
		_G.NAMEQUEST = "FountainQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$10,000\n5,800,000 Exp."
		_G.QUESTMON = CFrame.new(5254.52734, 38.5011368, 4049.80127, -0.0732342899, 2.23174847e-08, -0.997314751, 1.2052287e-07, 1, 1.35274023e-08, 0.997314751, -1.19208565e-07, -0.0732342899)
		_G.PUK = CFrame.new(5597.58936, 41.5013657, 3960.55371, -0.584786832, 4.98908861e-08, 0.811187029, 4.10757259e-08, 1, -3.18919575e-08, -0.811187029, 1.4670098e-08, -0.584786832)
		elseif MYLEVEL >= 650 then
		_G.Mon = "Galley Captain [Lv. 650]"
		_G.NAMEQUEST = "FountainQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$10,000\n6,300,000 Exp."
		_G.QUESTMON = CFrame.new(5254.52734, 38.5011368, 4049.80127, -0.0732342899, 2.23174847e-08, -0.997314751, 1.2052287e-07, 1, 1.35274023e-08, 0.997314751, -1.19208565e-07, -0.0732342899)
		_G.PUK = CFrame.new(5705.8252, 52.241478, 4890.11035, -0.969319642, 4.40228476e-09, 0.245803744, -7.88622412e-09, 1, -4.90088397e-08, -0.245803744, -4.94436954e-08, -0.969319642)    
		end
		end
		if newworld then
		    magbring = 400
		if MYLEVEL == 700 or MYLEVEL <= 724 then
		_G.Mon = "Raider [Lv. 700]"
		_G.NAMEQUEST = "Area1Quest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$10,250\n6,750,000 Exp."
		_G.QUESTMON = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		_G.PUK = CFrame.new(-141.872437, 96.6845093, 2491.01538, 0.13152431, 0, -0.991312981, -0, 1.00000012, -0, 0.991312981, 0, 0.13152431)
		elseif MYLEVEL == 725 or MYLEVEL <= 774 then
		_G.Mon = "Mercenary [Lv. 725]"
		_G.NAMEQUEST = "Area1Quest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$10,500\n7,000,000 Exp."
		_G.QUESTMON = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		_G.PUK = CFrame.new(-938.497314, 80.9546738, 1443.98608, 0.231955677, 0, 0.972726345, -0, 1, -0, -0.972726345, 0, 0.231955677)
		elseif MYLEVEL == 775 or MYLEVEL <= 874 then
		_G.Mon = "Swan Pirate [Lv. 775]"
		_G.NAMEQUEST = "Area2Quest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$10,750\n7,500,000 Exp."
		_G.QUESTMON = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		_G.PUK = CFrame.new(967.233276, 141.309494, 1210.06384, 0.999673784, 5.40161649e-09, -0.0255404469, -7.62258967e-09, 1, -8.68617107e-08, 0.0255404469, 8.7028063e-08, 0.999673784)
		elseif MYLEVEL == 875 or MYLEVEL <= 899 then
		_G.Mon = "Marine Lieutenant [Lv. 875]"
		_G.NAMEQUEST = "MarineQuest3"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$11,250\n9,000,000 Exp."
		_G.QUESTMON = CFrame.new(-2443.04639, 73.0161057, -3220.30225, -0.854058921, -6.13997599e-08, -0.520176232, -1.30658604e-08, 1, -9.65840883e-08, 0.520176232, -7.56919505e-08, -0.854058921)
		_G.PUK = CFrame.new(-2967.00757, 72.9661407, -2972.7478, 0.977851391, 8.27619218e-08, -0.209300488, -6.95268412e-08, 1, 7.05923142e-08, 0.209300488, -5.44767893e-08, 0.977851391)
		elseif MYLEVEL == 900 or MYLEVEL <= 949 then
		_G.Mon = "Marine Captain [Lv. 900]"
		_G.NAMEQUEST = "MarineQuest3"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$11,500\n10,500,000 Exp."
		_G.QUESTMON = CFrame.new(-2443.04639, 73.0161057, -3220.30225, -0.854058921, -6.13997599e-08, -0.520176232, -1.30658604e-08, 1, -9.65840883e-08, 0.520176232, -7.56919505e-08, -0.854058921)
		_G.PUK = CFrame.new(-1818.36401, 93.3760834, -3203.57788, 0.315930545, 4.84752114e-08, 0.948782325, 1.37578589e-08, 1, -5.56731905e-08, -0.948782325, 3.06420738e-08, 0.315930545)
		elseif MYLEVEL == 950 or MYLEVEL <= 974 then
		_G.Mon = "Zombie [Lv. 950]"
		_G.NAMEQUEST = "ZombieQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$11,750\n11,000,000 Exp."
		_G.QUESTMON = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
		_G.PUK = CFrame.new(-5736.03516, 126.031998, -728.026184, 0.0818082988, -5.90035434e-08, 0.996648133, 3.5947787e-09, 1, 5.89069167e-08, -0.996648133, -1.23634614e-09, 0.0818082988)
		elseif MYLEVEL == 975 or MYLEVEL <= 999 then
		_G.Mon = "Vampire [Lv. 975]"
		_G.NAMEQUEST = "ZombieQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$12,000\n12,000,000 Exp."
		_G.QUESTMON = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
		_G.PUK = CFrame.new(-6028.23584, 6.40270138, -1295.4563, 0.667547405, 0, 0.744567394, -0, 1.00000012, -0, -0.744567394, 0, 0.667547405)
		elseif MYLEVEL == 1000 or MYLEVEL <= 1049 then
		_G.Mon = "Snow Trooper [Lv. 1000]"
		_G.NAMEQUEST = "SnowMountainQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$12,250\n13,000,000 Exp."
		_G.QUESTMON = CFrame.new(605.670532, 401.422028, -5370.10107, 0.459257662, -9.56824509e-10, -0.888303101, 5.98925964e-10, 1, -7.67489405e-10, 0.888303101, -1.79552401e-10, 0.459257662)
		_G.PUK = CFrame.new(544.207947, 401.422028, -5309.08887, 0.503866196, -2.06684501e-08, 0.86378175, 1.27917943e-09, 1, 2.31816841e-08, -0.86378175, -1.05755351e-08, 0.503866196)
		elseif MYLEVEL == 1050 or MYLEVEL <= 1099 then
		_G.Mon = "Winter Warrior [Lv. 1050]"
		_G.NAMEQUEST = "SnowMountainQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$12,500\n14,200,000 Exp."
		_G.QUESTMON = CFrame.new(605.670532, 401.422028, -5370.10107, 0.459257662, -9.56824509e-10, -0.888303101, 5.98925964e-10, 1, -7.67489405e-10, 0.888303101, -1.79552401e-10, 0.459257662)
		_G.PUK = CFrame.new(1240.86279, 461.108154, -5191.104, 0.528719008, -7.18234645e-08, 0.848796904, 2.89169716e-10, 1, 8.44378363e-08, -0.848796904, -4.4398444e-08, 0.528719008)
		elseif MYLEVEL == 1100 or MYLEVEL <= 1124 then
		_G.Mon = "Lab Subordinate [Lv. 1100]"
		_G.NAMEQUEST = "IceSideQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$12,250\n15,500,000 Exp."
		_G.QUESTMON = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
		_G.PUK = CFrame.new(-5833.63379, 48.4371948, -4510.4458, 0.0372838341, 5.56001822e-09, -0.999304712, -6.95599089e-09, 1, 5.30436006e-09, 0.999304712, 6.75338763e-09, 0.0372838341)
		elseif MYLEVEL == 1125 or MYLEVEL <= 1174 then
		_G.Mon = "Horned Warrior [Lv. 1125]"
		_G.NAMEQUEST = "IceSideQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$12,500\n16,800,000 Exp."
		_G.QUESTMON = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
		_G.PUK = CFrame.new(-6168.15918, 42.7079964, -6020.96826, -0.744210601, 2.41774178e-09, -0.667945027, -2.3336304e-09, 1, 6.21975493e-09, 0.667945027, 6.18754425e-09, -0.744210601)
		elseif MYLEVEL == 1175 or MYLEVEL <= 1199 then
		_G.Mon = "Magma Ninja [Lv. 1175]"
		_G.NAMEQUEST = "FireSideQuest"
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$12,250\n18,000,000 Exp."
		_G.QUESTMON = CFrame.new(-5429.68359, 15.9517593, -5296.70215, 0.919959962, -6.00166317e-08, -0.392012328, 2.29238974e-08, 1, -9.93018858e-08, 0.392012328, 8.23673076e-08, 0.919959962)
		_G.PUK = CFrame.new(-5404.85449, 22.8623676, -5896.09033, -0.519595861, 4.74720929e-09, 0.854412138, 1.52255595e-08, 1, 3.70304742e-09, -0.854412138, 1.49329917e-08, -0.519595861)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5466.8896484375, 15.951756477356, -5212.197265625))
        end
        elseif MYLEVEL == 1200 or MYLEVEL <= 1249 then
		_G.Mon = "Lava Pirate [Lv. 1200]"
		_G.NAMEQUEST = "FireSideQuest"
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$12,500\n20,000,000 Exp."
		_G.QUESTMON = CFrame.new(-5429.68359, 15.9517593, -5296.70215, 0.919959962, -6.00166317e-08, -0.392012328, 2.29238974e-08, 1, -9.93018858e-08, 0.392012328, 8.23673076e-08, 0.919959962)
		_G.PUK = CFrame.new(-5075.1958, 16.1485081, -4814.36133, -0.800640523, -1.06090866e-07, 0.599145055, -6.59776447e-08, 1, 8.89041587e-08, -0.599145055, 3.16500923e-08, -0.800640523)
		elseif MYLEVEL == 1250 or MYLEVEL <= 1274 then
		_G.Mon = "Ship Deckhand [Lv. 1250]"
		_G.NAMEQUEST = "ShipQuest1" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$12,250\n23,000,000 Exp."
		_G.QUESTMON = CFrame.new(1038.67456, 125.057098, 32911.3477, 0.120709591, 5.22710089e-08, -0.992687881, 7.9174507e-09, 1, 5.36187876e-08, 0.992687881, -1.43318593e-08, 0.120709591)
		_G.PUK = CFrame.new(1215.14063, 125.057114, 33050.7188, 0.527230442, 2.61814961e-08, 0.849722326, -5.66963045e-08, 1, 4.36674741e-09, -0.849722326, -5.04783984e-08, 0.527230442)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
        elseif MYLEVEL == 1275 or MYLEVEL <= 1299 then
		_G.Mon = "Ship Engineer [Lv. 1275]"
		_G.NAMEQUEST = "ShipQuest1" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$12,500\n24,500,000 Exp."
		_G.QUESTMON = CFrame.new(1038.67456, 125.057098, 32911.3477, 0.120709591, 5.22710089e-08, -0.992687881, 7.9174507e-09, 1, 5.36187876e-08, 0.992687881, -1.43318593e-08, 0.120709591)
		_G.PUK = CFrame.new(862.985413, 40.4428635, 32867.9492, -0.847809434, 8.49998827e-08, -0.530301034, 2.99658929e-08, 1, 1.1237865e-07, 0.530301034, 7.93847335e-08, -0.847809434)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
        elseif MYLEVEL == 1300 or MYLEVEL <= 1324 then
		_G.Mon = "Ship Steward [Lv. 1300]"
		_G.NAMEQUEST = "ShipQuest2" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$12,250\n26,500,000 Exp."
		_G.QUESTMON = CFrame.new(969.268311, 125.057121, 33245.2695, -0.85863924, -4.77058464e-08, -0.512580395, -1.49134394e-08, 1, -6.80880134e-08, 0.512580395, -5.08187057e-08, -0.85863924)
		_G.PUK = CFrame.new(923.611511, 129.555984, 33442.3125, 0.997516274, 9.71936913e-08, 0.0704362914, -9.52239958e-08, 1, -3.13219992e-08, -0.0704362914, 2.45369804e-08, 0.997516274)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
        elseif MYLEVEL == 1325 or MYLEVEL <= 1349 then
		_G.Mon = "Ship Officer [Lv. 1325]"
		_G.NAMEQUEST = "ShipQuest2" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$12,500\n28,500,000 Exp."
		_G.QUESTMON = CFrame.new(969.268311, 125.057121, 33245.2695, -0.85863924, -4.77058464e-08, -0.512580395, -1.49134394e-08, 1, -6.80880134e-08, 0.512580395, -5.08187057e-08, -0.85863924)
		_G.PUK = CFrame.new(882.275574, 181.057739, 33354.1797, 0.845816016, -3.71928088e-08, -0.533474684, 1.28583932e-09, 1, -6.7679359e-08, 0.533474684, 5.65583242e-08, 0.845816016)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
        elseif MYLEVEL == 1350 or MYLEVEL <= 1374 then
		_G.Mon = "Arctic Warrior [Lv. 1350]"
		_G.NAMEQUEST = "FrostQuest" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$12,250\n30,000,000 Exp."
		_G.QUESTMON = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
		_G.PUK = CFrame.new(5995.9292, 57.0727844, -6184.98926, 0.706337512, 5.23128296e-09, -0.707875192, -2.2285974e-08, 1, -1.48474424e-08, 0.707875192, 2.62629936e-08, 0.706337512)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
        end
        elseif MYLEVEL == 1375 or MYLEVEL <= 1424 then
		_G.Mon = "Snow Lurker [Lv. 1375]"
		_G.NAMEQUEST = "FrostQuest" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$12,500\n32,000,000 Exp."
		_G.QUESTMON = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
		_G.PUK = CFrame.new(5516.27539, 60.5209846, -6830.82764, 0.219563305, -7.8544824e-09, 0.975598276, 4.69439376e-09, 1, 6.99444236e-09, -0.975598276, 3.04411962e-09, 0.219563305)
		elseif MYLEVEL == 1425 or MYLEVEL <= 1449 then
		_G.Mon = "Sea Soldier [Lv. 1425]"
		_G.NAMEQUEST = "ForgottenQuest" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$12,250\n33,500,000 Exp."
		_G.QUESTMON = CFrame.new(-3053.97339, 236.846283, -10146.1484, -0.999963522, -2.10707256e-08, -0.00854360498, -2.09657198e-08, 1, -1.23802275e-08, 0.00854360498, -1.22006529e-08, -0.999963522)
		_G.PUK = CFrame.new(-3026.54834, 29.5403671, -9758.74316, -0.999909937, 1.71713896e-08, -0.0134194754, 1.68009748e-08, 1, 2.7715517e-08, 0.0134194754, 2.74875607e-08, -0.999909937)
        if _G.FARM and (_G.QUESTMON.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
        end
        elseif MYLEVEL >= 1450  then
		_G.Mon = "Water Fighter [Lv. 1450]"
		_G.NAMEQUEST = "ForgottenQuest" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$12,500\n35,500,000 Exp."
		_G.QUESTMON = CFrame.new(-3053.97339, 236.846283, -10146.1484, -0.999963522, -2.10707256e-08, -0.00854360498, -2.09657198e-08, 1, -1.23802275e-08, 0.00854360498, -1.22006529e-08, -0.999963522)
		_G.PUK = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
		end 
		end
		if thirdworld then
		    magbring = 400
		if MYLEVEL == 1500 or MYLEVEL <= 1524 then
		_G.Mon = "Pirate Millionaire [Lv. 1500]"
		_G.NAMEQUEST = "PiratePortQuest" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$13,000\n35,000,000 Exp."
		_G.QUESTMON = CFrame.new(-288.688629, 43.7932091, 5578.0918, -0.980135322, 4.04644034e-08, 0.198329896, 5.16003063e-08, 1, 5.0980109e-08, -0.198329896, 6.02012875e-08, -0.980135322)
		_G.PUK = CFrame.new(-362.372589, 116.311394, 5690.42188, 0.982939184, -1.16153336e-08, -0.183930904, 1.35050096e-08, 1, 9.02115538e-09, 0.183930904, -1.13512355e-08, 0.982939184)
		elseif MYLEVEL == 1525 or MYLEVEL <= 1574 then
		_G.Mon = "Pistol Billionaire [Lv. 1525]"
		_G.NAMEQUEST = "PiratePortQuest" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$15,000\n37,500,000 Exp."
		_G.QUESTMON = CFrame.new(-288.688629, 43.7932091, 5578.0918, -0.980135322, 4.04644034e-08, 0.198329896, 5.16003063e-08, 1, 5.0980109e-08, -0.198329896, 6.02012875e-08, -0.980135322)
		_G.PUK = CFrame.new(-238.026596, 219.645935, 6007.1748, 0.902000248, -1.08513618e-07, -0.431735516, 9.17130407e-08, 1, -5.97320096e-08, 0.431735516, 1.42825076e-08, 0.902000248)
		elseif MYLEVEL == 1575 or MYLEVEL <= 1599 then
		_G.Mon = "Dragon Crew Warrior [Lv. 1575]"
		_G.NAMEQUEST = "AmazonQuest" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$13,000\n40,000,000 Exp."
		_G.QUESTMON = CFrame.new(5833.72559, 51.3513527, -1104.3147, -0.958539188, -3.53234562e-08, 0.284960806, -3.93179853e-08, 1, -8.29718783e-09, -0.284960806, -1.91572642e-08, -0.958539188)
		_G.PUK = CFrame.new(6210.00977, 51.4822731, -1187.48975, 0.208473638, 2.79291683e-08, -0.978027999, -6.3442954e-08, 1, 1.50332973e-08, 0.978027999, 5.89149387e-08, 0.208473638)
		elseif MYLEVEL == 1600 or MYLEVEL <= 1624 then
		_G.Mon = "Dragon Crew Archer [Lv. 1600]"
		_G.NAMEQUEST = "AmazonQuest" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$15,000\n42,500,000 Exp."
		_G.QUESTMON = CFrame.new(5833.72559, 51.3513527, -1104.3147, -0.958539188, -3.53234562e-08, 0.284960806, -3.93179853e-08, 1, -8.29718783e-09, -0.284960806, -1.91572642e-08, -0.958539188)
		_G.PUK = CFrame.new(6672.1167, 386.634491, 102.138634, -0.879578114, 4.99873778e-08, 0.475754529, -1.44054524e-09, 1, -1.07732973e-07, -0.475754529, -9.54449106e-08, -0.879578114)
		elseif MYLEVEL == 1625 or MYLEVEL <= 1649 then
		_G.Mon = "Female Islander [Lv. 1625]"
		_G.NAMEQUEST = "AmazonQuest2" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$13,000\n45,500,000 Exp."
		_G.QUESTMON = CFrame.new(5445.99756, 601.603638, 750.611145, -0.0389447734, 1.17245778e-08, -0.999241352, 1.19459349e-08, 1, 1.12678942e-08, 0.999241352, -1.1498047e-08, -0.0389447734)
		_G.PUK = CFrame.new(4660.0293, 793.07666, 771.150757, -0.300044596, 6.91594604e-09, -0.953925192, -9.75659518e-08, 1, 3.79380722e-08, 0.953925192, 1.04453733e-07, -0.300044596)
		elseif MYLEVEL == 1650 or MYLEVEL <= 1699 then
		_G.Mon = "Giant Islander [Lv. 1650]"
		_G.NAMEQUEST = "AmazonQuest2" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$15,000\n48,000,000 Exp."
		_G.QUESTMON = CFrame.new(5445.99756, 601.603638, 750.611145, -0.0389447734, 1.17245778e-08, -0.999241352, 1.19459349e-08, 1, 1.12678942e-08, 0.999241352, -1.1498047e-08, -0.0389447734)
		_G.PUK = CFrame.new(5013.77881, 664.0849, -42.7317543, 0.793121755, 2.98509946e-08, 0.609063148, -3.13217008e-08, 1, -8.22422486e-09, -0.609063148, -1.25540822e-08, 0.793121755)
		elseif MYLEVEL == 1700 or MYLEVEL <= 1724 then
		_G.Mon = "Marine Commodore [Lv. 1700]"
		_G.NAMEQUEST = "MarineTreeIsland" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$13,000\n51,000,000 Exp."
		_G.QUESTMON = CFrame.new(2179.58447, 28.7054367, -6738.48682, 0.97564882, -2.54533923e-08, -0.219338506, 1.31742075e-08, 1, -5.74454191e-08, 0.219338506, 5.31569455e-08, 0.97564882)
		_G.PUK = CFrame.new(2548.86279, 124.071259, -7774.8999, -0.790427029, -1.174846e-08, -0.612556159, -2.99833545e-08, 1, 1.95103667e-08, 0.612556159, 3.37880124e-08, -0.790427029)
		elseif MYLEVEL == 1725 or MYLEVEL <= 1774 then
		_G.Mon = "Marine Rear Admiral [Lv. 1725]"
		_G.NAMEQUEST = "MarineTreeIsland" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$15,000\n53,500,000 Exp."
		_G.QUESTMON = CFrame.new(2179.58447, 28.7054367, -6738.48682, 0.97564882, -2.54533923e-08, -0.219338506, 1.31742075e-08, 1, -5.74454191e-08, 0.219338506, 5.31569455e-08, 0.97564882)
		_G.PUK = CFrame.new(3582.24365, 160.524048, -7055.01416, -0.182099551, 6.68982807e-08, -0.983280122, 8.52377937e-08, 1, 5.22501367e-08, 0.983280122, -7.42978941e-08, -0.182099551)
		elseif MYLEVEL == 1775 or MYLEVEL <= 1799 then
		_G.Mon = "Fishman Raider [Lv. 1775]"
		_G.NAMEQUEST = "DeepForestIsland3" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$13,000\n56,000,000 Exp."
		_G.QUESTMON = CFrame.new(-10582.666, 331.762634, -8758.61035, 0.919332206, 1.69593086e-08, -0.393482327, -3.42409479e-08, 1, -3.68999942e-08, 0.393482327, 4.73965578e-08, 0.919332206)
		_G.PUK = CFrame.new(-10449.9258, 331.762634, -8475.85742, -0.739984214, -8.96819241e-09, 0.67262423, -5.59647688e-08, 1, -4.82362239e-08, -0.67262423, -7.33373042e-08, -0.739984214)
		elseif MYLEVEL == 1800 or MYLEVEL <= 1824 then
		_G.Mon = "Fishman Captain [Lv. 1800]"
		_G.NAMEQUEST = "DeepForestIsland3" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$15,000\n58,500,000 Exp."
		_G.QUESTMON = CFrame.new(-10582.666, 331.762634, -8758.61035, 0.919332206, 1.69593086e-08, -0.393482327, -3.42409479e-08, 1, -3.68999942e-08, 0.393482327, 4.73965578e-08, 0.919332206)
		_G.PUK = CFrame.new(-11035.9189, 331.762634, -8966.12012, -0.199661195, 8.05780545e-08, -0.979865015, -2.36975328e-08, 1, 8.70625314e-08, 0.979865015, 4.06033926e-08, -0.199661195)
		elseif MYLEVEL == 1825 or MYLEVEL <= 1849 then
		_G.Mon = "Forest Pirate [Lv. 1825]"
		_G.NAMEQUEST = "DeepForestIsland" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$13,000\n61,000,000 Exp."
		_G.QUESTMON = CFrame.new(-13232.082, 332.378143, -7627.49121, -0.717027605, -4.07509866e-08, 0.69704479, 3.86317822e-08, 1, 9.8201788e-08, -0.69704479, 9.734147e-08, -0.717027605)
		_G.PUK = CFrame.new(-13438.9268, 417.009583, -7767.28467, -0.301585436, -7.02043721e-08, -0.953439176, -4.40521433e-08, 1, -5.96985004e-08, 0.953439176, 2.39968401e-08, -0.301585436)
		elseif MYLEVEL == 1850 or MYLEVEL <= 1899 then
		_G.Mon = "Mythological Pirate [Lv. 1850]"
		_G.NAMEQUEST = "DeepForestIsland" 
		_G.QUESTNUM = 2
		_G.QUESTTEXT = "Reward:\n$13,000\n64,000,000 Exp."
		_G.QUESTMON = CFrame.new(-13232.082, 332.378143, -7627.49121, -0.717027605, -4.07509866e-08, 0.69704479, 3.86317822e-08, 1, 9.8201788e-08, -0.69704479, 9.734147e-08, -0.717027605)
		_G.PUK = CFrame.new(-13560.6543, 522.013672, -6733.91113, 0.996960402, -1.61884088e-08, 0.0779099241, 1.91753653e-08, 1, -3.75904605e-08, -0.0779099241, 3.89701533e-08, 0.996960402)
		elseif MYLEVEL == 1900 or MYLEVEL <= 1924 then
		_G.Mon = "Jungle Pirate [Lv. 1900]"
		_G.NAMEQUEST = "DeepForestIsland2" 
		_G.QUESTNUM = 1
		_G.QUESTTEXT = "Reward:\n$13,000\n67,000,000 Exp."
		_G.QUESTMON = CFrame.new(-12683.9668, 390.860687, -9901.30176, 0.152271122, 4.28084199e-08, -0.988338768, -4.4882615e-08, 1, 3.63985464e-08, 0.988338768, 3.88167827e-08, 0.152271122)
		_G.PUK = CFrame.new(-11983.4141, 375.940613, -10459.2383, 0.999999106, 1.88226306e-08, 0.00133047614, -1.87607263e-08, 1, -4.65408618e-08, -0.00133047614, 4.65158578e-08, 0.999999106)
	   elseif MYLEVEL == 1925 or MYLEVEL <= 1974 then
		   _G.Mon = "Musketeer Pirate [Lv. 1925]"
		   _G.NAMEQUEST = "DeepForestIsland2" 
		   _G.QUESTNUM = 2
		   _G.QUESTTEXT = "Reward:\n$15,000\n70,000,000 Exp."
		   _G.QUESTMON = CFrame.new(-12683.9668, 390.860687, -9901.30176, 0.152271122, 4.28084199e-08, -0.988338768, -4.4882615e-08, 1, 3.63985464e-08, 0.988338768, 3.88167827e-08, 0.152271122)
		   _G.PUK = CFrame.new(-13293.082, 520.447632, -9901.99316, -0.758020341, -6.61346249e-08, 0.652230918, -2.15839417e-08, 1, 7.63127872e-08, -0.652230918, 4.37689316e-08, -0.758020341)
		  elseif MYLEVEL == 1975 or MYLEVEL <= 1999 then
			  _G.Mon = "Reborn Skeleton [Lv. 1975]"
			  _G.NAMEQUEST = "HauntedQuest1" 
			  _G.QUESTNUM = 1
			  _G.QUESTTEXT = "Reward:\n$13,000\n73,000,000 Exp."
			  _G.QUESTMON = CFrame.new(-9481.97754, 142.104843, 5566.03662, 0.00151404156, -4.14115426e-08, -0.999998868, -3.46592838e-10, 1, -4.14121146e-08, 0.999998868, 4.092921e-10, 0.00151404156)
			  _G.PUK = CFrame.new(-8762.2832, 185.188904, 6169.08057, 0.964605391, 2.60655728e-08, 0.263697594, -2.23583552e-08, 1, -1.70596284e-08, -0.263697594, 1.05599645e-08, 0.964605391)
		  elseif MYLEVEL == 2000 or MYLEVEL <= 2024 then
			  _G.Mon = "Living Zombie [Lv. 2000]"
			  _G.NAMEQUEST = "HauntedQuest1" 
			  _G.QUESTNUM = 2
			  _G.QUESTTEXT = "Reward:\n$13,250\n75,500,000 Exp."
			  _G.QUESTMON = CFrame.new(-9481.97754, 142.104843, 5566.03662, 0.00151404156, -4.14115426e-08, -0.999998868, -3.46592838e-10, 1, -4.14121146e-08, 0.999998868, 4.092921e-10, 0.00151404156)
			  _G.PUK = CFrame.new(-10081.085, 237.834961, 5913.92871, 0.0515871011, 9.59092787e-08, 0.998668492, 4.31864713e-08, 1, -9.82679822e-08, -0.998668492, 4.81983271e-08, 0.0515871011)
		  elseif MYLEVEL == 2025 or MYLEVEL <= 2049 then
			  _G.Mon = "Demonic Soul [Lv. 2025]"
			  _G.NAMEQUEST = "HauntedQuest2" 
			  _G.QUESTNUM = 1
			  _G.QUESTTEXT = "Reward:\n$13,500\n78,000,000 Exp."
			  _G.QUESTMON = CFrame.new(-9513.68945, 172.104813, 6078.30811, 0.06916935, 2.37454696e-08, 0.997604907, 1.21678923e-07, 1, -3.22391358e-08, -0.997604907, 1.23617454e-07, 0.06916935)
			  _G.PUK = CFrame.new(-9661.06152, 234.989151, 6208.34473, 0.839007735, 1.00638069e-07, -0.544119537, -9.42643013e-08, 1, 3.9604533e-08, 0.544119537, 1.80625381e-08, 0.839007735)
		  elseif MYLEVEL == 2050 or MYLEVEL <= 2074 then
			  _G.Mon = "Posessed Mummy [Lv. 2050]"
			  _G.NAMEQUEST = "HauntedQuest2" 
			  _G.QUESTNUM = 2
			  _G.QUESTTEXT = "Reward:\n$13,750\n80,500,000 Exp."
			  _G.QUESTMON = CFrame.new(-9513.68945, 172.104813, 6078.30811, 0.06916935, 2.37454696e-08, 0.997604907, 1.21678923e-07, 1, -3.22391358e-08, -0.997604907, 1.23617454e-07, 0.06916935)
			  _G.PUK = CFrame.new(-9555.10254, 66.3880768, 6371.47021, 0.993915081, -2.2833456e-08, 0.110149056, 2.02630606e-08, 1, 2.44549945e-08, -0.110149056, -2.20742304e-08, 0.993915081)
            elseif MYLEVEL == 2075 or MYLEVEL <= 2099 then
                _G.Mon = "Peanut Scout [Lv. 2075]"
                _G.NAMEQUEST = "NutsIslandQuest" 
                _G.QUESTNUM = 1
                _G.QUESTTEXT = "Reward:\n$14,000\n82,500,000 Exp."
                _G.QUESTMON = CFrame.new(-2103.03442, 38.103981, -10192.5801, 0.779485822, -2.70350977e-08, 0.626419842, -3.08562882e-08, 1, 8.15541483e-08, -0.626419842, -8.2899291e-08, 0.779485822)
                _G.PUK = CFrame.new(-2149.84937, 122.471855, -10359.0498, -0.0922852308, -3.50682292e-08, -0.995732605, 3.04092396e-09, 1, -3.55003564e-08, 0.995732605, -6.30410568e-09, -0.0922852308)
           elseif MYLEVEL == 2100 or MYLEVEL <= 2124 then
                _G.Mon = "Peanut President [Lv. 2100]"
                _G.NAMEQUEST = "NutsIslandQuest" 
                _G.QUESTNUM = 2
                _G.QUESTTEXT = "Reward:\n$14,100\n84,500,000 Exp."
                _G.QUESTMON = CFrame.new(-2103.03442, 38.103981, -10192.5801, 0.779485822, -2.70350977e-08, 0.626419842, -3.08562882e-08, 1, 8.15541483e-08, -0.626419842, -8.2899291e-08, 0.779485822)
                _G.PUK = CFrame.new(-2149.84937, 122.471855, -10359.0498, -0.0922852308, -3.50682292e-08, -0.995732605, 3.04092396e-09, 1, -3.55003564e-08, 0.995732605, -6.30410568e-09, -0.0922852308)
            elseif MYLEVEL == 2125 or MYLEVEL <= 2149 then
                _G.Mon = "Ice Cream Chef [Lv. 2125]"
                _G.NAMEQUEST = "IceCreamIslandQuest" 
                _G.QUESTNUM = 1
                _G.QUESTTEXT = "Reward:\n$14,200\n86,500,000 Exp."
                _G.QUESTMON = CFrame.new(-823.195129, 65.8453369, -10963.583, 0.367210746, -2.2831804e-08, -0.930137753, 2.00119876e-09, 1, -2.37566322e-08, 0.930137753, 6.86230051e-09, 0.367210746)
                _G.PUK = CFrame.new(-846.166931, 205.853973, -11006.5137, -0.153710946, 3.34348504e-09, 0.988115847, -4.13023145e-08, 1, -9.80867032e-09, -0.988115847, -4.23191722e-08, -0.153710946)
            elseif MYLEVEL == 2150 or MYLEVEL <= 2199 then
                _G.Mon = "Ice Cream Commander [Lv. 2150]"
                _G.NAMEQUEST = "IceCreamIslandQuest" 
                _G.QUESTNUM = 2
                _G.QUESTTEXT = "Reward:\n$14,300\n89,000,000 Exp."
                _G.QUESTMON = CFrame.new(-823.195129, 65.8453369, -10963.583, 0.367210746, -2.2831804e-08, -0.930137753, 2.00119876e-09, 1, -2.37566322e-08, 0.930137753, 6.86230051e-09, 0.367210746)
                _G.PUK = CFrame.new(-846.166931, 205.853973, -11006.5137, -0.153710946, 3.34348504e-09, 0.988115847, -4.13023145e-08, 1, -9.80867032e-09, -0.988115847, -4.23191722e-08, -0.153710946)
            elseif MYLEVEL == 2200 or MYLEVEL <= 2224 then
                _G.Mon = "Cookie Crafter [Lv. 2200]"
                _G.NAMEQUEST = "CakeQuest1" 
                _G.QUESTNUM = 1
                _G.QUESTTEXT = "Reward:\n$14,300\n89,000,000 Exp."
                _G.QUESTMON = CFrame.new(-2021.3193359375, 37.82402038574219, -12027.6845703125)
                _G.PUK = CFrame.new(-2288.84717, 93.943161, -12046.7285, 0.0389619507, -8.05070766e-09, 0.999240696, 1.44159458e-08, 1, 7.49472484e-09, -0.999240696, 1.41129908e-08, 0.0389619507)
            elseif MYLEVEL == 2225 or MYLEVEL <= 2249 then
                _G.Mon = "Cake Guard [Lv. 2225]"
                _G.NAMEQUEST = "CakeQuest1" 
                _G.QUESTNUM = 2
                _G.QUESTTEXT = "Reward:\n$14,300\n89,000,000 Exp."
                _G.QUESTMON = CFrame.new(-2021.3193359375, 37.82402038574219, -12027.6845703125)
                _G.PUK = CFrame.new(-1600.24854, 195.694992, -12346.0342, -0.9457618, -7.09395209e-08, -0.32486099, -9.57561568e-08, 1, 6.04042683e-08, 0.32486099, 8.82354882e-08, -0.9457618)
            elseif MYLEVEL == 2250 or MYLEVEL <= 2274 then
                _G.Mon = "Baking Staff [Lv. 2250]"
                _G.NAMEQUEST = "CakeQuest2" 
                _G.QUESTNUM = 1
                _G.QUESTTEXT = "Reward:\n$14,300\n89,000,000 Exp."
                _G.QUESTMON = CFrame.new(-1928.67395, 37.8331604, -12842.3936, -0.235107109, -7.40617239e-08, -0.971969485, -7.00571334e-08, 1, -5.92516507e-08, 0.971969485, 5.41629106e-08, -0.235107109)
                _G.PUK = CFrame.new(-1848.26746, 186.937271, -13007.0479, 0.460077673, 6.23081897e-09, -0.887878656, -9.55947232e-09, 1, 2.06415507e-09, 0.887878656, 7.53797913e-09, 0.460077673)
            elseif MYLEVEL >= 2275 then
                _G.Mon = "Head Baker [Lv. 2275]"
                _G.NAMEQUEST = "CakeQuest2" 
                _G.QUESTNUM = 2
                _G.QUESTTEXT = "Reward:\n$14,300\n89,000,000 Exp."
                _G.QUESTMON = CFrame.new(-1928.67395, 37.8331604, -12842.3936, -0.235107109, -7.40617239e-08, -0.971969485, -7.00571334e-08, 1, -5.92516507e-08, 0.971969485, 5.41629106e-08, -0.235107109)
                _G.PUK = CFrame.new(-2012.3689, 177.257675, -12839.6357, 0.759093106, 4.20168478e-09, -0.650982082, 1.84710747e-10, 1, 6.66976474e-09, 0.650982082, -5.18321563e-09, 0.759093106)  
	   end
		end
		end


function TP(P)
            Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance < 10 then
                Speed = 1000
            elseif Distance < 170 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
                Speed = 350
            elseif Distance < 1000 then
                Speed = 350
            elseif Distance >= 1000 then
                Speed = 300
            end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                {CFrame = P}
            ):Play()
        end



        function TP1(P1)
            Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
           if Distance < 10 then
                Speed = 1000
            elseif Distance < 170 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
                Speed = 350
            elseif Distance < 1000 then
                Speed = 350
            elseif Distance >= 1000 then
                Speed = 300
            end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                {CFrame = P1}
            ):Play()
            _G.Noclip = true
            wait(Distance/Speed)
            _G.Noclip = false
        end


        --[[spawn(function()
            while game:GetService("RunService").RenderStepped:wait() do
                if _G.FARM and _G.BypassFARM == "Bypass" then
                    pcall(function()
                        checklevel()
                        haki()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestReward.Title.Text == _G.QUESTTEXT then
                            
                            else
                            local args = {
                                [1] = "AbandonQuest"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
        
                            else
                                 repeat game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = _G.QUESTMON wait() until _G.StopTween == true or not _G.FARM or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _G.QUESTMON.Position).Magnitude <= 8
         
                                wait(0.5)
                                    local args = {
                                        [1] = "StartQuest",
                                        [2] = _G.NAMEQUEST,
                                        [3] = _G.QUESTNUM
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                wait(0.8)
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PUK
                        end
                        
                        if game:GetService("Workspace").Enemies:FindFirstChild(_G.Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == _G.Mon  then
                                    if v.Humanoid.Health > 0 then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MagnetActive = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.FARM == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestReward.Title.Text.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)]]
        
        
spawn(function()
    game:GetService('RunService').Stepped:Connect(function()
        if _G.Farm then
            for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "Sounds" then
                    v:Destroy() 
                end
            end
        end
    end)
end)    
        

spawn(function()
    pcall(function()
        while _G.FARM do
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
            v.Humanoid.WalkSpeed = 0
            end
         end
        end)
    end)




spawn(function()
            while wait() do
                pcall(function()
                    checklevel()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.FARM and MagnetActive and Magnet then
                            if v.Name == _G.Mon and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Factory Staff [Lv. 800]" then
                                    if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= magbring then
                                        for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.CFrame = PosMon
                                        v.Humanoid.WalkSpeed = 0
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == _G.Mon then
                                    if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= magbring then
                                        for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.CFrame = PosMon
                                        v.Humanoid.WalkSpeed = 0
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
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
                pcall(function()
                    checklevel()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.FARM and MagnetActive and Magnet then
                            if v.Name == _G.Mon and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Factory Staff [Lv. 800]" then
                                    if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= magbring then
                                        for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.CFrame = PosMon
                                        v.Humanoid.WalkSpeed = 0
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == _G.Mon then
                                    if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= magbring then
                                        for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CFrame = PosMon
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end
                        elseif FarmMasteryFruit and MasteryBFMagnetActive and MasteryMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 then
                                    for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 then
                                    for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == _G.Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 400 then
                                    for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        elseif FarmMasteryGun and MasteryGunMagnetActive and MasteryMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 then
                                    for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 then
                                    for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == _G.Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 400 then
                                    for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                    end
                
                                    if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                    local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                    vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                    vc.Velocity = Vector3.new(0, 0, 0)
                                    end
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        elseif AutoBartilo and MagnetBatilo and Magnet then
                            if v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CFrame = PosMonBartilo
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif AutoRengoku and RengokuMagnet and Magnet then
                            if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - PosMonRengoku.Position).Magnitude <= 350 then
                                for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CFrame = PosMonRengoku
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif Auto_Bone and BoneMagnet and Magnet then
                            if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - MainMonBone.Position).Magnitude <= 300 then
                                for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CFrame = MainMonBone
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif AutoEcto and EctoplasMagnet and Magnet then
                            if string.find(v.Name, "Ship") and (v.HumanoidRootPart.Position - PosMonEctoplas.Position).Magnitude <= 300 then
                                for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.CFrame = PosMonEctoplas
                                v.Humanoid.WalkSpeed = 0
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif AutoEvoRace and EvoMagnet and Magnet then
                            if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonZombie.Position).Magnitude <= 300 then
                                for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.CFrame = PosMonZombie
                                v.Humanoid.WalkSpeed = 0
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif AutoCitizen and CitizenMagnet and Magnet then
                            if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - PosMonCitizen.Position).Magnitude <= 300 then
                               for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.CFrame = PosMonZombie
                                v.Humanoid.WalkSpeed = 0
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif AutoFarmSelectMonster and AutoFarmSelectMonsterMagnet and Magnet then
                            if v.Name == _G.Mon and (v.HumanoidRootPart.Position - PosMonSelectMonster.Position).Magnitude <= 400 then
                                for a, e in pairs(v:GetChildren()) do
                                        if e:IsA("BasePart") then
                                            if e.CanCollide == true then
                                                e.CanCollide = false
                                            end
                                        end
                                        end
                
                                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                                        vc.Velocity = Vector3.new(0, 0, 0)
                                        end
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CFrame = PosMonSelectMonster
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end)
            end
        end)
  
 spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
     pcall(function()
         if _G.FARM then
             local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
             local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
             Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
             Combat.activeController.hitboxMagnitude = 120
             Combat.activeController.increment = 3
         end
     end)
 end) 
 end)
 
 spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
     pcall(function()
             local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
             local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
             Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
             Combat.activeController.hitboxMagnitude = 120
             Combat.activeController.increment = 3
     end)
 end) 
 end)


spawn(function()
    while game:GetService("RunService").RenderStepped:wait() do
        if _G.FARM then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v.Name == "Humanoid" then
                        v.PlatformStand = true
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while game:GetService("RunService").RenderStepped:wait() do
        if _G.FARM then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v.Name == _G.Mon then
                        v.Humanoid:ChangeState(11)
                    end
                end
            end)
        end
    end
end)



spawn(function()
    while game:GetService("RunService").RenderStepped:wait() do
        if _G.FARM then
            pcall(function()
                EquipWeapon(_G.SelectWeapon)
            end)
        end
    end
end)



--[[ Tab1:CreateButton("Bypass [Only FirstWorld]", function()
    if OldWorld then
        haki()
      TP1(CFrame.new(5704.35400390625, 38.52693176269531, 3923.11181640625))
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(15,false)
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(16,false)
        wait(0.05)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (FindNearestMon(position).HumanoidRootPart.CFrame * CFrame.new(0,0,-2.5))
end
end)]]
--[[spawn(function()
	while wait(.1) do
            local args = {[1] = "Candies",[2] = "Check"}
			cdtt = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if _G.CandyTrade then
				if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Exp.text, "2x") then
				elseif cdtt >= 51 then
					local args = {
					[1] = "Candies",
					[2] = "Buy",
					[3] = 1,
					[4] = 1
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
	end
end)]]

   



   spawn(function()
       game:GetService('RunService').Stepped:Connect(function()
           if _G.Fastatk then
               for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                   if v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "Sounds" then--or v.Name == "SlashHit"
                       v:Destroy() 
                   end
               end
           end
       end)
   end)

_G.FARM = false
_G.BypassFARM = "Normal"
--[[local Selectmode = Tab1:CreateDropdown("Select Method",{"Bypass","Normal"},"Hee",false,function(A)
    _G.BypassFARM = A
end)]]


        spawn(function()
            while game:GetService("RunService").RenderStepped:wait() do
                if _G.FARM and _G.BypassFARM == "Normal" then
                    pcall(function()
                        checklevel()
                        haki()
                        --[[if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestReward.Title.Text == _G.QUESTTEXT then
                            
                            else
                            local args = {
                                [1] = "AbandonQuest"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end]]
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
        
                            else
                                StopTween()
                                repeat TP(_G.QUESTMON) wait() until _G.StopTween == true or not _G.FARM or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _G.QUESTMON.Position).Magnitude <= 8
                                 
         
                                wait(0.5)
                                    local args = {
                                        [1] = "StartQuest",
                                        [2] = _G.NAMEQUEST,
                                        [3] = _G.QUESTNUM
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                wait(0.8)
                                TP(_G.PUK)
                        end
                        
                        if game:GetService("Workspace").Enemies:FindFirstChild(_G.Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == _G.Mon  then
                                    if v.Humanoid.Health > 0 then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,15,10))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    MagnetActive = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.FARM == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestReward.Title.Text.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)

spawn(function()
    while wait() do
        if _G.AutoSelectMelee then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == "Melee" then
                    _G.SelectWeapon = v.Name
                    end
                end
            end
        end
    end)

Tab1:CreateTi("Auto Farm Level")

Tab1:CreateToggle("Auto Select Melee", _G.AutoSelectMelee, function(vue)
    _G.AutoSelectMelee = vue
end)

 Tab1:CreateToggle("Auto Farm Level", _G.FARM, function(vu)
     if vu then
    _G.FARM = vu
    else
        _G.FARM = vu
        local args = {
                                [1] = "AbandonQuest"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
 end)

 Method = CFrame.new(0,35,0)
 spawn(function()
    while wait(3) do
        if Methodnow == 1 then
         Methodnow = 2
         Method = CFrame.new(0,35,0)
         else
         Methodnow = 1
         Method = CFrame.new(0,0,35)
        end
     end
 end)

 

         


         

         
         
         
         
         
         function haki()
         if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
         --nothing
         else
         local args = {
         [1] = "Buso"
         }
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
         end
         end
         
         
         
         
         function EquipWeapon(ToolSe)
             if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                 local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                 wait(.1)
                 game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
             end
         end     
         
         
         function bring1()
             for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                 for k,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                     if x.Name == _G.Mon then
                         if v.Name == _G.Mon then
                             v.HumanoidRootPart.CFrame = x.HumanoidRootPart.CFrame
                             v.HumanoidRootPart.CanCollide = false
                             sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                 end 
             end
          end
          end
          end
         
         function bring()
            for i,x in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    for n,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if x.Name == _G.Mon then
                            if y.Name == _G.Mon then
                                x.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
                                x.HumanoidRootPart.CanCollide = false
                                y.HumanoidRootPart.CanCollide = false
                                x.Humanoid:ChangeState(11)
                                y.Humanoid:ChangeState(11)
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end
         function bring4()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == _G.Mon and v2.Name == _G.Mon then
                        v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        v2.HumanoidRootPart.CanCollide = false
                        v2.Humanoid:ChangeState(11)
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end
        end
         
         
         
         
         


         if NewWorld then

            spawn(function()
                while wait() do
                    if _G.AutoRengoku then
                        bring2()
                    end
                end
            end)
        end

         function bring2()
            local plr = game.Players.LocalPlayer
            pcall(function()
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end)
        end




        spawn(function()
            while wait() do
               if _G.EquipMelee then
                  pcall(function()
                     for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                       if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                          local ToolSe = tostring(v.Name)
                         local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                         wait(.4)
                         game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                       end
                        end
                     end
                  end)
            end
            end
            end)

            function equip()
                pcall(function()
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name == _G.SelectWeapon then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                        end
                    end
                end)
            end

Magnet = true
Tab1:CreateToggle("Bring Mob", Magnet, function(vu)
    Magnet = vu
end)

_G.Fastatk = false
Tab1:CreateToggle("Fast Attack", true, function(vu)
    _G.Fastatk = vu
end)

local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
spawn(function()
    for i = 1,5 do
        game:GetService('RunService').Stepped:connect(function()
            for i = 1,5 do
                kkii:Stop()
                if _G.Fastatk then
                    pcall(function()
                        if RigC.activeControllers then
                        end 
                    end)
                end
            end
        end)
    end
end)


   local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
   local VirtualUser = game:GetService('VirtualUser')
   local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
   spawn(function()
       while game:GetService("RunService").RenderStepped:wait() do
           if _G.Fastatk and _G.FARM or _G.Fastatk and Auto_Bone then
               pcall(function()
                RigC.activeController.timeToNextAttack = 0
                RigC.activeController.attacking = false
                RigC.activeController.blocking = false
                RigC.activeController.timeToNextAttack = 0
                RigC.activeController.timeToNextBlock = 0
                RigC.activeController.increment = 3
                RigC.activeController.hitboxMagnitude = 100
                game.Players.LocalPlayer.Character.Stun.Value = 0
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                kkii:Stop()
               end)
           end
       end
   end)
   
   
  local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
if _G.Fastatk == true then
if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
if not shared.cpc then shared.cpc = STOP.play end
while task.wait() do
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                    local Hits = STOPRL.getBladeHits(b,c,d)
                    if Hits then
                        STOP.play = function() end
                        a:Play(0.01,0.01,0.01)
                        func(Hits)
                        STOP.play = shared.cpc
                        wait(a.length * 0.5)
                        a:Stop()
                    end
                end
end
end
end)
   
Tab1:CreateTi("Auto???")
       
       --[[     Tab1:CreateToggle("Auto Buy X2 EXP (Candy)", nil, function(vu)
                _G.CandyTrade = vu
        end)]]

     
        Tab1:CreateToggle("Auto Set spawn", nil, function(vu)
                _G.SetSpawn = vu
        end)


        spawn(function()
            pcall(function()
                while wait(.1) do
                    if _G.SetSpawn and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    end
                end
            end)
        end)

        if OldWorld then
            Tab1:CreateToggle("Auto Second Sea", nil, function(x)
                _G.AutoNew = x
            end)
        end

        spawn(function()
			while wait(.1) do
				if _G.AutoNew then
					if OldWorld then
						local MyLevel = game.Players.localPlayer.Data.Level.Value
						if MyLevel >= 700 and OldWorld then
							_G.FARM = false
							_G.SelectWeapon = "Key"
							repeat wait()
								TP(CFrame.new(4849.29883, 5.65138149, 719.611877))
							until _G.StopTween == true or not _G.AutoNew or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(4849.29883, 5.65138149, 719.611877).Position).Magnitude <= 10
							wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
							wait(0.5)
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
								local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
								wait(.4)
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							end
							repeat wait()
								TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
							until _G.StopTween == true or not _G.AutoNew or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(1347.7124, 37.3751602, -1325.6488).Position).Magnitude <= 10
							wait(0.5)
							attack()
							if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
								CheckBoss = true
								_G.SelectWeapon = _G.SelectToolWeaponOld
								EquipWeapon(_G.SelectWeapon)
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
								end
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if CheckBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										repeat wait(.1)
											pcall(function()
												v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
												v.HumanoidRootPart.BrickColor = BrickColor.new("White")
												v.HumanoidRootPart.CanCollide = false
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0, 10, 10))
												attack()
											end)
										until not CheckBoss or not v.Parent or v.Humanoid.Health <= 0
									end
								end
								CheckBoss = false
								wait(0.5)
								repeat wait()
									TP(CFrame.new(-1166.23743, 7.65220165, 1728.36487))
								until (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - CFrame.new(-1166.23743, 7.65220165, 1728.36487).Position).Magnitude <= 10
								wait(0.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							else
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
									local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
									wait(.4)
									game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
								end
								TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
							end
						end
					end
				end
			end
		end)
if newworld then
        Tab1:CreateToggle("Auto Third Sea", nil, function(value)
            local args = {
				[1] = "AbandonQuest"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			Sea3 = value
			Sea33 = value
			Check = true
			Checka = true
        end)
    end



    spawn(function()
		while wait() do
			pcall(function()
				if Sea3 and Checka then
					if newworld then
						local MyLevel = game.Players.localPlayer.Data.Level.Value
						if MyLevel >= 1500 then
							Sea33 = false
							if Check then
								repeat TP(CFrame.new(-1925.56482, 12.8456564, 1737.36609)) wait() until _G.StopTween == true or not Sea3 or Sea33 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1925.56482, 12.8456564, 1737.36609)).Magnitude <= 10
							end
							Check = false
							wait(0.5)
							local args = {
								[1] = "ZQuestProgress",
								[2] = "Check"
							}

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							local args = {
								[1] = "ZQuestProgress",
								[2] = "Begin"
							}

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							Checka = false
						end
					end
				end
			end)
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if Sea3 and Checka == false then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "rip_indra [Lv. 1500] [Boss]" then
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "rip_indra [Lv. 1500] [Boss]" then
									repeat wait()
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))										
										attack()
										spawn(function()
											wait(1)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
										end)
									until v.Humanoid.Health <= 0 or Sea3 == false
								end
							end
							repeat TP(CFrame.new(-26640.7559, 6.94934607, 439.43512)) wait() until _G.StopTween == true or not Sea3 or Sea33 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-26640.7559, 6.94934607, 439.43512)).Magnitude <= 10
						end
					end
				end
			end)
		end
	end)




    if newworld then
        Tab1:CreateToggle("Auto Rengoku", _G.AutoRengoku, function(vu)
            _G.AutoRengoku = vu
            TP(CFrame.new(5516.27539, 60.5209846, -6830.82764, 0.219563305, -7.8544824e-09, 0.975598276, 4.69439376e-09, 1, 6.99444236e-09, -0.975598276, 3.04411962e-09, 0.219563305))
        end)
    end
    spawn(function()
        while wait(.1) do
            if _G.AutoRengoku then
                EquipWeapon(_G.SelectWeapon)
                haki()
                if  game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    _G.SelectWeapon = "Hidden Key"
                    TP(CFrame.new(6572.8081054688, 296.65469360352, -6965.1962890625))
                
                else
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        for i2, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Snow Lurker [Lv. 1375]" and v2.Name == "Snow Lurker [Lv. 1375]" then
                            v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            attack()
                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            
                        end
                    end
                end
            end
        end
    end
    end)
if newworld then
    BareWeapon = ""
    local args = {
        [1] = "getInventoryWeapons"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game:GetService("RunService").Heartbeat:Connect(
        function()
            if _G.AutoBartilo then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end
        )

    Tab1:CreateToggle("Auto Quest Bartilo", nil, function(v)
        _G.AutoBartilo = v
    end)
spawn(function()
    while wait() do
        if _G.AutoBartilo then
            haki()
            if game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                    if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                        Ms = "Swan Pirate [Lv. 775]"
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            for i2,v2 in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == Ms and v2.Name == Ms then
                                pcall(function()
                                        v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        if setsimulationradius then 
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                        EquipWeapon(BareWeapon)
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        if HideHitBlox then
                                            v.HumanoidRootPart.Transparency = 1
                                        else
                                            v.HumanoidRootPart.Transparency = 70
                                        end
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))													
                                        PosMonBarto =  v.HumanoidRootPart.CFrame
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        AutoBartiloBring = true
                                    AutoBartiloBring = false
                                end)
                            end
                        end
                    end
                    else
                        repeat TP(CFrame.new(1057.92761, 137.614319, 1242.08069)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1057.92761, 137.614319, 1242.08069)).Magnitude <= 10
                    end
                else
                    repeat TP(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                    wait(1.1)
                    local args = {
                        [1] = "StartQuest",
                        [2] = "BartiloQuest",
                        [3] = 1
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end 
            elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                    Ms = "Jeremy [Lv. 850] [Boss]"
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Ms then
                            repeat wait()
                                if setsimulationradius then 
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                                EquipWeapon(BareWeapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                if HideHitBlox then
                                    v.HumanoidRootPart.Transparency = 1
                                else
                                    v.HumanoidRootPart.Transparency = 70
                                end
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                    repeat TP(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                    wait(1.1)
                    local args = {
                        [1] = "BartiloQuestProgress",
                        [2] = "Bartilo"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    wait(1)
                    repeat TP(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    wait(2)
                else
                    repeat TP(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until _G.StopTween == true or not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                TP(game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.CFrame)
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate4.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate7.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate8.CFrame           
             end
        end 
    end
end)

spawn(function()
    while game:GetService("RunService").RenderStepped:wait() do
        if _G.AutoBartilo then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v.Name == "Humanoid" then
                        v.PlatformStand = true
                    end
                end
            end)
        end
    end
end)

WaponBartilo = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(WaponBartilo ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(WaponBartilo, v.Name)
    end
end


local BareWeapon = Tab1:CreateDropdown("Select Weapon Bartilo",WaponBartilo,"Hee",false,function(A)
    BareWeapon = A
end)

Tab1:CreateButton("Refresh Weapon",function()
    WaponBartilo = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            table.insert(WaponBartilo ,v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            table.insert(WaponBartilo, v.Name)
        end
    end
BareWeapon:Refresh(WaponBartilo)
end)
end

if _G.AutoLegendary_Hop then
    _G.Auto_Legendary_Sword = true
elseif _G.Auto_Legendary_Sword then
	_G.Auto_Legendary_Sword = true
else
    _G.Auto_Legendary_Sword = false
end

if newworld then

    _G.Auto_Legendary_Sword = false
    Tab1:CreateToggle("Auto Legendary Sword", _G.Auto_Legendary_Sword, function(vu)
        _G.Legend = vu
    end)

    _G.AutoLegendary_Hop = false
    Tab1:CreateToggle("Auto Legendary Sword Hop", nil, function(vu)
        _G.AutoLegendary_Hop = vu
    end)

    spawn(function()
        while wait() do
            if _G.Legend then
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "1"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "3"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if _G.AutoLegendary_Hop and newworld then
                    wait(10)
                    Teleport()
                end
            end 
        end
    end)
end

if _G.AutoLegendary_Hop then
    _G.Auto_Legendary_Sword = true
elseif _G.Auto_Legendary_Sword then
	_G.Auto_Legendary_Sword = true
else
    _G.Auto_Legendary_Sword = false
end

if _G.AutoEnchancement_Hop then
    _G.AutoEnchancement = true
elseif _G.AutoEnchancement then
    _G.AutoEnchancement = true
else
    _G.AutoEnchancement = false
end



if newworld then
    _G.AutoEnchancement = false
    Tab1:CreateToggle("Auto Buy Enchancement 1500 Fragment", _G.AutoEnchancement, function(vu)
        _G.Enchancement = vu
    end)

    _G.AutoEnchancement_Hop = false
    Tab1:CreateToggle("Auto Buy Enchancement 1500 Fragment Hop", _G.AutoEnchancement_Hop, function(vu)
        _G.AutoEnchancement_Hop = vu
    end)

end

spawn(function()
	while wait() do
		if _G.Enchancement then
			local args = {
				[1] = "ColorsDealer",
				[2] = "2"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if _G.AutoEnchancement_Hop and not Old_World then
				wait(10)
				Teleport()
			end
		end 
	end
end)

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
						--delfile("NotSameServers.json")
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
				--writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
				wait()
				game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
			end)
			end
		end
	end
end


function Teleport()
	while wait() do
		pcall(function()
			TPReturner()
			if foundAnything ~= "" then
				TPReturner()
			end
		end)
	end
end

if thirdworld then
    Tab1:CreateToggle("Auto Elite Hunter", nil, function(vu)
        _G.EliteHunt = vu
    end)

    spawn(function()
        while wait() do
            if  _G.EliteHunt then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                else
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Diablo [Lv. 1750]" then
                                    repeat wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        if setsimulationradius then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until _G.EliteHunt == false or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            spawn(function()
                                TP(game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                            end)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Deandre [Lv. 1750]" then
                                    repeat wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        if setsimulationradius then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until _G.EliteHunt == false or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            spawn(function()
                                TP(game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                            end)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Urban [Lv. 1750]" then
                                    repeat wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        if setsimulationradius then
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        end
                                        v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    until _G.EliteHunt == false or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            spawn(function()
                                TP(game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
                            end)
                        end
                    end
                end
            end
        end
    end)
end


if thirdworld then
    Tab1:CreateToggle("Auto HolyTorch", nil, function(vu)
        _G.HolyTorch = vu
    end)
end
    spawn(function()
        while wait() do
            if _G.HolyTorch then
                wait(1)
                repeat TP(CFrame.new(-10752, 417, -9366)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                wait(1)
                repeat TP(CFrame.new(-11672, 334, -9474)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                wait(1)
                repeat TP(CFrame.new(-12132, 521, -10655)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                wait(1)
                repeat TP(CFrame.new(-13336, 486, -6985)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                wait(1)
                repeat TP(CFrame.new(-13489, 332, -7925)) wait() until _G.StopTween == true or not _G.HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
            end
        end
    end)




    if thirdworld then
        Tab1:CreateToggle("Auto Hallow Essence", nil, function(vu)
                _G.Hollow = vu
        end)
    end



    spawn(function()
		while wait() do
			pcall(function()
                if _G.Hollow then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then    
                        _G.BBone = false                    
                        TP(CFrame.new(-8932.83789, 144.098709, 6059.34229, -0.999290943, 7.95623478e-09, -0.0376505218, 4.4684243e-09, 1, 9.27205832e-08, 0.0376505218, 9.24866086e-08, -0.999290943))  
                    elseif game.Workspace.Enemies:FindFirstChild ("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        _G.BBone = false
                    else
                        _G.BBone = true
                    end
                    if game.Workspace.Enemies:FindFirstChild ("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        _G.BBone = false       
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]"  then
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                attack()
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                            end
                        end
                    end
                end
            end)
        end
    end)                            
if thirdworld then
    Tab1:CreateToggle("Auto Yama", nil, function(v)
        _G.Yama = v
    end)
end
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Yama then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
						fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    end
                end
            end)
        end
    end)


if thirdworld then
    Tab1:CreateToggle("Auto farm bone", nil, function(v)
		_G.Auto_Bone = v 
    end)
end
        spawn(function()
            while wait(.1) do
                pcall(function()
                    if _G.Auto_Bone then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                                    if v:WaitForChild("Humanoid").Health > 0 then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                            haki()
                                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                            MainMonBone = v.HumanoidRootPart.CFrame
                                            BoneMagnet = true
                                        until Auto_Bone == false or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            BoneMagnet = false
                            TP(CFrame.new(-9501.64453, 582.052612, 6034.20117))
                        end
                    end
                end)
            end
        end)


        spawn(function()
            while game:GetService("RunService").RenderStepped:wait() do
                if _G.Auto_Bone then
                    pcall(function()
                        EquipWeapon(_G.SelectWeapon)
                    end)
                end
            end
        end)
        


        spawn(function()
            while game:GetService("RunService").RenderStepped:wait() do
                if _G.Auto_Bone then
                    pcall(function()
                        for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                            if v.Name == "Humanoid" then
                                v.PlatformStand = true
                            end
                        end
                    end)
                end
            end
        end)
        
        spawn(function()
            while game:GetService("RunService").RenderStepped:wait() do
                if _G.Auto_Bone then
                    pcall(function()
                        for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                            if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                                v.Humanoid:ChangeState(11)
                            end
                        end
                    end)
                end
            end
        end)

    



spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.Noclip or _G.FARM or _G.Chest or _G.AutoNew or Sea3 or _G.HolyTorch or _G.Hollow or _G.AutoRengoku or _G.AutoBartilo or _G.EliteHunt or _G.Auto_Bone or NextIsland then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
            setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
        end
    end)
end)

spawn(function()
    pcall(function()
        while task.wait() do
            if _G.Noclip or _G.FARM or _G.Chest or _G.AutoNew or Sea3 or _G.HolyTorch or _G.Hollow or _G.AutoRengoku or _G.AutoBartilo or _G.EliteHunt or _G.Auto_Bone or NextIsland then
                if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while task.wait() do
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if _G.FARM then
                
                if not v.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                if v.HumanoidRootPart:FindFirstChild("BodyClip") then
                    v.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
                end
        end
        end
        end)
    end)        

        Tab1:CreateToggle("Auto Superhuman", nil, function(sp)
            _G.Superhuman = sp
            end)
        
            spawn(function()
                while wait(.1) do
                if _G.Superhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                local args = {
                [1] = "BuyBlackLeg"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end   
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")  then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                   _G.SelectWeapon = "Black Leg"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                   _G.SelectWeapon = "Electro"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                   _G.SelectWeapon = "Fishman Karate"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                   _G.SelectWeapon = "Dragon Claw"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Superhuman") then
                    _G.SelectWeapon = "Superhuman"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                local args = {
                [1] = "BuyElectro"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                local args = {
                [1] = "BuyElectro"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                local args = {
                [1] = "BuyFishmanKarate"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                local args = {
                [1] = "BuyFishmanKarate"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                local args = {
                [1] = "BlackbeardReward",
                [2] = "DragonClaw",
                [3] = "1"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                [1] = "BlackbeardReward",
                [2] = "DragonClaw",
                [3] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                local args = {
                [1] = "BlackbeardReward",
                [2] = "DragonClaw",
                [3] = "1"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                [1] = "BlackbeardReward",
                [2] = "DragonClaw",
                [3] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                local args = {
                [1] = "BuySuperhuman"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                local args = {
                [1] = "BuySuperhuman"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                end
                end
                end
                end)

Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Wapon ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Wapon, v.Name)
    end
end
local SelectWeapona = Tab1:CreateDropdown("Select Weapon",Wapon,"Hee",false,function(Value)
    _G.SelectWeapon = Value
    _G.SelectToolWeaponOld = Value
end)

Tab1:CreateButton("refresh weapon", function()
    Wapon = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            table.insert(Wapon ,v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            table.insert(Wapon, v.Name)
        end
    end
    SelectWeapona:Refresh(Wapon)
end)



Stats:CreateToggle("Melee",_G.M, function(x)
_G.M = x
print(_G.M)
end)

Stats:CreateToggle("Defense",_G.D, function(x)
_G.D = x
end)

Stats:CreateToggle("Sword",_G.S, function(x)
 _G.S = x
end)

Stats:CreateToggle("Gun",_G.G, function(x)
_G.G = x
end)

Stats:CreateToggle("Blox Fruit",_G.BF, function(x)
_G.BF = x
end)

spawn(function()
    pcall(function()
        while task.wait() do
            if _G.M then
            local args = {
            [1] = "AddPoint",
            [2] = "Melee",
            [3] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif _G.M then
                
            end
            if _G.D then
            local args = {
            [1] = "AddPoint",
            [2] = "Defense",
            [3] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif _G.D then        
            end
            if _G.S then
            local args = {
            [1] = "AddPoint",
            [2] = "Sword",
            [3] = 1
            }   
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif _G.S then
            end
            if _G.G then
            local args = {
            [1] = "AddPoint",
            [2] = "Gun",
            [3] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif _G.G then 
                
            end
            if _G.BF then
            local args = {
            [1] = "AddPoint",
            [2] = "Demon Fruit",
            [3] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif _G.BF then
                
            end
        end
    end)
end)



Stats:CreateSlider("Point",1,10,1,function(P)
	_G.Point = P
end)

if OldWorld then 
    TPSEC:CreateButton("New World", function()
        local args = {
            [1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    TPSEC:CreateButton("Thirld World", function()
        local args = {
            [1] = "TravelZou" -- NEW WORLD to Third WORLD
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
end

if newworld then
    TPSEC:CreateButton("Old World", function()
        local args = {
            [1] = "TravelMain" -- OLD WORLD to NEW WORLD
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)

    TPSEC:CreateButton("Third World", function()
        local args = {
            [1] = "TravelZou" -- NEW WORLD to Third WORLD
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
end

if thirdworld then 
    TPSEC:CreateButton("Old World", function()
        local args = {
            [1] = "TravelMain" -- OLD WORLD to NEW WORLD
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)

    TPSEC:CreateButton("New World", function()
        local args = {
            [1] = "TravelMain" -- OLD WORLD to NEW WORLD
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
end

TeleportTable = {}

if OldWorld then 
    TeleportTable = {
        "Start Island",
        "Marine Start",
        "Middle Town",
        "Jungle",
        "Pirate Village",
        "Desert",
        "Frozen Village",
        "MarineFord",
        "Colosseum",
        "Sky 1st Floor",
        "Sky 2st Floor",
        "Sky 3st Floor",
        "Prison",
        "Magma Village",
        "UndeyWater City",
        "Fountain City",
        "House Cyborg's",
        "Shank's Room",
        "Mob Island"
    }
end

if newworld then
    TeleportTable = {
        "First Spot",
        "Kingdom of Rose",
        "Dark Ares",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green bit",
        "Cafe",
        "Factroy",
        "Colosseum",
        "Ghost Island",
        "Ghost Island 2nd",
        "Snow Mountain",
        "Hot and Cold",
        "Magma Side",
        "Cursed Ship",
        "Frosted Island",
        "Forgotten Island",
        "Usoapp Island",
        "Minisky Island"
    }
end
if thirdworld then
    TeleportTable = {
        "Port Town",
        "Hydra Island",
        "Castle on the sea",
        "Mansion",
        "Floating Turtle",
        "IceCream",
        "Peanut butter",
        "Cake"
    }
end

local TeleportDropDown = TPSEC:CreateDropdown("Select Island",TeleportTable,"Hee",false,function(A)
    SelectIsland = A
end)

TPSEC:CreateToggle("Teleport", false, function(Tping)
    _G.Noclip = Tping
    if Tping then
    if OldWorld then 
    if SelectIsland == "Start Island" then
        TP(CFrame.new(1071.2832, 16.3085976, 1426.86792))
        end
        if SelectIsland == "Marine Start" then
            TP(CFrame.new(-2573.3374, 6.88881969, 2046.99817))
        end
        if SelectIsland == "Middle Town" then
            TP(CFrame.new(-655.824158, 7.88708115, 1436.67908))
        end
        if SelectIsland == "Jungle" then
            TP(CFrame.new(-1249.77222, 11.8870859, 341.356476))
        end
        if SelectIsland == "Pirate Village" then
            TP(CFrame.new(-1122.34998, 4.78708982, 3855.91992))
        end
        if SelectIsland == "Desert" then
            TP(CFrame.new(1094.14587, 6.47350502, 4192.88721))
        end
        if SelectIsland == "Frozen Village" then
            TP(CFrame.new(1198.00928, 27.0074959, -1211.73376))
        end
        if SelectIsland == "MarineFord" then
            TP(CFrame.new(-4505.375, 20.687294, 4260.55908))
        end
        if SelectIsland == "Colosseum" then
            TP(CFrame.new(-1428.35474, 7.38933945, -3014.37305))
        end
        if SelectIsland == "Sky 1st Floor" then
            TP(CFrame.new(-4970.21875, 717.707275, -2622.35449))
        end
        if SelectIsland == "Sky 2st Floor" then
            TP(CFrame.new(-4813.0249, 903.708557, -1912.69055))
        end
        if SelectIsland == "Sky 3st Floor" then
            TP(CFrame.new(-7952.31006, 5545.52832, -320.704956))
        end
        if SelectIsland == "Prison" then
            TP(CFrame.new(4854.16455, 5.68742752, 740.194641))
        end
        if SelectIsland == "Magma Village" then
            TP(CFrame.new(-5231.75879, 8.61593437, 8467.87695))
        end
        if SelectIsland == "UndeyWater City" then
            TP(CFrame.new(61163.8516, 11.7796879, 1819.78418))
        end
        if SelectIsland == "Fountain City" then
            TP(CFrame.new(5132.7124, 4.53632832, 4037.8562))
        end
        if SelectIsland == "House Cyborg's" then
            TP(CFrame.new(6262.72559, 71.3003616, 3998.23047))
        end
        if SelectIsland == "Shank's Room" then
            TP(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        end
        if SelectIsland == "Mob Island" then
            TP(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        end
elseif newworld then
        if SelectIsland == "First Spot" then
        TP(CFrame.new(82.9490662, 18.0710983, 2834.98779))
        end
        if SelectIsland == "Kingdom of Rose" then
            TP(game.Workspace["_WorldOrigin"].Locations["Kingdom of Rose"].CFrame)
        end
        if SelectIsland == "Dark Ares" then
            TP(game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame)
        end
        if SelectIsland == "Flamingo Mansion" then
            TP(CFrame.new(-390.096313, 331.886475, 673.464966))
        end
        if SelectIsland == "Flamingo Room" then
            TP(CFrame.new(2302.19019, 15.1778421, 663.811035))
        end
        if SelectIsland == "Green bit" then
            TP(CFrame.new(-2372.14697, 72.9919434, -3166.51416))
        end
        if SelectIsland == "Cafe" then
            TP(CFrame.new(-385.250916, 73.0458984, 297.388397))
        end
        if SelectIsland == "Factroy" then
            TP(CFrame.new(430.42569, 210.019623, -432.504791))
        end
        if SelectIsland == "Colosseum" then
            TP(CFrame.new(-1836.58191, 44.5890656, 1360.30652))
        end
        if SelectIsland == "Ghost Island" then
            TP(CFrame.new(-5571.84424, 195.182297, -795.432922))
        end
        if SelectIsland == "Ghost Island 2nd" then
            TP(CFrame.new(-5931.77979, 5.19706631, -1189.6908))
        end
        if SelectIsland == "Snow Mountain" then
            TP(CFrame.new(1384.68298, 453.569031, -4990.09766))
        end
        if SelectIsland == "Hot and Cold" then
            TP(CFrame.new(-6026.96484, 14.7461271, -5071.96338))
        end
        if SelectIsland == "Magma Side" then
            TP(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
        end
        if SelectIsland == "Cursed Ship" then
            TP(CFrame.new(902.059143, 124.752518, 33071.8125))
        end
        if SelectIsland == "Frosted Island" then
            TP(CFrame.new(5400.40381, 28.21698, -6236.99219))
        end
        if SelectIsland == "Forgotten Island" then
            TP(CFrame.new(-3043.31543, 238.881271, -10191.5791))
        end
        if SelectIsland == "Usoapp Island" then
            TP(CFrame.new(4748.78857, 8.35370827, 2849.57959))
        end
        if SelectIsland == "Minisky Island" then
         TP(CFrame.new(-260.358917, 49325.7031, -35259.3008))     
        end
    elseif thirdworld then
        if SelectIsland == "Port Town" then
            TP(CFrame.new(-287, 29.4128036, 5388, 1, 0, 0, 0, 1, 0, 0, 0, 1))
            end
            
            if SelectIsland == "Hydra Island" then
                TP(CFrame.new(3399.32227, 72.3884888, 1572.99963, -0.809679806, -4.48284467e-08, 0.586871922, 2.42332163e-08, 1, 1.09818842e-07, -0.586871922, 1.0313989e-07, -0.809679806))
            end
            
            if SelectIsland == "Castle on the sea" then
                TP(CFrame.new(-5500, 313.768921, -2855, 1, 0, 0, 0, 1, 0, 0, 0, 1))
            end
            
            if SelectIsland == "Mansion" then
                TP(CFrame.new(-12548, 337.168274, -7481, 1, 0, 0, 0, 1, 0, 0, 0, 1))
            end
            
            if SelectIsland == "Floating Turtle" then
                TP(CFrame.new(-10016, 331.762634, -8326, 1, 0, 0, 0, 1, 0, 0, 0, 1))
            end
    
            if SelectIsland == "IceCream" then
                TP(CFrame.new(-880.894531, 118.245354, -11030.7607, -0.867174983, 1.48501234e-09, 0.498003572, 2.70457789e-08, 1, 4.41129586e-08, -0.498003572, 5.1722548e-08, -0.867174983))
            end
    
            if SelectIsland == "Peanut butter" then
                TP(CFrame.new(-880.894531, 118.245354, -11030.7607, -0.867174983, 1.48501234e-09, 0.498003572, 2.70457789e-08, 1, 4.41129586e-08, -0.498003572, 5.1722548e-08, -0.867174983))
            end
            if SelectIsland == "Cake" then
                TP(CFrame.new(-1890.27271, 13.8249273, -11578.5898, 0.554632127, -2.0467688e-08, 0.832095683, 1.95285601e-08, 1, 1.15810268e-08, -0.832095683, 9.82642145e-09, 0.554632127))
            end

            
    end
else
    TP(CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
end
end)


misc:CreateTi("Auto Random")
misc:CreateToggle("Random Bone", nil, function(vu)
    _G.BBone = vu
end)
spawn(function()
    while wait(.1) do
        if _G.BBone then
local args = {
    [1] = "Bones",
    [2] = "Buy",
    [3] = 1,
    [4] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
end)
misc:CreateTi("Auto open")

misc:CreateButton("Devil Fruit Shop", function()
    local args = {
        [1] = "GetFruits"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

misc:CreateButton("Devil Fruit Inventory", function()
	local args = {
		[1] = "getInventoryFruits"
	}
	
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)

misc:CreateButton("Inventory", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
    game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
end)

misc:CreateButton("Color Haki", function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

misc:CreateButton("Title Name", function()
    local args = {
        [1] = "getTitles"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)

misc:CreateTi("Buy")

misc:CreateButton("Buso haki", function()
    local args = {
    [1] = "BuyHaki",
    [2] = "Buso"
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    
    end)
    
    misc:CreateButton("Sky jump", function()
    local args = {
    [1] = "BuyHaki",
    [2] = "Geppo"
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    
    end)
    
    misc:CreateButton("Flash Step", function()
    local args = {
    [1] = "BuyHaki",
    [2] = "Soru"
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    
    end)
    misc:CreateButton("Ken Haki", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end)

   
   buy:CreateTi("Melle")
   
    buy:CreateButton("Black Leg", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
 end)
 
 buy:CreateButton("Electro", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
 end)
 
 buy:CreateButton("FishmanKarate", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
 end)
 
 buy:CreateButton("DragonClaw", function()
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
 end)
 
 buy:CreateButton("Superhuman", function()
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
 end)
 buy:CreateButton("DeathStep", function()
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
 end)
 buy:CreateButton("SharkmanKarate", function()
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
 end)
 buy:CreateButton("ElectricClaw", function()
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
 end)
 
 buy:CreateButton("DragonTalon", function()
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
 end)

-----------------Raid

local Dropdown1 = dun:CreateDropdown("Select Dungeon", {"Flame", "Ice", "Quake", "Light","Dark","String","Rumble","Magma","Human: Buddha","Sand"},"Hee",false,function(value)
    _G.Dun = value
end)

dun:CreateToggle("Auto Buy Chips", nil, function(value)   
    _G.BuyRaids = value
end)


spawn(function()
    while wait(.1) do
    if _G.BuyRaids then
    local args = {
    [1] = "RaidsNpc",
    [2] = "Select",
    [3] = _G.Dun
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
    end
    end)

dun:CreateToggle("Auto Start Dungeon", nil, function(value) 
    _G.AutoRaids = value
end)

spawn(function()
    while wait() do
    if _G.AutoRaids then
    if newworld then
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
    ----not
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
    ---not
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
    ---not
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
    ---not
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
    ---not
    elseif  game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
    fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
    end
    end
    if thirdworld then
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
    ----not
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
    ---not
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
    ---not
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
    ---not
    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
    ---not
    elseif  game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
    fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
    end
    end
    end
    end
    end)


dun:CreateToggle("kill Aura", nil, function(value)
    _G.RaidsArua = value
end)
spawn(function()
    while wait(0.5) do
        if _G.RaidsArua then
            while _G.RaidsArua do wait(1)
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do   
                    if _G.RaidsArua and v:FindFirstChild("Humanoid") then
                        v.Humanoid.Health = 0
                        v.Humanoid:ChangeState(11)
                    end 
                end
            end
        end
    end
end)

dun:CreateToggle("Auto Next Island", nil, function(value)
    _G.NextIsland = value                  
end)

spawn(function()
    while wait(.1) do
        if _G.NextIsland then
            while _G.NextIsland do wait()
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,70,0))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,70,0))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,70,0))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,70,0))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                    TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,70,0))
                elseif newworld then
                    TP(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                elseif thirdworld then
                    TP(CFrame.new(-5013.99512, 314.818085, -2817.25391, -0.918243527, -1.38205791e-09, -0.396016151, -4.45223378e-08, 1, 9.97441418e-08, 0.396016151, 1.09220977e-07, -0.918243527))
                end
            end
        end
    end
end)

dun:CreateToggle("Auto Awakener", nil, function(value)
    _G.Awake = value
end)


spawn(function()
    while wait(.1) do
        if _G.Awake then
            while _G.Awake do wait()
local args = {
    [1] = "Awakener",
    [2] = "Check"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "Awakener",
    [2] = "Awaken"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
end
end)


misc:CreateTi("game")

misc:CreateButton("Fastmode", function()
    if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
if hookfunction and setreadonly then
    local mt = getrawmetatable(game)
    local old = mt.__newindex
    setreadonly(mt, false)
    local sda
    sda = hookfunction(old, function(t, k, v)
        if k == "Material" then
            if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
        elseif k == "TopSurface" then v = "Smooth"
        elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
        elseif k == "WaterTransparency" then v = 1
        elseif k == "GlobalShadows" then v = false end
        return sda(t, k, v)
    end)
    setreadonly(mt, true)
end
local g = game
local w = g.Workspace
local l = g:GetService"Lighting"
local t = w:WaitForChild"Terrain"
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 1
l.GlobalShadows = false

function change(v)
    pcall(function()
        if v.Material ~= Enum.Material.Neon and v.Material ~= Enum.Material.Plastic and v.Material ~= Enum.Material.ForceField then
            pcall(function() v.Reflectance = 0 end)
            pcall(function() v.Material = Enum.Material.Plastic end)
            pcall(function() v.TopSurface = "Smooth" end)
        end
    end)
end

game.DescendantAdded:Connect(function(v)
    pcall(function()
        if v:IsA"Part" then change(v)
        elseif v:IsA"MeshPart" then change(v)
        elseif v:IsA"TrussPart" then change(v)
        elseif v:IsA"UnionOperation" then change(v)
        elseif v:IsA"CornerWedgePart" then change(v)
        elseif v:IsA"WedgePart" then change(v) end
    end)
end)
for i, v in pairs(game:GetDescendants()) do
    pcall(function()
        if v:IsA"Part" then change(v)
        elseif v:IsA"MeshPart" then change(v)
        elseif v:IsA"TrussPart" then change(v)
        elseif v:IsA"UnionOperation" then change(v)
        elseif v:IsA"CornerWedgePart" then change(v)
        elseif v:IsA"WedgePart" then change(v) end
    end)
end
    end)

    function FindNearestMon(position)
        local lowest = math.huge -- infinity
        local NearestPlayer = nil
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v ~= game.Players.LocalPlayer then
                local distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if distance < lowest then
                    lowest = distance
                    NearestPlayer = v
                end
            end
            end
        return NearestPlayer
    end

misc:CreateButton("Remove Effect", function()
    game:GetService("ReplicatedStorage").Effect.Container:Destroy()
    game:GetService("ReplicatedStorage").Assets.SlashHit:Destroy()
    game:GetService("ReplicatedStorage").Assets.GUI:Destroy()
    game:GetService("ReplicatedStorage").Util.Sound.Storage.Swing:Destroy()
    end)




misc:CreateButton("Redeam all code", function()
    local args = {
        [1] = "Sub2OfficialNoobie"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "FUDD10"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "BIGNEWS"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "THEGREATACE"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "SUB2NOOBMASTER123"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "SUB2GAMERROBOT_EXP1"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "Sub2Daigrock"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "Axiore"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "TantaiGaming"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "STRAWHATMAINE"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
        local args = {
        [1] = "UPD15"
        }
        
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
        wait()
end)

local sound1 = Instance.new("Sound", game.Workspace)
sound1.Name = "Attack - HAWKCRY"
sound1.SoundId = "rbxassetid://7076159096" 
sound1.EmitterSize = 5 -- decrease the emitter size (for earlier volume drop off)
sound1.Looped = true
sound1.Volume = 10

local sound2 = Instance.new("Sound", game.Workspace)
sound2.Name = "YoungDumb"
sound2.SoundId = "rbxassetid://2883972710" 
sound2.EmitterSize = 5 -- decrease the emitter size (for earlier volume drop off)
sound2.Looped = true
sound2.Volume = 10

local sound3 = Instance.new("Sound", game.Workspace)
sound3.Name = "ห้วงแห่งความรัก"
sound3.SoundId = "rbxassetid://6813482232" 
sound3.EmitterSize = 5 -- decrease the emitter size (for earlier volume drop off)
sound3.Looped = true
sound3.Volume = 10

local sound4 = Instance.new("Sound", game.Workspace)
sound4.Name = "KALUM"
sound4.SoundId = "rbxassetid://8517028478" 
sound4.EmitterSize = 5 -- decrease the emitter size (for earlier volume drop off)
sound4.Looped = true
sound4.Volume = 10

local sound5 = Instance.new("Sound", game.Workspace)
sound5.Name = "เกาะสวาทหาดสวรรค์"
sound5.SoundId = "rbxassetid://2201117500" 
sound5.EmitterSize = 5 -- decrease the emitter size (for earlier volume drop off)
sound5.Looped = true
sound5.Volume = 10

local sound6 = Instance.new("Sound", game.Workspace)
sound6.Name = "ชุดโกโกวา"
sound6.SoundId = "rbxassetid://8708705034" 
sound6.EmitterSize = 5 -- decrease the emitter size (for earlier volume drop off)
sound6.Looped = true
sound6.Volume = 10


MusicTable = {
    "Attack - HAWKCRY",
    "ห้วงแห่งความรัก",
    "YoungDumb",
    "ชุดโกโกวา",
    "KALUM"
}

local Music = music:CreateDropdown("Select Music",MusicTable,"Hee",false,function(A)
   _G.Music = A
end)

music:CreateToggle("Play Music", nil ,function(a)
    _G.PlayMusic = a
    if _G.PlayMusic then
        if _G.Music == "Attack - HAWKCRY" then
        sound1:Play()
        elseif _G.Music == "YoungDumb" then
            sound2:Play()
        elseif _G.Music == "ห้วงแห่งความรัก" then
            sound3:Play()
        elseif _G.Music == "KALUM" then
            sound4:Play()
        elseif _G.Music == "เกาะสวาทหาดสวรรค์" then
            sound5:Play()
        elseif _G.Music == "ชุดโกโกวา" then
            sound6:Play()
        elseif _G.Music == "" then
            sound7:Play()
        elseif _G.Music == "" then
            sound8:Play()
        elseif _G.Music == "" then
            sound9:Play()
        elseif _G.Music == "" then
            sound10:Play()
        end
    else
        for i,v in pairs(game.workspace:GetChildren()) do
        if v.ClassName == "Sound" then
            v:Stop()
            end
        end
    end
    end)

UserInputService.InputBegan:connect(function(keyCode)
    if keyCode.keyCode == Enum.KeyCode.RightControl then
        game:GetService("CoreGui"):FindFirstChild("Sawadd").BackgroundFrame.Visible = not game:GetService("CoreGui"):FindFirstChild("Sawadd").BackgroundFrame.Visible
    end
end)

return UILib
