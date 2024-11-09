local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/riruru111/VapeP3bt/refs/heads/main/main%20(1).lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local aimbot = loadstring(game:HttpGet'https://raw.githubusercontent.com/riruru111/aimlib/refs/heads/main/library.lua')()

local Window = Fluent:CreateWindow({
    Title = "Fluent " .. Fluent.Version,
    SubTitle = "by dawid",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "p3btblue",

    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Wlc = Window:AddTab({ Title = "Boarding", Icon = "rbxassetid://10723407389" }),
    Main = Window:AddTab({ Title = "Esp", Icon = "hexagon" }),
    AimTab = Window:AddTab({ Title = "Aim", Icon = "mouse" }),
    Silent = Window:AddTab({ Title = "Silent [Beta]", Icon = "rbxassetid://10734895856" }),
    Essential = Window:AddTab({ Title = "Essential", Icon = "rbxassetid://10709819149" }),
    ModTab = Window:AddTab({ Title = "Mods", Icon = "rbxassetid://10723405360" }),
    Skinz = Window:AddTab({ Title = "Skin Changer", Icon = "swords" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "list-music" }),
    Settings = Window:AddTab({ Title = "Config", Icon = "settings-2" })
}






---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------









---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------













-- Import RunService
local RunService = game:GetService("RunService")

-- Get the LocalPlayer from Players - Client
local player = game["Players - Client"].LocalPlayer

-- Function to get character's HumanoidRootPart position
local function getCharacterPosition()
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if rootPart then
        return rootPart.Position
    else
        return nil
    end
end

-- Get the target part (Duels)
local targetPart = workspace:FindFirstChild("Lobby") and workspace.Lobby:FindFirstChild("Duels")

-- Flags to track notification status
local isCloseNotified = false
local isFarNotified = false

-- Time tracking for 2-second intervals
local lastCheckTime = 0
local checkInterval = 2
-- Function to check distance and send notifications
local function checkDistanceAndNotify()
    local characterPosition = getCharacterPosition()

    if characterPosition and targetPart then
        -- Calculate the distance in studs
        local distance = (characterPosition - targetPart.Position).magnitude

        -- If within 200 studs, show notification
        if distance <= 200 and not isCloseNotified then
            Fluent:Notify({
                Title = "Hy " .. player.Name .. ",",
                Content = "Currently in lobby.",
                SubContent = "Waiting for the match to begin, or head to the shooting range!",
                Duration = 12
            })
            isCloseNotified = true
            isFarNotified = false -- Reset far notification flag

        -- If beyond 200 studs, show notification
        elseif distance > 200 and not isFarNotified then
            Fluent:Notify({
                Title = "In combat!",
                Content = "Services are started, modules have been started.",
                SubContent = "",
                Duration = 8
            })
            isFarNotified = true
            isCloseNotified = false -- Reset close notification flag
        end
    else
        print("Nul")
    end
end

-- Connect to Heartbeat and check distance every 2 seconds
RunService.Heartbeat:Connect(function(deltaTime)
    -- Accumulate time and check if 2 seconds have passed
    lastCheckTime = lastCheckTime + deltaTime
    if lastCheckTime >= checkInterval then
        -- Reset time counter
        lastCheckTime = 0
        -- Call the notification function
        checkDistanceAndNotify()
    end
end)



local Options = Fluent.Options



do
-- Made by Blissful#4992
local Player = game:GetService("Players").LocalPlayer
local Camera = game:GetService("Workspace").CurrentCamera
local Mouse = Player:GetMouse()



Tabs.Silent:AddParagraph({
    Title = "RayCast Silent [Beta]",
    Content = "So this is still in beta and may not work sometimes or never work. Still wokring on it."
})


    Fluent:Notify({
        Title = "Loading Module...",
        Content = "Module Loaded [7/18]",
        Duration = 3
    })



    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    
    -- Function to get current device info
    local function getDeviceType()
        return UserInputService.TouchEnabled and "Mobile" or "PC"
    end
    
    -- Function to create initial content for the paragraph
    local function getExecutionDetails()
        local player = Players.LocalPlayer
        local displayName = player.DisplayName
        local username = player.Name
        local executor = identifyexecutor()  -- Get the executor name
        local deviceType = getDeviceType()
        local deviceTime = os.date("%Y-%m-%d %I:%M:%S %p")  -- 12-hour format with AM/PM
    
        return "Executed by: " .. displayName .. " (" .. username .. ")\n" ..
               "Device: " .. deviceType .. "\n" ..
               "Executor: " .. executor .. "\n" ..
               "Device Time: " .. deviceTime
    end
    
    -- Set up the paragraph with one-time content
    Tabs.Wlc:AddParagraph({
        Title = "Execution Details",
        Content = getExecutionDetails()  -- Set content once
    })
    



    local executor = identifyexecutor()

    if string.find(executor, "Xeno") then
        Tabs.Wlc:AddParagraph({
            Title = "Warning for you! [Xeno Users]", 
            Content = "You are currently using Xeno. It is indeed a good executor, but it doesn't have input modifiers.\nWhich is necessary for making an undetectable Aimbot. All features will work as intended except, Aimbot will not work on this executor."
        })
    end
    

    Tabs.Wlc:AddParagraph({
        Title = "Rivals P3bt [Beta]",
        Content = "Developer: Riruru\nUI: Custom Fluent\nHi, welcome! Hope you enjoy the experience. Since this is a new script, please report any bugs, glitches, or features you'd like to see!"
    })












    









-- Script to check distance from character to workspace.Lobby.Duels and show notifications

-- Get the LocalPlayer from Players - Client
local player = game["Players - Client"].LocalPlayer

-- Function to get character's HumanoidRootPart position
local function getCharacterPosition()
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if rootPart then
        return rootPart.Position
    else
        return nil
    end
end











---------------------------------------------------------------------------------------------------------------------------------

























---------------------------------------------------------------------------------------------------------------------------------





local workspace = game["Workspace - Client"] -- Accessing the specific workspace
local RunService = game:GetService("RunService")

local espEnabled = false -- Variable to track if ESP is enabled
local inputText = "⚠️Grenade⚠️" -- Default text for the labels
local labelColor = Color3.fromRGB(255, 255, 255) -- Default color for text labels
local textSize = 10 -- Default text size for labels

-- Store references to the text labels for updating
local textLabels = {}
local outlineLabels = {}
local espModels = {} -- Store models that already have ESP added

local function addESP(model)
    if espModels[model] then return end -- Skip if ESP is already added

    -- Create BillboardGui
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "ESP"
    billboardGui.Size = UDim2.new(0, 100, 0, 50) -- Adjust size for visibility
    billboardGui.AlwaysOnTop = true
    billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- Offset the ESP above the model
    billboardGui.Parent = model

    -- Create Outline Text Labels
    local function createOutlineLabel(offset, color)
        local outlineLabel = Instance.new("TextLabel")
        outlineLabel.Size = UDim2.new(1, 0, 1, 0)
        outlineLabel.BackgroundTransparency = 1
        outlineLabel.Text = inputText -- Use the input text here
        outlineLabel.TextColor3 = color
        outlineLabel.TextStrokeTransparency = 0 -- No transparency for outline
        outlineLabel.TextSize = textSize -- Use the textSize variable here
        outlineLabel.TextScaled = false -- Disable scaling for outline
        outlineLabel.Position = UDim2.new(0, offset.X, 0, offset.Y) -- Apply offset
        outlineLabel.Parent = billboardGui
        table.insert(outlineLabels, outlineLabel) -- Store reference to outline label
        return outlineLabel
    end

    -- Create outline labels in 4 directions
    createOutlineLabel(Vector2.new(1, 1), Color3.new(0, 0, 0)) -- Bottom right
    createOutlineLabel(Vector2.new(-1, 1), Color3.new(0, 0, 0)) -- Bottom left
    createOutlineLabel(Vector2.new(1, -1), Color3.new(0, 0, 0)) -- Top right
    createOutlineLabel(Vector2.new(-1, -1), Color3.new(0, 0, 0)) -- Top left

    -- Create Main TextLabel
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = inputText -- Use the input text here
    textLabel.TextColor3 = labelColor -- Set the default color here
    textLabel.TextStrokeTransparency = 1 -- Full transparency for main text
    textLabel.TextSize = textSize -- Use the textSize variable here
    textLabel.TextScaled = false -- Disable scaling for main text
    textLabel.Parent = billboardGui

    -- Store references to the text labels for future updates
    table.insert(textLabels, textLabel)
    espModels[model] = true -- Mark the model as having ESP applied
end

local function removeESP(model)
    if model:FindFirstChild("ESP") then
        model.ESP:Destroy()
        espModels[model] = nil -- Remove the model from the tracked ESP models
    end
end





























---------------------------------------------------------------------------------------------------------------------------------




----------------------------------------------------------------------------------------------------------------------

local Workspace, RunService, Players, CoreGui, Lighting = cloneref(game:GetService("Workspace")), cloneref(game:GetService("RunService")), cloneref(game:GetService("Players")), game:GetService("CoreGui"), cloneref(game:GetService("Lighting"))

local ESP = {
    Enabled = true,
    TeamCheck = true,
    MaxDistance = 200,
    FontSize = 11,
    FadeOut = {
        OnDistance = true,
        OnDeath = true,
        OnLeave = true,
    },
    Options = { 
        Teamcheck = true, TeamcheckRGB = Color3.fromRGB(0, 255, 0),
        Friendcheck = true, FriendcheckRGB = Color3.fromRGB(0, 255, 0),
        Highlight = true, HighlightRGB = Color3.fromRGB(255, 0, 0),
    },
    Drawing = {
        Chams = {
            Enabled  = true,
            Thermal = false,
            FillRGB = Color3.fromRGB(119, 120, 255),
            Fill_Transparency = 100,
            OutlineRGB = Color3.fromRGB(119, 120, 255),
            Outline_Transparency = 100,
            VisibleCheck = false,
        },
        Names = {
            Enabled = true,
            RGB = Color3.fromRGB(255, 255, 255),
        },
        Flags = {
            Enabled = false,
        },
        Distances = {
            Enabled = true, 
            Position = "Text",
            RGB = Color3.fromRGB(255, 255, 255),
        },
        Weapons = {
            Enabled = false, WeaponTextRGB = Color3.fromRGB(119, 120, 255),
            Outlined = false,
            Gradient = false,
            GradientRGB1 = Color3.fromRGB(255, 255, 255), GradientRGB2 = Color3.fromRGB(119, 120, 255),
        },
        Healthbar = {
            Enabled = true,  
            HealthText = true, Lerp = true, HealthTextRGB = Color3.fromRGB(119, 120, 255),
            Width = 1,
            Gradient = true, GradientRGB1 = Color3.fromRGB(200, 0, 0), GradientRGB2 = Color3.fromRGB(60, 60, 125), GradientRGB3 = Color3.fromRGB(119, 120, 255), 
        },
        Boxes = {
            Animate = true,
            RotationSpeed = 300,
            Gradient = false, GradientRGB1 = Color3.fromRGB(119, 120, 255), GradientRGB2 = Color3.fromRGB(0, 0, 0), 
            GradientFill = true, GradientFillRGB1 = Color3.fromRGB(119, 120, 255), GradientFillRGB2 = Color3.fromRGB(0, 0, 0), 
            Filled = {
                Enabled = true,
                Transparency = 0.75,
                RGB = Color3.fromRGB(0, 0, 0),
            },
            Full = {
                Enabled = true,
                RGB = Color3.fromRGB(255, 255, 255),
            },
            Corner = {
                Enabled = true,
                RGB = Color3.fromRGB(255, 255, 255),
            },
        };
    };
    Connections = {
        RunService = RunService;
    };
    Fonts = {};
}


---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------

local TweenService = game:GetService("TweenService")
local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Parent = game["Players - Client"].LocalPlayer:WaitForChild("PlayerGui")


local xPosOffset = -210  -- Default x offset
local startY = 0         -- Starting Y position for the first label

local textLabelsData = {
    textLabel1   = "Player Esp [Drawing]",
    textLabel2   = "Player Esp [Chams]",
    textLabel3   = "Aimbot [Input]",
    b_effect     = "Bullet Effects",
    skinchanger  = "Skin Changer V1",
    textLabel4   = "Granade Esp",
    textLabel5   = "Hit Marker",
    atmosphere   = "Atmosphere",
    ghosttxt     = "Ghost Hands",
    clientinfo   = "Client Info",
    silentaim    = "Silent Aim"
}


local textLabels = {} -- Table to store created text labels
local yInterval = 30  -- Initial yInterval, controlled by the slider

-- Function to create a text label with automatic Y positioning
local function createTextLabel(name, text, yOffset)
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(0, 200, 0, 25)
    textLabel.Position = UDim2.new(1, xPosOffset, 0, yOffset)
    textLabel.Text = text
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.BackgroundTransparency = 1
    textLabel.Font = Enum.Font.GothamBold  -- Set the font to "Gotham"
    textLabel.TextSize = 18
    textLabel.TextXAlignment = Enum.TextXAlignment.Right  -- Default alignment
    textLabel.Parent = screenGui
    textLabel.TextStrokeTransparency = 1  -- Default no stroke (outline)
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)  -- Black outline color

    -- Store the text label in the textLabels table using its unique name
    textLabels[name] = textLabel
    return textLabel
end

-- Automatically create text labels and calculate Y offset for each
local currentY = startY
for name, text in pairs(textLabelsData) do
    createTextLabel(name, text, currentY)
    currentY = currentY + yInterval
end

-- Function to align all text labels based on current yInterval
local function alignTextLabels()
    local currentY = startY
    local tweens = {}  -- Store all tweens to play them later in parallel

    -- Loop through all the text labels
    for _, label in pairs(textLabels) do
        if label.Visible then
            -- Create a tween for each visible label
            local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local goal = {Position = UDim2.new(1, xPosOffset, 0, currentY)}
            local tween = TweenService:Create(label, tweenInfo, goal)
            table.insert(tweens, tween)  -- Add the tween to the tweens table
            currentY = currentY + yInterval
        end
    end

    -- Play all tweens in parallel
    for _, tween in ipairs(tweens) do
        tween:Play()
    end
end


-- Slider to control text size
local Slider = Tabs.Misc:AddSlider("GapSlider", {
    Title = "Gap Select", 
    Description = "Adjust the gap size", 
    Default = yInterval, 
    Min = 5,
    Max = 100, 
    Rounding = 1,
})

-- Update yInterval and realign text labels when slider changes
Slider:OnChanged(function(Value)
    yInterval = Value  -- Set yInterval to slider value
    alignTextLabels()  -- Re-align text labels with new gap
end)

-- Function to handle fading text labels in or out
local function fadeText(label, fadeIn)
    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = fadeIn and {TextTransparency = 0} or {TextTransparency = 1}
    local tween = TweenService:Create(label, tweenInfo, goal)
    tween:Play()
end






local currentAnimationType = "None"  -- Set to "None" by default
local isAnimating = false  -- To prevent multiple loops from running simultaneously

-- Fade Animation Function with Looping
local function animateTextLoop()
    while currentAnimationType == "Fade" do
        for _, label in pairs(textLabels) do
            -- Fade Animation Loop (Faster: 0.2 seconds instead of 0.5)
            local fadeOutTween = TweenService:Create(label, TweenInfo.new(0.2), {TextTransparency = 0.5})
            local fadeInTween = TweenService:Create(label, TweenInfo.new(0.2), {TextTransparency = 0})

            fadeOutTween:Play()
            fadeOutTween.Completed:Wait()
            fadeInTween:Play()
            fadeInTween.Completed:Wait()
        end
        wait(0.2)  -- Faster delay before restarting the fade animation
    end
end

-- Color Flash Animation Function
local function colorFlashAnimation()
    while currentAnimationType == "Color Flash" do
        for _, label in pairs(textLabels) do
            -- Color Flash Animation (Light blue to White)
            local flashTween = TweenService:Create(label, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(173, 216, 230)})  -- Light blue
            local revertTween = TweenService:Create(label, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(255, 255, 255)})  -- White

            flashTween:Play()
            flashTween.Completed:Wait()
            revertTween:Play()
            revertTween.Completed:Wait()
        end
        wait(0.2)  -- Faster delay before restarting the color flash animation
    end
end

-- Dropdown to select animation type
local animationDropdown = Tabs.Misc:AddDropdown("AnimationTypeDropdown", {
    Title = "Text Animation",
    Values = {"None", "Fade", "Color Flash"},  -- Added Color Flash option
    Multi = false,
    Default = 1,  -- Default is "None"
})

animationDropdown:OnChanged(function(selectedAnimation)
    -- Only start the animation loop if it isn't already running
    if selectedAnimation == "Fade" and not isAnimating then
        currentAnimationType = selectedAnimation
        isAnimating = true  -- Mark that animation has started
        spawn(animateTextLoop)  -- Start fade animation in a separate thread
    elseif selectedAnimation == "Color Flash" and not isAnimating then
        currentAnimationType = selectedAnimation
        isAnimating = true  -- Mark that animation has started
        spawn(colorFlashAnimation)  -- Start color flash animation in a separate thread
    elseif selectedAnimation == "None" then
        -- Stop animation when "None" is selected
        currentAnimationType = "None"
        isAnimating = false  -- Reset the flag to stop animation
    end
end)


-- Dropdown to control text alignment
local Dropdown = Tabs.Misc:AddDropdown("StatTextAlignDropdown", {
    Title = "Text Alignment",
    Values = {"Left", "Center", "Right"},
    Multi = false,
    Default = 3,  -- Default is "Right"
})

Dropdown:OnChanged(function(Value)
    local alignment = Enum.TextXAlignment.Right
    if Value == "Left" then
        alignment = Enum.TextXAlignment.Left
    elseif Value == "Center" then
        alignment = Enum.TextXAlignment.Center
    end

    for _, label in pairs(textLabels) do
        label.TextXAlignment = alignment
    end
    alignTextLabels()
end)



-- Input to change X position of text labels
local Input = Tabs.Misc:AddInput("StatTextPosInput", {
    Title = "Input",
    Default = tostring(-210),
    Placeholder = "Enter x position",
    Numeric = true,
})

Input:OnChanged(function()
    local inputVal = tonumber(Input.Value)
    if inputVal then
        xPosOffset = inputVal
        alignTextLabels()
    end
end)

local ToggleOutline = Tabs.Misc:AddToggle("StatTextToggleOutline", {Title = "Toggle the Text Outline", Default = false })

ToggleOutline:OnChanged(function()
    local outlineEnabled = Options.StatTextToggleOutline.Value
    for _, label in pairs(textLabels) do
        label.TextStrokeTransparency = outlineEnabled and 0 or 1
    end
end)


-- Slider to control text size
local Slider = Tabs.Misc:AddSlider("StatTextSlider", {
    Title = "Text Size",
    Description = "Adjust the text size",
    Default = 18,
    Min = 5,
    Max = 100,
    Rounding = 1,
})

Slider:OnChanged(function(Value)
    for _, label in pairs(textLabels) do
        label.TextSize = Value
    end
end)

-- Colorpicker to change text color
local Colorpicker = Tabs.Misc:AddColorpicker("StatTxtColorpicker", {
Title = "Text Color",
Default = Color3.fromRGB(255, 255, 255)
})

Colorpicker:OnChanged(function()
-- Try accessing via Options if direct access fails
local selectedColor = Options.StatTxtColorpicker and Options.StatTxtColorpicker.Value or Colorpicker.Value

print("Selected color:", selectedColor)  -- Debug: Confirm color is captured

-- Apply the selected color to each label
for _, label in pairs(textLabels) do
    label.TextColor3 = selectedColor
end
end)


-- Align the text labels initially
alignTextLabels()






---------------------------------------------------------------------------------------------------------------------------------

-- Adding the toggle UI
local Toggle = Tabs.Silent:AddToggle("SilentAim", {Title = "Silent Aim", Description = "Uses Rayvast to defelect hitmaker to closest humanoid near mouse.", Default = false }) 
Options.SilentAim:SetValue(false)
-- Variable to track if ESP is enabled or not
local ESPEnabled = Toggle.Value

-- Function to handle the visibility of the ESP based on the toggle state
local function DrawESP(plr)
    local Circle = Drawing.new("Circle")
    Circle.Visible = false
    Circle.Position = Vector2.new(0, 0)
    Circle.Radius = 10
    Circle.Color = Color3.fromRGB(255, 255, 255)
    Circle.Thickness = 0.5
    Circle.Transparency = 1

    local Outline = Drawing.new("Circle")
    Outline.Visible = false
    Outline.Position = Vector2.new(0, 0)
    Outline.Radius = 15
    Outline.Color = Color3.fromRGB(255, 255, 0)  -- Yellow outline color
    Outline.Thickness = 0.2
    Outline.Transparency = 0.5

    local function Update()
        local c
        c = game:GetService("RunService").RenderStepped:Connect(function()
            if not ESPEnabled then
                Circle.Visible = false
                Outline.Visible = false
                return
            end

            if plr.Character ~= nil and plr.Character:FindFirstChildOfClass("Humanoid") ~= nil and plr.Character.PrimaryPart ~= nil and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
                local pos, vis = Camera:WorldToViewportPoint(plr.Character.PrimaryPart.Position)

                -- Calculate distance from local player to target player
                local distance = (Player.Character.PrimaryPart.Position - plr.Character.PrimaryPart.Position).Magnitude
                
                -- If the player is more than 150 studs away, hide the ESP
                if distance > 150 then
                    Circle.Visible = false
                    Outline.Visible = false
                elseif vis then
                    -- Update the position of both the circle and the outline
                    Circle.Position = Vector2.new(pos.X, pos.Y)
                    Outline.Position = Vector2.new(pos.X, pos.Y)

                    -- Optionally, adjust the radius based on distance to make it appear bigger/smaller
                    Circle.Radius = math.max(10, 50 / distance)  -- Adjust this value for desired size

                    -- Oscillate the outline radius (smaller change and faster)
                    local time = tick()  -- Get the current time
                    local oscillation = math.sin(time * 5) * 2  -- Oscillates between -2 and 2
                    Outline.Radius = Circle.Radius + 5 + oscillation  -- Smaller oscillation and faster

                    Circle.Visible = true
                    Outline.Visible = true
                else
                    Circle.Visible = false
                    Outline.Visible = false
                end
            else
                Circle.Visible = false
                Outline.Visible = false
                if game.Players:FindFirstChild(plr.Name) == nil then
                    c:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(Update)()
end

-- Listen for changes in the toggle value
Toggle:OnChanged(function()

    ESPEnabled = Toggle.Value  -- Update the ESPEnabled flag based on the toggle state
    if textLabels and textLabels.silentaim then
        textLabels.silentaim.Visible = Toggle.Value
        fadeText(textLabels.silentaim, Toggle.Value)
        alignTextLabels()
    end
    print("Toggle changed:", ESPEnabled)

    -- Update the visibility of ESP for all players
    for _,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name ~= Player.Name then 
            if ESPEnabled then
                DrawESP(v)
            else
                -- Hide ESP if toggled off
                for _, esp in pairs(v:GetChildren()) do
                    if esp:IsA("Drawing") then
                        esp.Visible = false
                    end
                end
            end
        end
    end
end)

-- Initializing ESP for players already in the game
for _,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= Player.Name then 
        DrawESP(v)
    end
end

-- Handle new players joining the game
game:GetService("Players").PlayerAdded:Connect(function(v)
    if ESPEnabled then
        DrawESP(v)
    end
end)

---------------------------------------------------------------------------------------------------------------------------------


local Toggle = Tabs.AimTab:AddToggle("AimbotToggle", {Title = "Toggle Aimbot", Default = false})

Toggle:OnChanged(function()
    aimbot.Enabled = Options.AimbotToggle.Value
    
    if textLabels and textLabels.textLabel3 then
        textLabels.textLabel3.Visible = Toggle.Value
        fadeText(textLabels.textLabel3, Toggle.Value)
        alignTextLabels()
    end
end)
Options.AimbotToggle:SetValue(false)




local Slider = Tabs.AimTab:AddSlider("Aimsmootherslider", {
    Title = "Smoothing",
    Description = "Adjust aimbot smoothing",
    Default = aimbot.Smoothing, -- Set default to the current smoothing value
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(Value)
        aimbot.Smoothing = Value -- Update aimbot smoothing
        print("Nul")
    end
})

Slider:OnChanged(function(Value)
    print("Nul")
end)




local Slider = Tabs.AimTab:AddSlider("Slider", {
    Title = "FOV Slider",
    Description = "Adjust the aimbot FOV",
    Default = 200,
    Min = 0,
    Max = 750,
    Rounding = 1,
    Callback = function(Value)
        aimbot.FOV = Value
    end
})

Slider:OnChanged(function(Value)
    -- Print if needed for debugging; otherwise, no output here
end)


-- Faster, smooth oscillation with ±10
local function fastOscillateFOV()
    local direction = 1 -- 1 for increasing, -1 for decreasing
    local step = 1 -- Faster, larger step
    local totalChange = 0 -- Track total change to alternate by ±10

    while true do
        wait(0.025) -- Faster wait time for quicker effect

        -- Update FOV
        aimbot.FOV = math.clamp(aimbot.FOV + (step * direction), 0, 750)
        totalChange = totalChange + step

        -- Reverse direction after a total change of ±10
        if totalChange >= 10 then
            direction = -direction
            totalChange = 0
        end
    end
end

-- Start the fast oscillation function in a separate thread
spawn(fastOscillateFOV)



aimbot.Key = Enum.UserInputType.MouseButton2 -- aimbot key
aimbot.Offset = {0, 0} -- offset for aimbot

aimbot.TeamCheck = false -- is team checking enabled
aimbot.AliveCheck = false -- is player alive
aimbot.VisibilityCheck = false -- is player visible

aimbot.Players = true -- is aimbot for default player characters enabled
aimbot.PlayerPart = 'Head' -- part of default player character to aim
aimbot.FriendlyPlayers = {'name1', 'name2'} -- list of whitelisted players

aimbot.ShowFOV = true




local FovColorpicker = Tabs.AimTab:AddColorpicker("FovColorpicker", {
    Title = "FovColorpicker",
    Default = Color3.fromRGB(255, 255, 255)
})

FovColorpicker:OnChanged(function()
    local selectedColor = FovColorpicker.Value  -- Get the selected color from the color picker
    aimbot.FOVCircleColor = selectedColor  -- Print the selected color
end)

aimbot.ShowFOV = true  -- Initial state, can be changed later based on the toggle
local Toggle = Tabs.AimTab:AddToggle("AimbotFOV", {Title = "Aimbot Fov", Default = false})

Toggle:OnChanged(function()
    aimbot.ShowFOV = Toggle.Value  -- Corrected: Accessing Toggle.Value directly
end)

---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------





-- Toggle setup
local Toggle = Tabs.Essential:AddToggle("GAToggle", {Title = "Granade ESP", Default = true})

Toggle:OnChanged(function()
    espEnabled = Options.GAToggle.Value -- Update the espEnabled variable

    if textLabels and textLabels.textLabel4 then
        textLabels.textLabel4.Visible = espEnabled
        fadeText(textLabels.textLabel4, espEnabled)
        alignTextLabels()
    end
end)


-- Input setup
local Input = Tabs.Essential:AddInput("GAInput", {
    Title = "Custom Markdown",
    Description = "Put youre custom text.",
    Default = inputText,
    Placeholder = "Enter text here...",
    Numeric = false, -- Allows any characters
    Finished = false, -- Calls callback immediately when input changes
    Callback = function(Value)
        inputText = Value -- Update the input text variable
        print("Nul")
        
        -- Update all text labels when the input changes
        for _, textLabel in ipairs(textLabels) do
            if textLabel and textLabel:IsA("TextLabel") then
                textLabel.Text = inputText -- Update the text for each label
            end
        end
        for _, outlineLabel in ipairs(outlineLabels) do
            if outlineLabel and outlineLabel:IsA("TextLabel") then
                outlineLabel.Text = inputText
            end
        end
    end
})

Input:OnChanged(function()
    print("Nul")
end)

-- Colorpicker setup
local Colorpicker = Tabs.Essential:AddColorpicker("GranadeColorpicker", {
    Title = "Colorpicker",
    Default = labelColor
})

Colorpicker:OnChanged(function(newColor)
    labelColor = newColor -- Update the label color variable
    print("Nul")

    -- Update all text labels with the new color
    for _, textLabel in ipairs(textLabels) do
        if textLabel and textLabel:IsA("TextLabel") then
            textLabel.TextColor3 = labelColor -- Apply the new color to each label
        end
    end
end)

-- Slider setup for Text Size
local Slider = Tabs.Essential:AddSlider("GASlider", {
    Title = "YOu can modify the text size",
    Description = "Adjust the text size",
    Default = textSize,
    Min = 2,
    Max = 40,
    Rounding = 1
})

Slider:OnChanged(function(Value)
    textSize = Value -- Update the textSize variable
    print("Nul")

    -- Update the TextSize for all labels
    for _, textLabel in ipairs(textLabels) do
        if textLabel and textLabel:IsA("TextLabel") then
            textLabel.TextSize = textSize -- Set new size for main label
            print("Nul")
        end
    end
    for _, outlineLabel in ipairs(outlineLabels) do
        if outlineLabel and outlineLabel:IsA("TextLabel") then
            outlineLabel.TextSize = textSize -- Set new size for outline labels
            print("Nul")
        end
    end
end)

-- Check for FakeGrenadeModel and add/remove ESP based on toggle
RunService.Heartbeat:Connect(function()
    -- Iterate through all instances of FakeGrenadeModel
    for _, grenadeModel in ipairs(workspace:GetChildren()) do
        if grenadeModel.Name == "FakeGrenadeModel" then
            if espEnabled then
                addESP(grenadeModel)
            else
                removeESP(grenadeModel)
            end
        end
    end
end)


---------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------

















local function initializeFPSAndPingUI()
    -- Your existing FPS and Ping UI code goes here

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local ScreenGui2 = Instance.new("ScreenGui")
local Fps = Instance.new("TextLabel")
local Ping = Instance.new("TextLabel")

-- Properties:
ScreenGui2.Parent = game.CoreGui
ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Fps.Name = "Fps"
Fps.Parent = ScreenGui2
Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fps.BackgroundTransparency = 1.000
Fps.Position = UDim2.new(1, -130, 0, 5)  -- Top-right corner
Fps.Size = UDim2.new(0, 125, 0, 25)
Fps.Font = Enum.Font.Gotham  -- Changed font to Gotham
Fps.TextColor3 = Color3.fromRGB(255, 255, 255)
Fps.TextSize = 15
Fps.TextWrapped = true
Fps.TextStrokeTransparency = 1
Fps.Visible = false
Fps.Text = "Loading..."

Ping.Name = "Ping"
Ping.Parent = ScreenGui2
Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ping.BackgroundTransparency = 1.000
Ping.BorderColor3 = Color3.fromRGB(255, 255, 255)
Ping.Position = UDim2.new(0.700000048, 0, 0, 0)
Ping.Size = UDim2.new(0, 125, 0, 25)
Ping.Font = Enum.Font.SourceSans
Ping.TextColor3 = Color3.fromRGB(253, 253, 253)
Ping.TextScaled = false
Ping.TextSize = 15
Ping.Text = "Loading..."
Ping.TextWrapped = true

local updateInterval = 1 
local lastUpdateTime = 0

-- Script for Ping:
local pingSuffixText = "Ping: "  -- Default suffix text for ping

local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
    local currentTime = tick()
    if currentTime - lastUpdateTime >= updateInterval then
        lastUpdateTime = currentTime
        -- Get the ping value without percentage sign
        local pingValue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        Ping.Text = pingSuffixText .. pingValue:match("(%d+)")
    end
end)

-- Suffix Input Field
local suffixText = "FPS: "  -- Default suffix text

local Input = Tabs.Misc:AddInput("Input", {
    Title = "Suffix Input",
    Default = suffixText,
    Placeholder = "Enter suffix text",
    Numeric = false, -- Allows any text
    Finished = true, -- Call the callback on input finish
    Callback = function(Value)
        suffixText = Value
        print("Suffix changed to:", suffixText)
    end
})

local PingInput = Tabs.Misc:AddInput("PingInput", {
    Title = "Ping Suffix Input",
    Default = pingSuffixText,
    Placeholder = "Enter suffix text",
    Numeric = false, -- Allows any text
    Finished = true, -- Call the callback on input finish
    Callback = function(Value)
        pingSuffixText = Value
        -- Update the Ping text with the new suffix
        Ping.Text = pingSuffixText .. PingValue  -- Assuming PingValue holds the current ping value
    end
})

-- FPS Update Script
local fpsCounterActive = false
local pingCounterActive = false
local lastUpdate = 0

local function updateFPS(frame)
    Fps.Text = suffixText .. math.round(1 / frame)  -- Use the suffix text
end

RunService.Heartbeat:Connect(function(frame)
    if fpsCounterActive and (tick() - lastUpdate >= 0.5) then
        updateFPS(frame)
        lastUpdate = tick()
    end
end)

-- Toggle to show/hide FPS counter
local FPStoggle = Tabs.Misc:AddToggle("FPStoggle", {Title = "Show FPS", Default = false})

FPStoggle:OnChanged(function()
    fpsCounterActive = FPStoggle.Value
    Fps.Visible = fpsCounterActive
    if textLabels and textLabels.clientinfo then
        textLabels.clientinfo.Visible = FPStoggle.Value
        fadeText(textLabels.clientinfo, FPStoggle.Value)
        alignTextLabels()
    end
end)


local PingFps = Tabs.Misc:AddToggle("PingFps", {Title = "Show Ping", Default = false})

PingFps:OnChanged(function()
    pingCounterActive = PingFps.Value
    Ping.Visible = pingCounterActive
end)

-- Slider to change FPS text size
local FPSsizeSlider = Tabs.Misc:AddSlider("FPSsizeSlider", {
    Title = "Text Size",
    Description = "Adjust FPS Text Size",
    Default = 15,
    Min = 5,
    Max = 100,
    Rounding = 1
})

FPSsizeSlider:OnChanged(function(Value)
    Fps.TextSize = Value
end)

local PingSizeSlider = Tabs.Misc:AddSlider("PingSizeSlider", {
    Title = "Ping Size",
    Description = "Adjust FPS Text Size",
    Default = 15,
    Min = 5,
    Max = 100,
    Rounding = 1
})

PingSizeSlider:OnChanged(function(Value)
    Ping.TextSize = Value
end)

-- OutlineControl toggle for text outline effect
local OutlineControl = Tabs.Misc:AddToggle("OutlineControl", {Title = "Fps Outline", Default = false})

OutlineControl:OnChanged(function()
    if OutlineControl.Value then
        Fps.TextStrokeTransparency = 0
    else
        Fps.TextStrokeTransparency = 1
    end
end)

local PingOutlineControl = Tabs.Misc:AddToggle("PingOutlineControl", {Title = "Ping Outline", Default = false})

PingOutlineControl:OnChanged(function()
    if PingOutlineControl.Value then
        Ping.TextStrokeTransparency = 0
    else
        Ping.TextStrokeTransparency = 1
    end
end)

local Dropdown = Tabs.Misc:AddDropdown("FontDropdown", {
    Title = "Font ",
    Values = {
        "SourceSans", "SourceSansBold", "SourceSansBoldItalic",
        "Gotham", "GothamBold", "Fantasy", "Legacy", "Arial", "ArialBold", "Code"
    },
    Multi = false,
    Default = 4,
})

Dropdown:OnChanged(function(Value)
    Fps.Font = Enum.Font[Value]  -- Set the font for the Fps text
    Ping.Font = Enum.Font[Value]  -- Set the font for the Ping text
end)

local FpsTextColorpicker = Tabs.Misc:AddColorpicker("FpsTextColorpicker", {
    Title = "Colorpicker",
    Default = Color3.fromRGB(255, 255, 255) -- Default color
})

FpsTextColorpicker:OnChanged(function()
    Fps.TextColor3 = FpsTextColorpicker.Value
end)

local PingTextColorpicker = Tabs.Misc:AddColorpicker("PingTextColorpicker", {
    Title = "Colorpicker",
    Default = Color3.fromRGB(255, 255, 255) -- Default color
})

PingTextColorpicker:OnChanged(function()
    Ping.TextColor3 = PingTextColorpicker.Value
end)

local FPSPositionInput = Tabs.Misc:AddInput("FPSPositionInput", {
    Title = "Change FPS Position",
    Default = "130, 5", -- Default position values (X, Y)
    Placeholder = "Enter X, Y",
    Numeric = false, -- Allows text input for X, Y coordinates
    Finished = false, -- Calls callback when you press enter
    Callback = function(Value)
        -- Split input into X and Y coordinates
        local coordinates = {}
        for num in string.gmatch(Value, "[^,]+") do
            table.insert(coordinates, tonumber(num))
        end

        -- Ensure we have two values and set the new position
        if #coordinates == 2 then
            Fps.Position = UDim2.new(1, -coordinates[1], 0, coordinates[2]) -- Update Fps position
        else
            print("Invalid input. Please enter in format: X, Y")
        end
    end
})

local PingPositionInput = Tabs.Misc:AddInput("PingPositionInput", {
    Title = "Change Ping Position",
    Default = "130, 30", -- Default position values (X, Y) for Ping text
    Placeholder = "Enter X, Y",
    Numeric = false, -- Allows text input for X, Y coordinates
    Finished = false, -- Calls callback when you press enter
    Callback = function(Value)
        -- Split input into X and Y coordinates
        local coordinates = {}
        for num in string.gmatch(Value, "[^,]+") do
            table.insert(coordinates, tonumber(num))
        end

        -- Ensure we have two values and set the new position
        if #coordinates == 2 then
            Ping.Position = UDim2.new(1, -coordinates[1], 0, coordinates[2]) -- Update Ping position
        else
            print("Invalid input. Please enter in format: X, Y.")
        end
    end
})

end

initializeFPSAndPingUI()

    
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
local NameCheckToggle = Tabs.Main:AddToggle("NameCheck", {
    Title = "Show Name Tag", 
    Description = "Shows player name tag ESP", 
    Default = false 
})

NameCheckToggle:OnChanged(function()
    ESP.Drawing.Names.Enabled = NameCheckToggle.Value
    local isNameTagEnabled = NameCheckToggle.Value
    if textLabels and textLabels.textLabel1 then
        textLabels.textLabel1.Visible = isNameTagEnabled
        fadeText(textLabels.textLabel1, isNameTagEnabled)
        alignTextLabels()
    end
end)




-- Toggle for displaying distances
local DistanceToggle = Tabs.Main:AddToggle("DistanceCheck", {
    Title = "Show Distance", 
    Description = "Displays distance to players", 
    Default = false 
})
DistanceToggle:OnChanged(function()
    ESP.Drawing.Distances.Enabled = Options.DistanceCheck.Value
end)

-- Toggle for displaying health bars
local HealthbarToggle = Tabs.Main:AddToggle("HealthbarCheck", {
    Title = "Show Healthbar", 
    Description = "Displays health bar on players", 
    Default = false 
})
HealthbarToggle:OnChanged(function()
    ESP.Drawing.Healthbar.Enabled = Options.HealthbarCheck.Value
end)

-- Toggle for displaying health bars
local HealthtextToggle = Tabs.Main:AddToggle("HealthtextToggle", {
    Title = "Show Health Text", 
    Description = "Displays health Text on players [may glich but will fix wit iin 3s]", 
    Default = false 
})
HealthtextToggle:OnChanged(function()
    ESP.Drawing.Healthbar.HealthText = Options.HealthtextToggle.Value
end)

-- Toggle for filled player boxes
local BoxFilledToggle = Tabs.Main:AddToggle("BoxFillCheck", {
    Title = "Fill Player Box", 
    Description = "Fills the ESP box around players", 
    Default = false 
})
BoxFilledToggle:OnChanged(function()
    ESP.Drawing.Boxes.Filled.Enabled = Options.BoxFillCheck.Value
end)

-- Toggle for animated player boxes
local BoxAnimateToggle = Tabs.Main:AddToggle("BoxAnimateCheck", {
    Title = "Animate Player Box", 
    Description = "Animates the box around players", 
    Default = false 
})
BoxAnimateToggle:OnChanged(function()
    ESP.Drawing.Boxes.Animate = Options.BoxAnimateCheck.Value
end)

local Slider = Tabs.Main:AddSlider("RotationSpeedSlider", {
    Title = "Rotation Speed",
    Description = "Adjust the rotation speed of the boxes",
    Default = ESP.Drawing.Boxes.RotationSpeed,
    Min = 1,
    Max = 3000, 
    Rounding = 1,
    Callback = function(Value)
        ESP.Drawing.Boxes.RotationSpeed = Value
        print(Value)
    end
})

-- Toggle for showing corners on boxes
local BoxCornerToggle = Tabs.Main:AddToggle("BoxCornerCheck", {
    Title = "Box Corners", 
    Description = "Shows corners on the ESP box around players", 
    Default = false 
})
BoxCornerToggle:OnChanged(function()
    ESP.Drawing.Boxes.Corner.Enabled = Options.BoxCornerCheck.Value
end)

-- Toggle for chams (see-through effect on players)
local ChamsToggle = Tabs.Main:AddToggle("ChamsCheck", {
    Title = "Enable Chams", 
    Description = "Applies chams effect to players", 
    Default = false 
})

ChamsToggle:OnChanged(function()
    -- Ensure Options.ChamsCheck is correctly referenced or use the ChamsToggle value directly
    local isChamsEnabled = ChamsToggle.Value

    -- Update ESP Chams settings (Assuming ESP.Drawing.Chams is valid)
    if ESP and ESP.Drawing and ESP.Drawing.Chams then
        ESP.Drawing.Chams.Enabled = isChamsEnabled
        ESP.Drawing.Chams.Thermal = isChamsEnabled
    end

    -- Update the visibility of the text label (textLabel2) based on toggle state
    if textLabels and textLabels.textLabel2 then
        textLabels.textLabel2.Visible = isChamsEnabled
        fadeText(textLabels.textLabel2, isChamsEnabled)
        alignTextLabels()  -- Re-align text labels after visibility change
    end
end)






local ChamsColorpicker = Tabs.Main:AddColorpicker("ChamsColorpicker", {
    Title = "Chams Color",
    Default = Color3.fromRGB(255, 255, 255)
})

ChamsColorpicker:OnChanged(function()
    ESP.Drawing.Chams.FillRGB = ChamsColorpicker.Value  -- Set FillRGB to the selected color
    ESP.Drawing.Chams.OutlineRGB = ChamsColorpicker.Value
end)



---------------------------------------------------------------------------------------------------------------------------------



-- Def & Vars
local Euphoria = ESP.Connections;
local lplayer = Players.LocalPlayer;
local camera = game.Workspace.CurrentCamera;
local Cam = Workspace.CurrentCamera;
local RotationAngle, Tick = -45, tick();



-- Functions
local Functions = {}
do
    function Functions:Create(Class, Properties)
        local _Instance = typeof(Class) == 'string' and Instance.new(Class) or Class
        for Property, Value in pairs(Properties) do
            _Instance[Property] = Value
        end
        return _Instance;
    end
    --
    function Functions:FadeOutOnDist(element, distance)
        local transparency = math.max(0.1, 1 - (distance / ESP.MaxDistance))
        if element:IsA("TextLabel") then
            element.TextTransparency = 1 - transparency
        elseif element:IsA("ImageLabel") then
            element.ImageTransparency = 1 - transparency
        elseif element:IsA("UIStroke") then
            element.Transparency = 1 - transparency
        elseif element:IsA("Frame") and (element == Healthbar or element == BehindHealthbar) then
            element.BackgroundTransparency = 1 - transparency
        elseif element:IsA("Frame") then
            element.BackgroundTransparency = 1 - transparency
        elseif element:IsA("Highlight") then
            element.FillTransparency = 1 - transparency
            element.OutlineTransparency = 1 - transparency
        end;
    end;  
end;

do -- Initalize
    local ScreenGui = Functions:Create("ScreenGui", {
        Parent = CoreGui,
        Name = "ESPHolder",
    });

    local DupeCheck = function(plr)
        if ScreenGui:FindFirstChild(plr.Name) then
            ScreenGui[plr.Name]:Destroy()
        end
    end

    local ESP = function(plr)
        coroutine.wrap(DupeCheck)(plr) -- Dupecheck
        local Name = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, -11), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), RichText = true})
        local Distance = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, 11), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), RichText = true})
        local Weapon = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, 31), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), RichText = true})
        local Box = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 0.75, BorderSizePixel = 0})
        local Gradient1 = Functions:Create("UIGradient", {Parent = Box, Enabled = ESP.Drawing.Boxes.GradientFill, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientFillRGB1), ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientFillRGB2)}})
        local Outline = Functions:Create("UIStroke", {Parent = Box, Enabled = ESP.Drawing.Boxes.Gradient, Transparency = 0, Color = Color3.fromRGB(255, 255, 255), LineJoinMode = Enum.LineJoinMode.Miter})
        local Gradient2 = Functions:Create("UIGradient", {Parent = Outline, Enabled = ESP.Drawing.Boxes.Gradient, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientRGB1), ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientRGB2)}})
        local Healthbar = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0})
        local BehindHealthbar = Functions:Create("Frame", {Parent = ScreenGui, ZIndex = -1, BackgroundColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 0})
        local HealthbarGradient = Functions:Create("UIGradient", {Parent = Healthbar, Enabled = ESP.Drawing.Healthbar.Gradient, Rotation = -90, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ESP.Drawing.Healthbar.GradientRGB1), ColorSequenceKeypoint.new(0.5, ESP.Drawing.Healthbar.GradientRGB2), ColorSequenceKeypoint.new(1, ESP.Drawing.Healthbar.GradientRGB3)}})
        local HealthText = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, 31), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        local Chams = Functions:Create("Highlight", {Parent = ScreenGui, FillTransparency = 1, OutlineTransparency = 0, OutlineColor = Color3.fromRGB(119, 120, 255), DepthMode = "AlwaysOnTop"})
        local WeaponIcon = Functions:Create("ImageLabel", {Parent = ScreenGui, BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), BorderSizePixel = 0, Size = UDim2.new(0, 40, 0, 40)})
        local Gradient3 = Functions:Create("UIGradient", {Parent = WeaponIcon, Rotation = -90, Enabled = ESP.Drawing.Weapons.Gradient, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ESP.Drawing.Weapons.GradientRGB1), ColorSequenceKeypoint.new(1, ESP.Drawing.Weapons.GradientRGB2)}})
        local LeftTop = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local LeftSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local RightTop = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local RightSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomDown = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomRightSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomRightDown = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local Flag1 = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(1, 0, 0, 0), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        local Flag2 = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(1, 0, 0, 0), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        --local DroppedItems = Functions:Create("TextLabel", {Parent = ScreenGui, AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        --
        local Updater = function()
            local Connection;
            local function HideESP()
                Box.Visible = false;
                Name.Visible = false;
                Distance.Visible = false;
                Weapon.Visible = false;
                Healthbar.Visible = false;
                BehindHealthbar.Visible = false;
                HealthText.Visible = false;
                WeaponIcon.Visible = false;
                LeftTop.Visible = false;
                LeftSide.Visible = false;
                BottomSide.Visible = false;
                BottomDown.Visible = false;
                RightTop.Visible = false;
                RightSide.Visible = false;
                BottomRightSide.Visible = false;
                BottomRightDown.Visible = false;
                Flag1.Visible = false;
                Chams.Enabled = false;
                Flag2.Visible = false;
                if not plr then
                    ScreenGui:Destroy();
                    Connection:Disconnect();
                end
            end
            --
            Connection = Euphoria.RunService.RenderStepped:Connect(function()
                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    local HRP = plr.Character.HumanoidRootPart
                    local Humanoid = plr.Character:WaitForChild("Humanoid");
                    local Pos, OnScreen = Cam:WorldToScreenPoint(HRP.Position)
                    local Dist = (Cam.CFrame.Position - HRP.Position).Magnitude / 3.5714285714
                    
                    if OnScreen and Dist <= ESP.MaxDistance then
                        local Size = HRP.Size.Y
                        local scaleFactor = (Size * Cam.ViewportSize.Y) / (Pos.Z * 2)
                        local w, h = 3 * scaleFactor, 4.5 * scaleFactor

                        -- Fade-out effect --
                        if ESP.FadeOut.OnDistance then
                            Functions:FadeOutOnDist(Box, Dist)
                            Functions:FadeOutOnDist(Outline, Dist)
                            Functions:FadeOutOnDist(Name, Dist)
                            Functions:FadeOutOnDist(Distance, Dist)
                            Functions:FadeOutOnDist(Weapon, Dist)
                            Functions:FadeOutOnDist(Healthbar, Dist)
                            Functions:FadeOutOnDist(BehindHealthbar, Dist)
                            Functions:FadeOutOnDist(HealthText, Dist)
                            Functions:FadeOutOnDist(WeaponIcon, Dist)
                            Functions:FadeOutOnDist(LeftTop, Dist)
                            Functions:FadeOutOnDist(LeftSide, Dist)
                            Functions:FadeOutOnDist(BottomSide, Dist)
                            Functions:FadeOutOnDist(BottomDown, Dist)
                            Functions:FadeOutOnDist(RightTop, Dist)
                            Functions:FadeOutOnDist(RightSide, Dist)
                            Functions:FadeOutOnDist(BottomRightSide, Dist)
                            Functions:FadeOutOnDist(BottomRightDown, Dist)
                            Functions:FadeOutOnDist(Chams, Dist)
                            Functions:FadeOutOnDist(Flag1, Dist)
                            Functions:FadeOutOnDist(Flag2, Dist)
                        end

                        -- Teamcheck
                        if ESP.TeamCheck and plr ~= lplayer and ((lplayer.Team ~= plr.Team and plr.Team) or (not lplayer.Team and not plr.Team)) and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") then

                            do -- Chams
                                Chams.Adornee = plr.Character
                                Chams.Enabled = ESP.Drawing.Chams.Enabled
                                Chams.FillColor = ESP.Drawing.Chams.FillRGB
                                Chams.OutlineColor = ESP.Drawing.Chams.OutlineRGB
                                do -- Breathe
                                    if ESP.Drawing.Chams.Thermal then
                                        local breathe_effect = math.atan(math.sin(tick() * 2)) * 2 / math.pi
                                        Chams.FillTransparency = ESP.Drawing.Chams.Fill_Transparency * breathe_effect * 0.01
                                        Chams.OutlineTransparency = ESP.Drawing.Chams.Outline_Transparency * breathe_effect * 0.01
                                    end
                                end
                                if ESP.Drawing.Chams.VisibleCheck then
                                    Chams.DepthMode = "Occluded"
                                else
                                    Chams.DepthMode = "AlwaysOnTop"
                                end
                            end;

                            do -- Corner Boxes
                                LeftTop.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                LeftTop.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                                LeftTop.Size = UDim2.new(0, w / 5, 0, 1)
                                
                                LeftSide.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                LeftSide.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                                LeftSide.Size = UDim2.new(0, 1, 0, h / 5)
                                
                                BottomSide.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                BottomSide.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y + h / 2)
                                BottomSide.Size = UDim2.new(0, 1, 0, h / 5)
                                BottomSide.AnchorPoint = Vector2.new(0, 5)
                                
                                BottomDown.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                BottomDown.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y + h / 2)
                                BottomDown.Size = UDim2.new(0, w / 5, 0, 1)
                                BottomDown.AnchorPoint = Vector2.new(0, 1)
                                
                                RightTop.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                RightTop.Position = UDim2.new(0, Pos.X + w / 2, 0, Pos.Y - h / 2)
                                RightTop.Size = UDim2.new(0, w / 5, 0, 1)
                                RightTop.AnchorPoint = Vector2.new(1, 0)
                                
                                RightSide.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                RightSide.Position = UDim2.new(0, Pos.X + w / 2 - 1, 0, Pos.Y - h / 2)
                                RightSide.Size = UDim2.new(0, 1, 0, h / 5)
                                RightSide.AnchorPoint = Vector2.new(0, 0)
                                
                                BottomRightSide.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                BottomRightSide.Position = UDim2.new(0, Pos.X + w / 2, 0, Pos.Y + h / 2)
                                BottomRightSide.Size = UDim2.new(0, 1, 0, h / 5)
                                BottomRightSide.AnchorPoint = Vector2.new(1, 1)
                                
                                BottomRightDown.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                BottomRightDown.Position = UDim2.new(0, Pos.X + w / 2, 0, Pos.Y + h / 2)
                                BottomRightDown.Size = UDim2.new(0, w / 5, 0, 1)
                                BottomRightDown.AnchorPoint = Vector2.new(1, 1)                                                            
                            end

                            do -- Boxes
                                Box.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                                Box.Size = UDim2.new(0, w, 0, h)
                                Box.Visible = ESP.Drawing.Boxes.Full.Enabled;

                                -- Gradient
                                if ESP.Drawing.Boxes.Filled.Enabled then
                                    Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                    if ESP.Drawing.Boxes.GradientFill then
                                        Box.BackgroundTransparency = ESP.Drawing.Boxes.Filled.Transparency;
                                    else
                                        Box.BackgroundTransparency = 1
                                    end
                                    Box.BorderSizePixel = 1
                                else
                                    Box.BackgroundTransparency = 1
                                end
                                -- Animation
                                RotationAngle = RotationAngle + (tick() - Tick) * ESP.Drawing.Boxes.RotationSpeed * math.cos(math.pi / 4 * tick() - math.pi / 2)
                                if ESP.Drawing.Boxes.Animate then
                                    Gradient1.Rotation = RotationAngle
                                    Gradient2.Rotation = RotationAngle
                                else
                                    Gradient1.Rotation = -45
                                    Gradient2.Rotation = -45
                                end
                                Tick = tick()
                            end

                            -- Healthbar
                            do  
                                local health = Humanoid.Health / Humanoid.MaxHealth;
                                Healthbar.Visible = ESP.Drawing.Healthbar.Enabled;
                                Healthbar.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2 + h * (1 - health))  
                                Healthbar.Size = UDim2.new(0, ESP.Drawing.Healthbar.Width, 0, h * health)  
                                --
                                BehindHealthbar.Visible = ESP.Drawing.Healthbar.Enabled;
                                BehindHealthbar.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2)  
                                BehindHealthbar.Size = UDim2.new(0, ESP.Drawing.Healthbar.Width, 0, h)
                                -- Health Text
                                do
                                    if ESP.Drawing.Healthbar.HealthText then
                                        local healthPercentage = math.floor(Humanoid.Health / Humanoid.MaxHealth * 100)
                                        HealthText.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2 + h * (1 - healthPercentage / 100) + 3)
                                        HealthText.Text = tostring(healthPercentage)
                                        HealthText.Visible = true
                                        if ESP.Drawing.Healthbar.Lerp then
                                            local color = health >= 0.75 and Color3.fromRGB(0, 255, 0) or health >= 0.5 and Color3.fromRGB(255, 255, 0) or health >= 0.25 and Color3.fromRGB(255, 170, 0) or Color3.fromRGB(255, 0, 0)
                                            HealthText.TextColor3 = color
                                        else
                                            HealthText.TextColor3 = ESP.Drawing.Healthbar.HealthTextRGB
                                        end
                                    end                        
                                end
                            end

                            do -- Names
                                Name.Visible = ESP.Drawing.Names.Enabled
                                if ESP.Options.Friendcheck and lplayer:IsFriendsWith(plr.UserId) then
                                    Name.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s', ESP.Options.FriendcheckRGB.R * 255, ESP.Options.FriendcheckRGB.G * 255, ESP.Options.FriendcheckRGB.B * 255, plr.Name)
                                else
                                    Name.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s', 255, 0, 0, plr.Name)
                                end
                                Name.Position = UDim2.new(0, Pos.X, 0, Pos.Y - h / 2 - 9)
                            end
                            
                            do -- Distance
                                if ESP.Drawing.Distances.Enabled then
                                    if ESP.Drawing.Distances.Position == "Bottom" then
                                        Weapon.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 18)
                                        WeaponIcon.Position = UDim2.new(0, Pos.X - 21, 0, Pos.Y + h / 2 + 15);
                                        Distance.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 7)
                                        Distance.Text = string.format("%d meters", math.floor(Dist))
                                        Distance.Visible = true
                                    elseif ESP.Drawing.Distances.Position == "Text" then
                                        Weapon.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 8)
                                        WeaponIcon.Position = UDim2.new(0, Pos.X - 21, 0, Pos.Y + h / 2 + 5);
                                        Distance.Visible = false
                                        if ESP.Options.Friendcheck and lplayer:IsFriendsWith(plr.UserId) then
                                            Name.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s [%d]', ESP.Options.FriendcheckRGB.R * 255, ESP.Options.FriendcheckRGB.G * 255, ESP.Options.FriendcheckRGB.B * 255, plr.Name, math.floor(Dist))
                                        else
                                            Name.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s [%d]', 255, 0, 0, plr.Name, math.floor(Dist))
                                        end
                                        Name.Visible = ESP.Drawing.Names.Enabled
                                    end
                                end
                            end

                            do -- Weapons
                                Weapon.Text = ""
                                Weapon.Visible = ESP.Drawing.Weapons.Enabled
                            end                            
                        else
                            HideESP();
                        end
                    else
                        HideESP();
                    end
                else
                    HideESP();
                end
            end)
        end
        coroutine.wrap(Updater)();
    end
    do -- Update ESP
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                coroutine.wrap(ESP)(v)
            end      
        end
        --
        game:GetService("Players").PlayerAdded:Connect(function(v)
            coroutine.wrap(ESP)(v)
        end);
    end;
end;


----------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------

local Toggle = Tabs.Skinz:AddToggle("SkinchangerToggle", {
    Title = "Skin Changer Hook", 
    Description = "Toggles the skin changer with heartbeat event.\n Means it will have no affect on World and gameplay will much smooth.", 
    Default = false
})

Toggle:OnChanged(function()
    if textLabels and textLabels.textLabel5 then
        textLabels.skinchanger.Visible = Options.SkinchangerToggle.Value
        fadeText(textLabels.skinchanger, Options.SkinchangerToggle.Value)
        alignTextLabels()
    end

    print("Toggle changed:", Options.SkinchangerToggle.Value)
end)







local viewModels = player.PlayerScripts.Assets:WaitForChild("ViewModels")

local assaultRifle = viewModels:FindFirstChild("Assault Rifle")
if assaultRifle then
    local assaultRifleOriginal = assaultRifle:Clone()
    assaultRifleOriginal.Name = "Assault Rifle Original"
    assaultRifleOriginal.Parent = viewModels
else
    print("Nul")
end

local ARDropdown = Tabs.Skinz:AddDropdown("ARDropdown", {
    Title = "ARDropdown",
    Values = {"None", "AUG", "AK-47", "Boneclaw Rifle"},
    Multi = false,
    Default = 1,
})

ARDropdown:OnChanged(function(Value)
    print("Nul")
    local currentAssaultRifle = viewModels:FindFirstChild("Assault Rifle")
    if currentAssaultRifle then
        currentAssaultRifle:Destroy()
    else
        print("Nul")
    end

    local models = {
        AUG = "AUG", ["AK-47"] = "AK-47", ["Boneclaw Rifle"] = "Boneclaw Rifle"
    }

    if models[Value] then
        local model = viewModels:FindFirstChild(models[Value])
        if model then
            local clonedModel = model:Clone()
            clonedModel.Name = "Assault Rifle"
            clonedModel.Parent = viewModels
        else
            print("Nul")
        end
    elseif Value == "None" then
        local originalAssaultRifle = viewModels:FindFirstChild("Assault Rifle Original")
        if originalAssaultRifle then
            local clonedOriginal = originalAssaultRifle:Clone()
            clonedOriginal.Name = "Assault Rifle"
            clonedOriginal.Parent = viewModels
        else
            print("Nul")
        end
    end
end)




local revolverModel = viewModels:FindFirstChild("Revolver")
if revolverModel then
    local revolverOriginal = revolverModel:Clone()
    revolverOriginal.Name = "Revolver Original"
    revolverOriginal.Parent = viewModels
end

local RevolverDropdown = Tabs.Skinz:AddDropdown("RevolverDropdown", {
    Title = "Revolver ",
    Values = {"None", "Boneclaw Revolver"},
    Multi = false,
    Default = 1,
})

RevolverDropdown:OnChanged(function(Value)
    local currentRevolver = viewModels:FindFirstChild("Revolver") or viewModels:FindFirstChild("Revolver Original")
    if currentRevolver then currentRevolver:Destroy() end

    if Value == "Boneclaw Revolver" then
        local boneclawModel = viewModels:FindFirstChild("Boneclaw Revolver")
        if boneclawModel then
            local clonedBoneclaw = boneclawModel:Clone()
            clonedBoneclaw.Parent = viewModels
            clonedBoneclaw.Name = "Revolver"
        end
    elseif Value == "None" then
        local originalRevolver = viewModels:FindFirstChild("Revolver Original")
        if originalRevolver then
            local clonedOriginal = originalRevolver:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Revolver"
        end
    end
end)





-- Clone the original "Bow" and "Arrow" models if they exist
local bow = viewModels:FindFirstChild("Bow") and viewModels.Bow:FindFirstChild("Body")
local arrow = viewModels:FindFirstChild("Bow") and viewModels.Bow:FindFirstChild("Arrow")

if bow then
    local bowOriginal = bow:Clone()
    bowOriginal.Name = "Bow Original"
    bowOriginal.Parent = viewModels.Bow
end

if arrow then
    local arrowOriginal = arrow:Clone()
    arrowOriginal.Name = "Arrow Original"
    arrowOriginal.Parent = viewModels
end

-- Dropdown for selecting Bow
local BowDropdown = Tabs.Skinz:AddDropdown("BowDropdown", {
    Title = "Bow ",
    Values = {"None", "Bat Bow", "Compound Bow", "Raven Bow"},
    Multi = false,
    Default = 1,
})

BowDropdown:OnChanged(function(Value)
    local currentBow = viewModels.Bow:FindFirstChild("Body")
    if currentBow then currentBow:Destroy() end

    local bowModel = viewModels:FindFirstChild(Value)
    if bowModel then
        local bowBody = bowModel:FindFirstChild("Body")
        if bowBody then
            local clonedBow = bowBody:Clone()
            clonedBow.Name = "Body"
            clonedBow.Parent = viewModels.Bow
        end
    elseif Value == "None" then
        local originalBow = viewModels.Bow:FindFirstChild("Bow Original")
        if originalBow then
            local clonedOriginal = originalBow:Clone()
            clonedOriginal.Name = "Body"
            clonedOriginal.Parent = viewModels.Bow
        end
    end
end)

-- Dropdown for selecting Arrow
local ArrowDropdown = Tabs.Skinz:AddDropdown("ArrowDropdown", {
    Title = "Arrow ",
    Values = {"None", "Bat Bow Arrow"},
    Multi = false,
    Default = 1,
})

ArrowDropdown:OnChanged(function(Value)
    local currentArrow = viewModels.Bow:FindFirstChild("Arrow")
    if currentArrow then currentArrow:Destroy() end

    if Value == "Bat Bow Arrow" then
        local batArrowModel = viewModels:FindFirstChild("Bat Bow") and viewModels["Bat Bow"]:FindFirstChild("Arrow")
        if batArrowModel then
            local clonedBatArrow = batArrowModel:Clone()
            clonedBatArrow.Name = "Arrow"
            clonedBatArrow.Parent = viewModels.Bow
        end
    elseif Value == "None" then
        local originalArrow = viewModels:FindFirstChild("Arrow Original")
        if originalArrow then
            local clonedOriginal = originalArrow:Clone()
            clonedOriginal.Name = "Arrow"
            clonedOriginal.Parent = viewModels.Bow
        end
    end
end)







-- Clone the original "Shorty" model
local shortyModel = viewModels:FindFirstChild("Shorty")
if shortyModel then
    local shortyOriginal = shortyModel:Clone()
    shortyOriginal.Name = "Shorty Original"
    shortyOriginal.Parent = viewModels
end

-- Dropdown setup for selecting Shorty variants
local ShortyDropdown = Tabs.Skinz:AddDropdown("ShortyDropdown", {
    Title = "Shorty",
    Values = {"None", "Lovely Shorty", "Not So Shorty", "Too Shorty", "Demon Shorty"},
    Multi = false,
    Default = 1,
})

ShortyDropdown:OnChanged(function(Value)
    -- Remove any current Shorty model before making a change
    local currentShorty = viewModels:FindFirstChild("Shorty") or viewModels:FindFirstChild("Shorty Original")
    if currentShorty then
        currentShorty:Destroy()
    end

    -- Function to clone a Shorty variant model
    local function cloneShortyModel(modelName)
        local model = viewModels:FindFirstChild(modelName)
        if model then
            local clonedModel = model:Clone()
            clonedModel.Parent = viewModels
            clonedModel.Name = "Shorty"
        end
    end

    -- Handle the dropdown selection
    if Value == "None" then
        local originalShorty = viewModels:FindFirstChild("Shorty Original")
        if originalShorty then
            local clonedOriginal = originalShorty:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Shorty"
        end
    else
        -- Clone the selected variant if it exists
        cloneShortyModel(Value)
    end
end)







-- Clone the original "Burst Rifle" model
local burstRifleModel = viewModels:FindFirstChild("Burst Rifle")
if burstRifleModel then
    local burstRifleOriginal = burstRifleModel:Clone()
    burstRifleOriginal.Name = "Burst Rifle Original"
    burstRifleOriginal.Parent = viewModels
end

-- Dropdown setup for selecting guns
local BurstRifleDropdown = Tabs.Skinz:AddDropdown("BurstRifleDropdown", {
    Title = "Brust Rifel",
    Values = {"None", "Electro Rifle", "Aqua Burst", "Pixel Burst", "Spectral Burst"},
    Multi = false,
    Default = 1,
})


BurstRifleDropdown:OnChanged(function(Value)
    -- Remove any current gun model before making a change
    local currentGun = viewModels:FindFirstChild("Burst Rifle") or viewModels:FindFirstChild("Burst Rifle Original")
    if currentGun then
        currentGun:Destroy()
    end

    if Value == "Electro Rifle" then
        local electroRifleModel = viewModels:FindFirstChild("Electro Rifle")
        if electroRifleModel then
            local clonedElectroRifle = electroRifleModel:Clone()
            clonedElectroRifle.Parent = viewModels
            clonedElectroRifle.Name = "Burst Rifle"
        end

    elseif Value == "Aqua Burst" then
        local aquaBurstModel = viewModels:FindFirstChild("Aqua Burst")
        if aquaBurstModel then
            local clonedAquaBurst = aquaBurstModel:Clone()
            clonedAquaBurst.Parent = viewModels
            clonedAquaBurst.Name = "Burst Rifle"
        end

    elseif Value == "Pixel Burst" then
        local pixelBurstModel = viewModels:FindFirstChild("Pixel Burst")
        if pixelBurstModel then
            local clonedPixelBurst = pixelBurstModel:Clone()
            clonedPixelBurst.Parent = viewModels
            clonedPixelBurst.Name = "Burst Rifle"
        end

    elseif Value == "Spectral Burst" then
        local spectralBurstModel = viewModels:FindFirstChild("Spectral Burst")
        if spectralBurstModel then
            local clonedSpectralBurst = spectralBurstModel:Clone()
            clonedSpectralBurst.Parent = viewModels
            clonedSpectralBurst.Name = "Burst Rifle"
        end

    elseif Value == "None" then
        local originalBurstRifle = viewModels:FindFirstChild("Burst Rifle Original")
        if originalBurstRifle then
            local clonedOriginal = originalBurstRifle:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Burst Rifle"
        end
    end
end)









-- Clone the original "RPG" model
local rpgModel = viewModels:FindFirstChild("RPG")
if rpgModel then
    local rpgOriginal = rpgModel:Clone()
    rpgOriginal.Name = "RPG Original"
    rpgOriginal.Parent = viewModels
end

-- Dropdown setup for selecting weapons
local RPGDropdown = Tabs.Skinz:AddDropdown("RPGDropdown", {
    Title = "RPG",
    Values = {"None", "Nuke Launcher"},
    Multi = false,
    Default = 1,
})


RPGDropdown:OnChanged(function(Value)
    -- Remove any current weapon model before making a change
    local currentWeapon = viewModels:FindFirstChild("RPG") or viewModels:FindFirstChild("RPG Original")
    if currentWeapon then
        currentWeapon:Destroy()
    end

    if Value == "Nuke Launcher" then
        local nukeLauncherModel = viewModels:FindFirstChild("Nuke Launcher")
        if nukeLauncherModel then
            local clonedNukeLauncher = nukeLauncherModel:Clone()
            clonedNukeLauncher.Parent = viewModels
            clonedNukeLauncher.Name = "RPG"
        end

    elseif Value == "None" then
        local originalRPG = viewModels:FindFirstChild("RPG Original")
        if originalRPG then
            local clonedOriginal = originalRPG:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "RPG"
        end
    end
end)






-- Clone the original "Shotgun" model
local shotgunModel = viewModels:FindFirstChild("Shotgun")
if shotgunModel then
    local shotgunOriginal = shotgunModel:Clone()
    shotgunOriginal.Name = "Shotgun Original"
    shotgunOriginal.Parent = viewModels
end

-- Dropdown setup for selecting shotguns
local ShotgunDropdown = Tabs.Skinz:AddDropdown("ShotgunDropdown", {
    Title = "Shotgun ",
    Values = {"None", "Balloon Shotgun", "Hyper Shotgun"},
    Multi = false,
    Default = 1,
})


ShotgunDropdown:OnChanged(function(Value)
    -- Remove any current shotgun model before making a change
    local currentShotgun = viewModels:FindFirstChild("Shotgun") or viewModels:FindFirstChild("Shotgun Original")
    if currentShotgun then
        currentShotgun:Destroy()
    end

    if Value == "Balloon Shotgun" then
        local balloonShotgunModel = viewModels:FindFirstChild("Balloon Shotgun")
        if balloonShotgunModel then
            local clonedBalloonShotgun = balloonShotgunModel:Clone()
            clonedBalloonShotgun.Parent = viewModels
            clonedBalloonShotgun.Name = "Shotgun"
        end

    elseif Value == "Hyper Shotgun" then
        local hyperShotgunModel = viewModels:FindFirstChild("Hyper Shotgun")
        if hyperShotgunModel then
            local clonedHyperShotgun = hyperShotgunModel:Clone()
            clonedHyperShotgun.Parent = viewModels
            clonedHyperShotgun.Name = "Shotgun"
        end

    elseif Value == "None" then
        local originalShotgun = viewModels:FindFirstChild("Shotgun Original")
        if originalShotgun then
            local clonedOriginal = originalShotgun:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Shotgun"
        end
    end
end)








-- Clone the original "Sniper" model
local sniperModel = viewModels:FindFirstChild("Sniper")
if sniperModel then
    local sniperOriginal = sniperModel:Clone()
    sniperOriginal.Name = "Sniper Original"
    sniperOriginal.Parent = viewModels
end

-- Dropdown setup for selecting snipers
local SniperDropdown = Tabs.Skinz:AddDropdown("SniperDropdown", {
    Title = "Sniper ",
    Values = {"None", "Pixel Sniper", "Hyper Sniper", "Keyper", "Eyething Sniper"},
    Multi = false,
    Default = 1,
})


SniperDropdown:OnChanged(function(Value)
    -- Remove any current sniper model before making a change
    local currentSniper = viewModels:FindFirstChild("Sniper") or viewModels:FindFirstChild("Sniper Original")
    if currentSniper then
        currentSniper:Destroy()
    end

    if Value == "Pixel Sniper" then
        local pixelSniperModel = viewModels:FindFirstChild("Pixel Sniper")
        if pixelSniperModel then
            local clonedPixelSniper = pixelSniperModel:Clone()
            clonedPixelSniper.Parent = viewModels
            clonedPixelSniper.Name = "Sniper"
        end

    elseif Value == "Hyper Sniper" then
        local hyperSniperModel = viewModels:FindFirstChild("Hyper Sniper")
        if hyperSniperModel then
            local clonedHyperSniper = hyperSniperModel:Clone()
            clonedHyperSniper.Parent = viewModels
            clonedHyperSniper.Name = "Sniper"
        end

    elseif Value == "Keyper" then
        local keyperModel = viewModels:FindFirstChild("Keyper")
        if keyperModel then
            local clonedKeyper = keyperModel:Clone()
            clonedKeyper.Parent = viewModels
            clonedKeyper.Name = "Sniper"
        end

    elseif Value == "Eyething Sniper" then
        local eyethingSniperModel = viewModels:FindFirstChild("Eyething Sniper")
        if eyethingSniperModel then
            local clonedEyethingSniper = eyethingSniperModel:Clone()
            clonedEyethingSniper.Parent = viewModels
            clonedEyethingSniper.Name = "Sniper"
        end

    elseif Value == "None" then
        local originalSniper = viewModels:FindFirstChild("Sniper Original")
        if originalSniper then
            local clonedOriginal = originalSniper:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Sniper"
        end
    end
end)











-- Clone the original "Flamethrower" model
local flamethrowerModel = viewModels:FindFirstChild("Flamethrower")
if flamethrowerModel then
    local flamethrowerOriginal = flamethrowerModel:Clone()
    flamethrowerOriginal.Name = "Flamethrower Original"
    flamethrowerOriginal.Parent = viewModels
end

-- Dropdown setup for selecting flamethrowers
local FlamethrowerDropdown = Tabs.Skinz:AddDropdown("FlamethrowerDropdown", {
    Title = "Flamethrower ",
    Values = {"None", "Pixel Flamethrower", "Lamethrower"},
    Multi = false,
    Default = 1,
})


FlamethrowerDropdown:OnChanged(function(Value)
    -- Remove any current flamethrower model before making a change
    local currentFlamethrower = viewModels:FindFirstChild("Flamethrower") or viewModels:FindFirstChild("Flamethrower Original")
    if currentFlamethrower then
        currentFlamethrower:Destroy()
    end

    if Value == "Pixel Flamethrower" then
        local pixelFlamethrowerModel = viewModels:FindFirstChild("Pixel Flamethrower")
        if pixelFlamethrowerModel then
            local clonedPixelFlamethrower = pixelFlamethrowerModel:Clone()
            clonedPixelFlamethrower.Parent = viewModels
            clonedPixelFlamethrower.Name = "Flamethrower"
        end

    elseif Value == "Lamethrower" then
        local lamethrowerModel = viewModels:FindFirstChild("Lamethrower")
        if lamethrowerModel then
            local clonedLamethrower = lamethrowerModel:Clone()
            clonedLamethrower.Parent = viewModels
            clonedLamethrower.Name = "Flamethrower"
        end

    elseif Value == "None" then
        local originalFlamethrower = viewModels:FindFirstChild("Flamethrower Original")
        if originalFlamethrower then
            local clonedOriginal = originalFlamethrower:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Flamethrower"
        end
    end
end)








-- Clone the original "Grenade Launcher" model
local grenadeLauncherModel = viewModels:FindFirstChild("Grenade Launcher")
if grenadeLauncherModel then
    local grenadeLauncherOriginal = grenadeLauncherModel:Clone()
    grenadeLauncherOriginal.Name = "Grenade Launcher Original"
    grenadeLauncherOriginal.Parent = viewModels
end

-- Dropdown setup for selecting grenade launchers
local GrenadeLauncherDropdown = Tabs.Skinz:AddDropdown("GrenadeLauncherDropdown", {
    Title = "Grenade Launcher ",
    Values = {"None", "Swashbuckler", "Uranium Launcher"},
    Multi = false,
    Default = 1,
})


GrenadeLauncherDropdown:OnChanged(function(Value)
    -- Remove any current grenade launcher model before making a change
    local currentGrenadeLauncher = viewModels:FindFirstChild("Grenade Launcher") or viewModels:FindFirstChild("Grenade Launcher Original")
    if currentGrenadeLauncher then
        currentGrenadeLauncher:Destroy()
    end

    if Value == "Swashbuckler" then
        local swashbucklerModel = viewModels:FindFirstChild("Swashbuckler")
        if swashbucklerModel then
            local clonedSwashbuckler = swashbucklerModel:Clone()
            clonedSwashbuckler.Parent = viewModels
            clonedSwashbuckler.Name = "Grenade Launcher"
        end

    elseif Value == "Uranium Launcher" then
        local uraniumLauncherModel = viewModels:FindFirstChild("Uranium Launcher")
        if uraniumLauncherModel then
            local clonedUraniumLauncher = uraniumLauncherModel:Clone()
            clonedUraniumLauncher.Parent = viewModels
            clonedUraniumLauncher.Name = "Grenade Launcher"
        end

    elseif Value == "None" then
        local originalGrenadeLauncher = viewModels:FindFirstChild("Grenade Launcher Original")
        if originalGrenadeLauncher then
            local clonedOriginal = originalGrenadeLauncher:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Grenade Launcher"
        end
    end
end)





-- Clone the original "Minigun" model
local minigunModel = viewModels:FindFirstChild("Minigun")
if minigunModel then
    local minigunOriginal = minigunModel:Clone()
    minigunOriginal.Name = "Minigun Original"
    minigunOriginal.Parent = viewModels
end

-- Dropdown setup for selecting miniguns
local MinigunDropdown = Tabs.Skinz:AddDropdown("MinigunDropdown", {
    Title = "Minigun ",
    Values = {"None", "Lasergun 3000", "Pixel Minigun"},
    Multi = false,
    Default = 1,
})


MinigunDropdown:OnChanged(function(Value)
    -- Remove any current minigun model before making a change
    local currentMinigun = viewModels:FindFirstChild("Minigun") or viewModels:FindFirstChild("Minigun Original")
    if currentMinigun then
        currentMinigun:Destroy()
    end

    if Value == "Lasergun 3000" then
        local lasergunModel = viewModels:FindFirstChild("Lasergun 3000")
        if lasergunModel then
            local clonedLasergun = lasergunModel:Clone()
            clonedLasergun.Parent = viewModels
            clonedLasergun.Name = "Minigun"
        end

    elseif Value == "Pixel Minigun" then
        local pixelMinigunModel = viewModels:FindFirstChild("Pixel Minigun")
        if pixelMinigunModel then
            local clonedPixelMinigun = pixelMinigunModel:Clone()
            clonedPixelMinigun.Parent = viewModels
            clonedPixelMinigun.Name = "Minigun"
        end

    elseif Value == "None" then
        local originalMinigun = viewModels:FindFirstChild("Minigun Original")
        if originalMinigun then
            local clonedOriginal = originalMinigun:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Minigun"
        end
    end
end)





-- Clone the original "Handgun" model
local handgunModel = viewModels:FindFirstChild("Handgun")
if handgunModel then
    local handgunOriginal = handgunModel:Clone()
    handgunOriginal.Name = "Handgun Original"
    handgunOriginal.Parent = viewModels
end

-- Dropdown setup for selecting handguns
local HandgunDropdown = Tabs.Skinz:AddDropdown("HandgunDropdown", {
    Title = "Handgun ",
    Values = {"None", "Blaster", "Pixel Handgun", "Pumpkin Handgun"},
    Multi = false,
    Default = 1,
})


HandgunDropdown:OnChanged(function(Value)
    -- Remove any current handgun model before making a change
    local currentHandgun = viewModels:FindFirstChild("Handgun") or viewModels:FindFirstChild("Handgun Original")
    if currentHandgun then
        currentHandgun:Destroy()
    end

    if Value == "Blaster" then
        local blasterModel = viewModels:FindFirstChild("Blaster")
        if blasterModel then
            local clonedBlaster = blasterModel:Clone()
            clonedBlaster.Parent = viewModels
            clonedBlaster.Name = "Handgun"
        end

    elseif Value == "Pixel Handgun" then
        local pixelHandgunModel = viewModels:FindFirstChild("Pixel Handgun")
        if pixelHandgunModel then
            local clonedPixelHandgun = pixelHandgunModel:Clone()
            clonedPixelHandgun.Parent = viewModels
            clonedPixelHandgun.Name = "Handgun"
        end

    elseif Value == "Pumpkin Handgun" then
        local pumpkinHandgunModel = viewModels:FindFirstChild("Pumpkin Handgun")
        if pumpkinHandgunModel then
            local clonedPumpkinHandgun = pumpkinHandgunModel:Clone()
            clonedPumpkinHandgun.Parent = viewModels
            clonedPumpkinHandgun.Name = "Handgun"
        end

    elseif Value == "None" then
        local originalHandgun = viewModels:FindFirstChild("Handgun Original")
        if originalHandgun then
            local clonedOriginal = originalHandgun:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Handgun"
        end
    end
end)








-- Clone the original "Uzi" model
local uziModel = viewModels:FindFirstChild("Uzi")
if uziModel then
    local uziOriginal = uziModel:Clone()
    uziOriginal.Name = "Uzi Original"
    uziOriginal.Parent = viewModels
end

-- Dropdown setup for selecting Uzis
local UziDropdown = Tabs.Skinz:AddDropdown("UziDropdown", {
    Title = "Uzi ",
    Values = {"None", "Water Uzi", "Electro Uzi", "Demon Uzi"},
    Multi = false,
    Default = 1,
})


UziDropdown:OnChanged(function(Value)
    -- Remove any current Uzi model before making a change
    local currentUzi = viewModels:FindFirstChild("Uzi") or viewModels:FindFirstChild("Uzi Original")
    if currentUzi then
        currentUzi:Destroy()
    end

    if Value == "Water Uzi" then
        local waterUziModel = viewModels:FindFirstChild("Water Uzi")
        if waterUziModel then
            local clonedWaterUzi = waterUziModel:Clone()
            clonedWaterUzi.Parent = viewModels
            clonedWaterUzi.Name = "Uzi"
        end

    elseif Value == "Electro Uzi" then
        local electroUziModel = viewModels:FindFirstChild("Electro Uzi")
        if electroUziModel then
            local clonedElectroUzi = electroUziModel:Clone()
            clonedElectroUzi.Parent = viewModels
            clonedElectroUzi.Name = "Uzi"
        end

    elseif Value == "Demon Uzi" then
        local demonUziModel = viewModels:FindFirstChild("Demon Uzi")
        if demonUziModel then
            local clonedDemonUzi = demonUziModel:Clone()
            clonedDemonUzi.Parent = viewModels
            clonedDemonUzi.Name = "Uzi"
        end

    elseif Value == "None" then
        local originalUzi = viewModels:FindFirstChild("Uzi Original")
        if originalUzi then
            local clonedOriginal = originalUzi:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Uzi"
        end
    end
end)









-- Clone the original "Exogun" model
local exogunModel = viewModels:FindFirstChild("Exogun")
if exogunModel then
    local exogunOriginal = exogunModel:Clone()
    exogunOriginal.Name = "Exogun Original"
    exogunOriginal.Parent = viewModels
end

-- Dropdown setup for selecting Exoguns
local ExogunDropdown = Tabs.Skinz:AddDropdown("ExogunDropdown", {
    Title = "Exogun ",
    Values = {"None", "Singularity", "Ray Gun", "Wondergun"},
    Multi = false,
    Default = 1,
})


ExogunDropdown:OnChanged(function(Value)
    -- Remove any current Exogun model before making a change
    local currentExogun = viewModels:FindFirstChild("Exogun") or viewModels:FindFirstChild("Exogun Original")
    if currentExogun then
        currentExogun:Destroy()
    end

    if Value == "Singularity" then
        local singularityModel = viewModels:FindFirstChild("Singularity")
        if singularityModel then
            local clonedSingularity = singularityModel:Clone()
            clonedSingularity.Parent = viewModels
            clonedSingularity.Name = "Exogun"
        end

    elseif Value == "Ray Gun" then
        local rayGunModel = viewModels:FindFirstChild("Ray Gun")
        if rayGunModel then
            local clonedRayGun = rayGunModel:Clone()
            clonedRayGun.Parent = viewModels
            clonedRayGun.Name = "Exogun"
        end

    elseif Value == "Wondergun" then
        local wondergunModel = viewModels:FindFirstChild("Wondergun")
        if wondergunModel then
            local clonedWondergun = wondergunModel:Clone()
            clonedWondergun.Parent = viewModels
            clonedWondergun.Name = "Exogun"
        end

    elseif Value == "None" then
        local originalExogun = viewModels:FindFirstChild("Exogun Original")
        if originalExogun then
            local clonedOriginal = originalExogun:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Exogun"
        end
    end
end)






-- Clone the original "Slingshot" model
local slingshotModel = viewModels:FindFirstChild("Slingshot")
if slingshotModel then
    local slingshotOriginal = slingshotModel:Clone()
    slingshotOriginal.Name = "Slingshot Original"
    slingshotOriginal.Parent = viewModels
end

-- Dropdown setup for selecting Slingshots
local SlingshotDropdown = Tabs.Skinz:AddDropdown("SlingshotDropdown", {
    Title = "Slingshot ",
    Values = {"None", "Stick"},
    Multi = false,
    Default = 1,
})


SlingshotDropdown:OnChanged(function(Value)
    -- Remove any current Slingshot model before making a change
    local currentSlingshot = viewModels:FindFirstChild("Slingshot") or viewModels:FindFirstChild("Slingshot Original")
    if currentSlingshot then
        currentSlingshot:Destroy()
    end

    if Value == "Stick" then
        local stickModel = viewModels:FindFirstChild("Stick")
        if stickModel then
            local clonedStick = stickModel:Clone()
            clonedStick.Parent = viewModels
            clonedStick.Name = "Slingshot"
        end

    elseif Value == "None" then
        local originalSlingshot = viewModels:FindFirstChild("Slingshot Original")
        if originalSlingshot then
            local clonedOriginal = originalSlingshot:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Slingshot"
        end
    end
end)





-- Clone the original "Trowel" model
local trowelModel = viewModels:FindFirstChild("Trowel")
if trowelModel then
    local trowelOriginal = trowelModel:Clone()
    trowelOriginal.Name = "Trowel Original"
    trowelOriginal.Parent = viewModels
end

-- Dropdown setup for selecting Trowels
local TrowelDropdown = Tabs.Skinz:AddDropdown("TrowelDropdown", {
    Title = "Trowel ",
    Values = {"None", "Garden Shovel", "Plastic Shovel"},
    Multi = false,
    Default = 1,
})


TrowelDropdown:OnChanged(function(Value)
    -- Remove any current Trowel model before making a change
    local currentTrowel = viewModels:FindFirstChild("Trowel") or viewModels:FindFirstChild("Trowel Original")
    if currentTrowel then
        currentTrowel:Destroy()
    end

    if Value == "Garden Shovel" then
        local gardenShovelModel = viewModels:FindFirstChild("Garden Shovel")
        if gardenShovelModel then
            local clonedGardenShovel = gardenShovelModel:Clone()
            clonedGardenShovel.Parent = viewModels
            clonedGardenShovel.Name = "Trowel"
        end

    elseif Value == "Plastic Shovel" then
        local plasticShovelModel = viewModels:FindFirstChild("Plastic Shovel")
        if plasticShovelModel then
            local clonedPlasticShovel = plasticShovelModel:Clone()
            clonedPlasticShovel.Parent = viewModels
            clonedPlasticShovel.Name = "Trowel"
        end

    elseif Value == "None" then
        local originalTrowel = viewModels:FindFirstChild("Trowel Original")
        if originalTrowel then
            local clonedOriginal = originalTrowel:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Trowel"
        end
    end
end)





-- Clone the original "Chainsaw" model
local chainsawModel = viewModels:FindFirstChild("Chainsaw")
if chainsawModel then
    local chainsawOriginal = chainsawModel:Clone()
    chainsawOriginal.Name = "Chainsaw Original"
    chainsawOriginal.Parent = viewModels
end

-- Dropdown setup for selecting Chainsaws
local ChainsawDropdown = Tabs.Skinz:AddDropdown("ChainsawDropdown", {
    Title = "Chainsaw ",
    Values = {"None", "Blobsaw"},
    Multi = false,
    Default = 1,
})


ChainsawDropdown:OnChanged(function(Value)
    -- Remove any current Chainsaw model before making a change
    local currentChainsaw = viewModels:FindFirstChild("Chainsaw") or viewModels:FindFirstChild("Chainsaw Original")
    if currentChainsaw then
        currentChainsaw:Destroy()
    end

    if Value == "Blobsaw" then
        local blobsawModel = viewModels:FindFirstChild("Blobsaw")
        if blobsawModel then
            local clonedBlobsaw = blobsawModel:Clone()
            clonedBlobsaw.Parent = viewModels
            clonedBlobsaw.Name = "Chainsaw"
        end

    elseif Value == "None" then
        local originalChainsaw = viewModels:FindFirstChild("Chainsaw Original")
        if originalChainsaw then
            local clonedOriginal = originalChainsaw:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Chainsaw"
        end
    end
end)




-- Clone the original "Fists" model
local fistsModel = viewModels:FindFirstChild("Fists")
if fistsModel then
    local fistsOriginal = fistsModel:Clone()
    fistsOriginal.Name = "Fists Original"
    fistsOriginal.Parent = viewModels
end

-- Dropdown setup for selecting Fists
local FistsDropdown = Tabs.Skinz:AddDropdown("FistsDropdown", {
    Title = "Fists ",
    Values = {"None", "Boxing Gloves", "Brass Knuckles", "Pumpkin Claws"},
    Multi = false,
    Default = 1,
})


FistsDropdown:OnChanged(function(Value)
    -- Remove any current Fists model before making a change
    local currentFists = viewModels:FindFirstChild("Fists") or viewModels:FindFirstChild("Fists Original")
    if currentFists then
        currentFists:Destroy()
    end

    if Value == "Boxing Gloves" then
        local boxingGlovesModel = viewModels:FindFirstChild("Boxing Gloves")
        if boxingGlovesModel then
            local clonedBoxingGloves = boxingGlovesModel:Clone()
            clonedBoxingGloves.Parent = viewModels
            clonedBoxingGloves.Name = "Fists"
        end

    elseif Value == "Brass Knuckles" then
        local brassKnucklesModel = viewModels:FindFirstChild("Brass Knuckles")
        if brassKnucklesModel then
            local clonedBrassKnuckles = brassKnucklesModel:Clone()
            clonedBrassKnuckles.Parent = viewModels
            clonedBrassKnuckles.Name = "Fists"
        end

    elseif Value == "Pumpkin Claws" then
        local pumpkinClawsModel = viewModels:FindFirstChild("Pumpkin Claws")
        if pumpkinClawsModel then
            local clonedPumpkinClaws = pumpkinClawsModel:Clone()
            clonedPumpkinClaws.Parent = viewModels
            clonedPumpkinClaws.Name = "Fists"
        end

    elseif Value == "None" then
        local originalFists = viewModels:FindFirstChild("Fists Original")
        if originalFists then
            local clonedOriginal = originalFists:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Fists"
        end
    end
end)








-- Clone the original "Katana" model
local katanaModel = viewModels:FindFirstChild("Katana")
if katanaModel then
local katanaOriginal = katanaModel:Clone()
katanaOriginal.Name = "Katana Original"
katanaOriginal.Parent = viewModels
end

-- Dropdown setup for selecting Katana
local KatanaDropdown = Tabs.Skinz:AddDropdown("KatanaDropdown", {
Title = "Katana ",
Values = {"None", "Saber", "Pixel Katana", "Devil's Trident"},
Multi = false,
Default = 1,
})


KatanaDropdown:OnChanged(function(Value)
-- Remove any current Katana model before making a change
local currentKatana = viewModels:FindFirstChild("Katana") or viewModels:FindFirstChild("Katana Original")
if currentKatana then
    currentKatana:Destroy()
end

if Value == "Saber" then
    local saberModel = viewModels:FindFirstChild("Saber")
    if saberModel then
        local clonedSaber = saberModel:Clone()
        clonedSaber.Parent = viewModels
        clonedSaber.Name = "Katana"
    end

elseif Value == "Pixel Katana" then
    local pixelKatanaModel = viewModels:FindFirstChild("Pixel Katana")
    if pixelKatanaModel then
        local clonedPixelKatana = pixelKatanaModel:Clone()
        clonedPixelKatana.Parent = viewModels
        clonedPixelKatana.Name = "Katana"
    end

elseif Value == "Devil's Trident" then
    local devilsTridentModel = viewModels:FindFirstChild("Devil's Trident")
    if devilsTridentModel then
        local clonedDevilsTrident = devilsTridentModel:Clone()
        clonedDevilsTrident.Parent = viewModels
        clonedDevilsTrident.Name = "Katana"
    end

elseif Value == "None" then
    local originalKatana = viewModels:FindFirstChild("Katana Original")
    if originalKatana then
        local clonedOriginal = originalKatana:Clone()
        clonedOriginal.Parent = viewModels
        clonedOriginal.Name = "Katana"
    end
end
end)







-- Clone the original "Medkit" model
local medkitModel = viewModels:FindFirstChild("Medkit")
if medkitModel then
    local medkitOriginal = medkitModel:Clone()
    medkitOriginal.Name = "Medkit Original"
    medkitOriginal.Parent = viewModels
end

-- Dropdown setup for selecting Medkit
local MedkitDropdown = Tabs.Skinz:AddDropdown("MedkitDropdown", {
    Title = "Medkit ",
    Values = {"None", "Laptop", "Briefcase"},
    Multi = false,
    Default = 1,
})


MedkitDropdown:OnChanged(function(Value)
    -- Remove any current Medkit model before making a change
    local currentMedkit = viewModels:FindFirstChild("Medkit") or viewModels:FindFirstChild("Medkit Original")
    if currentMedkit then
        currentMedkit:Destroy()
    end

    if Value == "Laptop" then
        local laptopModel = viewModels:FindFirstChild("Laptop")
        if laptopModel then
            local clonedLaptop = laptopModel:Clone()
            clonedLaptop.Parent = viewModels
            clonedLaptop.Name = "Medkit"
        end

    elseif Value == "Briefcase" then
        local briefcaseModel = viewModels:FindFirstChild("Briefcase")
        if briefcaseModel then
            local clonedBriefcase = briefcaseModel:Clone()
            clonedBriefcase.Parent = viewModels
            clonedBriefcase.Name = "Medkit"
        end

    elseif Value == "None" then
        local originalMedkit = viewModels:FindFirstChild("Medkit Original")
        if originalMedkit then
            local clonedOriginal = originalMedkit:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Medkit"
        end
    end
end)




local throwables = player.PlayerScripts.Assets:WaitForChild("Throwables")

-- Clone the original "Grenade" model in ViewModels
local grenadeModel = viewModels:FindFirstChild("Grenade")
if grenadeModel then
    local grenadeOriginal = grenadeModel:Clone()
    grenadeOriginal.Name = "Grenade Original"
    grenadeOriginal.Parent = viewModels
end

-- Clone the original "Grenade" model in Throwables
local throwableGrenadeModel = throwables:FindFirstChild("Grenade")
if throwableGrenadeModel then
    local throwableGrenadeOriginal = throwableGrenadeModel:Clone()
    throwableGrenadeOriginal.Name = "Grenade Original"
    throwableGrenadeOriginal.Parent = throwables
end

-- Dropdown setup for selecting Grenade
local GrenadeDropdown = Tabs.Skinz:AddDropdown("GrenadeDropdown", {
    Title = "Grenade ",
    Values = {"None", "Whoopee Cushion", "Water Balloon", "Soul Grenade"},
    Multi = false,
    Default = 1,
})


GrenadeDropdown:OnChanged(function(Value)
    -- Remove any current Grenade model from ViewModels
    local currentGrenade = viewModels:FindFirstChild("Grenade") or viewModels:FindFirstChild("Grenade Original")
    if currentGrenade then
        currentGrenade:Destroy()
    end

    -- Remove any current Grenade model from Throwables
    local currentThrowableGrenade = throwables:FindFirstChild("Grenade") or throwables:FindFirstChild("Grenade Original")
    if currentThrowableGrenade then
        currentThrowableGrenade:Destroy()
    end

    if Value == "Whoopee Cushion" then
        local whoopeeCushionModel = viewModels:FindFirstChild("Whoopee Cushion")
        if whoopeeCushionModel then
            local clonedWhoopeeCushion = whoopeeCushionModel:Clone()
            clonedWhoopeeCushion.Parent = viewModels
            clonedWhoopeeCushion.Name = "Grenade"
        end
        
        local throwableWhoopeeCushionModel = throwables:FindFirstChild("Whoopee Cushion")
        if throwableWhoopeeCushionModel then
            local clonedThrowableWhoopeeCushion = throwableWhoopeeCushionModel:Clone()
            clonedThrowableWhoopeeCushion.Parent = throwables
            clonedThrowableWhoopeeCushion.Name = "Grenade"
        end

    elseif Value == "Water Balloon" then
        local waterBalloonModel = viewModels:FindFirstChild("Water Balloon")
        if waterBalloonModel then
            local clonedWaterBalloon = waterBalloonModel:Clone()
            clonedWaterBalloon.Parent = viewModels
            clonedWaterBalloon.Name = "Grenade"
        end
        
        local throwableWaterBalloonModel = throwables:FindFirstChild("Water Balloon")
        if throwableWaterBalloonModel then
            local clonedThrowableWaterBalloon = throwableWaterBalloonModel:Clone()
            clonedThrowableWaterBalloon.Parent = throwables
            clonedThrowableWaterBalloon.Name = "Grenade"
        end

    elseif Value == "Soul Grenade" then
        local soulGrenadeModel = viewModels:FindFirstChild("Soul Grenade")
        if soulGrenadeModel then
            local clonedSoulGrenade = soulGrenadeModel:Clone()
            clonedSoulGrenade.Parent = viewModels
            clonedSoulGrenade.Name = "Grenade"
        end
        
        local throwableSoulGrenadeModel = throwables:FindFirstChild("Soul Grenade")
        if throwableSoulGrenadeModel then
            local clonedThrowableSoulGrenade = throwableSoulGrenadeModel:Clone()
            clonedThrowableSoulGrenade.Parent = throwables
            clonedThrowableSoulGrenade.Name = "Grenade"
        end

    elseif Value == "None" then
        local originalGrenade = viewModels:FindFirstChild("Grenade Original")
        if originalGrenade then
            local clonedOriginal = originalGrenade:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Grenade"
        end
        
        local originalThrowableGrenade = throwables:FindFirstChild("Grenade Original")
        if originalThrowableGrenade then
            local clonedOriginalThrowable = originalThrowableGrenade:Clone()
            clonedOriginalThrowable.Parent = throwables
            clonedOriginalThrowable.Name = "Grenade"
        end
    end
end)





local throwables = player.PlayerScripts.Assets:WaitForChild("Throwables")

-- Clone the original "Molotov" model in ViewModels
local molotovModel = viewModels:FindFirstChild("Molotov")
if molotovModel then
    local molotovOriginal = molotovModel:Clone()
    molotovOriginal.Name = "Molotov Original"
    molotovOriginal.Parent = viewModels
end

-- Clone the original "Molotov" model in Throwables
local throwableMolotovModel = throwables:FindFirstChild("Molotov")
if throwableMolotovModel then
    local throwableMolotovOriginal = throwableMolotovModel:Clone()
    throwableMolotovOriginal.Name = "Molotov Original"
    throwableMolotovOriginal.Parent = throwables
end

-- Dropdown setup for selecting Molotov
local MolotovDropdown = Tabs.Skinz:AddDropdown("MolotovDropdown", {
    Title = "Molotov ",
    Values = {"None", "Coffee", "Hexxed Candle", "Torch"},
    Multi = false,
    Default = 1,
})


MolotovDropdown:OnChanged(function(Value)
    -- Remove any current Molotov model from ViewModels
    local currentMolotov = viewModels:FindFirstChild("Molotov") or viewModels:FindFirstChild("Molotov Original")
    if currentMolotov then
        currentMolotov:Destroy()
    end

    -- Remove any current Molotov model from Throwables
    local currentThrowableMolotov = throwables:FindFirstChild("Molotov") or throwables:FindFirstChild("Molotov Original")
    if currentThrowableMolotov then
        currentThrowableMolotov:Destroy()
    end

    if Value == "Coffee" then
        local coffeeModel = viewModels:FindFirstChild("Coffee")
        if coffeeModel then
            local clonedCoffee = coffeeModel:Clone()
            clonedCoffee.Parent = viewModels
            clonedCoffee.Name = "Molotov"
        end
        
        local throwableCoffeeModel = throwables:FindFirstChild("Coffee")
        if throwableCoffeeModel then
            local clonedThrowableCoffee = throwableCoffeeModel:Clone()
            clonedThrowableCoffee.Parent = throwables
            clonedThrowableCoffee.Name = "Molotov"
        end

    elseif Value == "Hexxed Candle" then
        local hexxedCandleModel = viewModels:FindFirstChild("Hexxed Candle")
        if hexxedCandleModel then
            local clonedHexxedCandle = hexxedCandleModel:Clone()
            clonedHexxedCandle.Parent = viewModels
            clonedHexxedCandle.Name = "Molotov"
        end
        
        local throwableHexxedCandleModel = throwables:FindFirstChild("Hexxed Candle")
        if throwableHexxedCandleModel then
            local clonedThrowableHexxedCandle = throwableHexxedCandleModel:Clone()
            clonedThrowableHexxedCandle.Parent = throwables
            clonedThrowableHexxedCandle.Name = "Molotov"
        end

    elseif Value == "Torch" then
        local torchModel = viewModels:FindFirstChild("Torch")
        if torchModel then
            local clonedTorch = torchModel:Clone()
            clonedTorch.Parent = viewModels
            clonedTorch.Name = "Molotov"
        end
        
        local throwableTorchModel = throwables:FindFirstChild("Torch")
        if throwableTorchModel then
            local clonedThrowableTorch = throwableTorchModel:Clone()
            clonedThrowableTorch.Parent = throwables
            clonedThrowableTorch.Name = "Molotov"
        end

    elseif Value == "None" then
        local originalMolotov = viewModels:FindFirstChild("Molotov Original")
        if originalMolotov then
            local clonedOriginal = originalMolotov:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Molotov"
        end
        
        local originalThrowableMolotov = throwables:FindFirstChild("Molotov Original")
        if originalThrowableMolotov then
            local clonedOriginalThrowable = originalThrowableMolotov:Clone()
            clonedOriginalThrowable.Parent = throwables
            clonedOriginalThrowable.Name = "Molotov"
        end
    end
end)



local throwables = player.PlayerScripts.Assets:WaitForChild("Throwables")
local smokeClouds = player.PlayerScripts.Assets.Misc.SmokeClouds

-- Clone the original "Smoke Grenade" model in ViewModels
local smokeGrenadeModel = viewModels:FindFirstChild("Smoke Grenade")
if smokeGrenadeModel then
    local smokeGrenadeOriginal = smokeGrenadeModel:Clone()
    smokeGrenadeOriginal.Name = "Smoke Grenade Original"
    smokeGrenadeOriginal.Parent = viewModels
end

-- Clone the original "Smoke Grenade" model in Throwables
local throwableSmokeGrenadeModel = throwables:FindFirstChild("Smoke Grenade")
if throwableSmokeGrenadeModel then
    local throwableSmokeGrenadeOriginal = throwableSmokeGrenadeModel:Clone()
    throwableSmokeGrenadeOriginal.Name = "Smoke Grenade Original"
    throwableSmokeGrenadeOriginal.Parent = throwables
end

-- Clone the original SmokeClouds.Default
local smokeCloudDefault = smokeClouds:FindFirstChild("Default")
if smokeCloudDefault then
    local smokeCloudOriginal = smokeCloudDefault:Clone()
    smokeCloudOriginal.Name = "Smoke Grenade Original"
    smokeCloudOriginal.Parent = smokeClouds
end

-- Dropdown for selecting Smoke Grenade
local SmokeGrenadeDropdown = Tabs.Skinz:AddDropdown("SmokeGrenadeDropdown", {
    Title = "Smoke Grenade ",
    Values = {"None", "Eyeball", "Balance"},
    Multi = false,
    Default = 1,
})


SmokeGrenadeDropdown:OnChanged(function(Value)
    -- Remove any current Smoke Grenade model from ViewModels
    local currentSmokeGrenade = viewModels:FindFirstChild("Smoke Grenade") or viewModels:FindFirstChild("Smoke Grenade Original")
    if currentSmokeGrenade then
        currentSmokeGrenade:Destroy()
    end

    -- Remove any current Smoke Grenade model from Throwables
    local currentThrowableSmokeGrenade = throwables:FindFirstChild("Smoke Grenade") or throwables:FindFirstChild("Smoke Grenade Original")
    if currentThrowableSmokeGrenade then
        currentThrowableSmokeGrenade:Destroy()
    end

    -- Reset SmokeClouds to the correct type
    local currentSmokeCloud = smokeClouds:FindFirstChild("Default") or smokeClouds:FindFirstChild("Smoke Grenade Original")
    if currentSmokeCloud then
        currentSmokeCloud:Destroy()
    end

    if Value == "Eyeball" then
        -- Clone Eyeball in ViewModels
        local eyeballModel = viewModels:FindFirstChild("Eyeball")
        if eyeballModel then
            local clonedEyeball = eyeballModel:Clone()
            clonedEyeball.Parent = viewModels
            clonedEyeball.Name = "Smoke Grenade"
        end

        -- Clone Eyeball in Throwables
        local throwableEyeballModel = throwables:FindFirstChild("Eyeball")
        if throwableEyeballModel then
            local clonedThrowableEyeball = throwableEyeballModel:Clone()
            clonedThrowableEyeball.Parent = throwables
            clonedThrowableEyeball.Name = "Smoke Grenade"
        end

        -- Set Eyeball in SmokeClouds
        local smokeCloudEyeball = smokeClouds:FindFirstChild("Eyeball")
        if smokeCloudEyeball then
            local clonedSmokeCloudEyeball = smokeCloudEyeball:Clone()
            clonedSmokeCloudEyeball.Parent = smokeClouds
            clonedSmokeCloudEyeball.Name = "Default"
        end

    elseif Value == "Balance" then
        -- Clone Balance in ViewModels
        local balanceModel = viewModels:FindFirstChild("Balance")
        if balanceModel then
            local clonedBalance = balanceModel:Clone()
            clonedBalance.Parent = viewModels
            clonedBalance.Name = "Smoke Grenade"
        end

        -- Clone Balance in Throwables
        local throwableBalanceModel = throwables:FindFirstChild("Balance")
        if throwableBalanceModel then
            local clonedThrowableBalance = throwableBalanceModel:Clone()
            clonedThrowableBalance.Parent = throwables
            clonedThrowableBalance.Name = "Smoke Grenade"
        end

        -- Set Balance in SmokeClouds
        local smokeCloudBalance = smokeClouds:FindFirstChild("Balance")
        if smokeCloudBalance then
            local clonedSmokeCloudBalance = smokeCloudBalance:Clone()
            clonedSmokeCloudBalance.Parent = smokeClouds
            clonedSmokeCloudBalance.Name = "Default"
        end

    elseif Value == "None" then
        -- Restore original Smoke Grenade in ViewModels
        local originalSmokeGrenade = viewModels:FindFirstChild("Smoke Grenade Original")
        if originalSmokeGrenade then
            local clonedOriginal = originalSmokeGrenade:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Smoke Grenade"
        end

        -- Restore original Smoke Grenade in Throwables
        local originalThrowableSmokeGrenade = throwables:FindFirstChild("Smoke Grenade Original")
        if originalThrowableSmokeGrenade then
            local clonedOriginalThrowable = originalThrowableSmokeGrenade:Clone()
            clonedOriginalThrowable.Parent = throwables
            clonedOriginalThrowable.Name = "Smoke Grenade"
        end

        -- Restore Default SmokeCloud
        local originalSmokeCloud = smokeClouds:FindFirstChild("Smoke Grenade Original")
        if originalSmokeCloud then
            local clonedSmokeCloudOriginal = originalSmokeCloud:Clone()
            clonedSmokeCloudOriginal.Parent = smokeClouds
            clonedSmokeCloudOriginal.Name = "Default"
        end
    end
end)







local throwables = player.PlayerScripts.Assets:WaitForChild("Throwables")

-- Clone the original "Flashbang" model in ViewModels
local flashbangModel = viewModels:FindFirstChild("Flashbang")
if flashbangModel then
    local flashbangOriginal = flashbangModel:Clone()
    flashbangOriginal.Name = "Flashbang Original"
    flashbangOriginal.Parent = viewModels
end

-- Clone the original "Flashbang" model in Throwables
local throwableFlashbangModel = throwables:FindFirstChild("Flashbang")
if throwableFlashbangModel then
    local throwableFlashbangOriginal = throwableFlashbangModel:Clone()
    throwableFlashbangOriginal.Name = "Flashbang Original"
    throwableFlashbangOriginal.Parent = throwables
end

-- Dropdown for selecting Flashbang
local FlashbangDropdown = Tabs.Skinz:AddDropdown("FlashbangDropdown", {
    Title = "Flashbang ",
    Values = {"None", "Skullbang", "Disco Ball", "Camera", "Pixel Flashbang"},
    Multi = false,
    Default = 1,
})


FlashbangDropdown:OnChanged(function(Value)
    -- Remove any current Flashbang model from ViewModels
    local currentFlashbang = viewModels:FindFirstChild("Flashbang") or viewModels:FindFirstChild("Flashbang Original")
    if currentFlashbang then
        currentFlashbang:Destroy()
    end

    -- Remove any current Flashbang model from Throwables
    local currentThrowableFlashbang = throwables:FindFirstChild("Flashbang") or throwables:FindFirstChild("Flashbang Original")
    if currentThrowableFlashbang then
        currentThrowableFlashbang:Destroy()
    end

    if Value == "Skullbang" then
        -- Clone Skullbang in ViewModels
        local skullbangModel = viewModels:FindFirstChild("Skullbang")
        if skullbangModel then
            local clonedSkullbang = skullbangModel:Clone()
            clonedSkullbang.Parent = viewModels
            clonedSkullbang.Name = "Flashbang"
        end

        -- Clone Skullbang in Throwables
        local throwableSkullbangModel = throwables:FindFirstChild("Skullbang")
        if throwableSkullbangModel then
            local clonedThrowableSkullbang = throwableSkullbangModel:Clone()
            clonedThrowableSkullbang.Parent = throwables
            clonedThrowableSkullbang.Name = "Flashbang"
        end

    elseif Value == "Disco Ball" then
        -- Clone Disco Ball in ViewModels
        local discoBallModel = viewModels:FindFirstChild("Disco Ball")
        if discoBallModel then
            local clonedDiscoBall = discoBallModel:Clone()
            clonedDiscoBall.Parent = viewModels
            clonedDiscoBall.Name = "Flashbang"
        end

        -- Clone Disco Ball in Throwables
        local throwableDiscoBallModel = throwables:FindFirstChild("Disco Ball")
        if throwableDiscoBallModel then
            local clonedThrowableDiscoBall = throwableDiscoBallModel:Clone()
            clonedThrowableDiscoBall.Parent = throwables
            clonedThrowableDiscoBall.Name = "Flashbang"
        end

    elseif Value == "Camera" then
        -- Clone Camera in ViewModels
        local cameraModel = viewModels:FindFirstChild("Camera")
        if cameraModel then
            local clonedCamera = cameraModel:Clone()
            clonedCamera.Parent = viewModels
            clonedCamera.Name = "Flashbang"
        end

        -- Clone Camera in Throwables
        local throwableCameraModel = throwables:FindFirstChild("Camera")
        if throwableCameraModel then
            local clonedThrowableCamera = throwableCameraModel:Clone()
            clonedThrowableCamera.Parent = throwables
            clonedThrowableCamera.Name = "Flashbang"
        end

    elseif Value == "Pixel Flashbang" then
        -- Clone Pixel Flashbang in ViewModels
        local pixelFlashbangModel = viewModels:FindFirstChild("Pixel Flashbang")
        if pixelFlashbangModel then
            local clonedPixelFlashbang = pixelFlashbangModel:Clone()
            clonedPixelFlashbang.Parent = viewModels
            clonedPixelFlashbang.Name = "Flashbang"
        end

        -- Clone Pixel Flashbang in Throwables
        local throwablePixelFlashbangModel = throwables:FindFirstChild("Pixel Flashbang")
        if throwablePixelFlashbangModel then
            local clonedThrowablePixelFlashbang = throwablePixelFlashbangModel:Clone()
            clonedThrowablePixelFlashbang.Parent = throwables
            clonedThrowablePixelFlashbang.Name = "Flashbang"
        end

    elseif Value == "None" then
        -- Restore original Flashbang in ViewModels
        local originalFlashbang = viewModels:FindFirstChild("Flashbang Original")
        if originalFlashbang then
            local clonedOriginal = originalFlashbang:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Flashbang"
        end

        -- Restore original Flashbang in Throwables
        local originalThrowableFlashbang = throwables:FindFirstChild("Flashbang Original")
        if originalThrowableFlashbang then
            local clonedOriginalThrowable = originalThrowableFlashbang:Clone()
            clonedOriginalThrowable.Parent = throwables
            clonedOriginalThrowable.Name = "Flashbang"
        end
    end
end)



local throwables = player.PlayerScripts.Assets:WaitForChild("Throwables")

-- Clone the original "Scythe" model in ViewModels
local scytheModel = viewModels:FindFirstChild("Scythe")
if scytheModel then
    local scytheOriginal = scytheModel:Clone()
    scytheOriginal.Name = "Scythe Original"
    scytheOriginal.Parent = viewModels
end

-- Clone the original "Scythe" model in Throwables
local throwableScytheModel = throwables:FindFirstChild("Scythe")
if throwableScytheModel then
    local throwableScytheOriginal = throwableScytheModel:Clone()
    throwableScytheOriginal.Name = "Scythe Original"
    throwableScytheOriginal.Parent = throwables
end
local ScytheDropdown = Tabs.Skinz:AddDropdown("ScytheDropdown", {
    Title = "Scythe ",
    Values = {"None", "Keythe", "Anchor"},
    Multi = false,
    Default = 1,
})

ScytheDropdown:OnChanged(function(Value)
    local currentScythe = viewModels:FindFirstChild("Scythe") or viewModels:FindFirstChild("Scythe Original")
    if currentScythe then currentScythe:Destroy() end
    local currentThrowableScythe = throwables:FindFirstChild("Scythe") or throwables:FindFirstChild("Scythe Original")
    if currentThrowableScythe then currentThrowableScythe:Destroy() end

    local models = {
        Keythe = "Keythe", Anchor = "Anchor"
    }

    if models[Value] then
        local model = viewModels:FindFirstChild(models[Value])
        if model then
            local cloned = model:Clone()
            cloned.Parent = viewModels
            cloned.Name = "Scythe"
        end
        local throwableModel = throwables:FindFirstChild(models[Value])
        if throwableModel then
            local clonedThrowable = throwableModel:Clone()
            clonedThrowable.Parent = throwables
            clonedThrowable.Name = "Scythe"
        end
    elseif Value == "None" then
        local originalScythe = viewModels:FindFirstChild("Scythe Original")
        if originalScythe then
            local clonedOriginal = originalScythe:Clone()
            clonedOriginal.Parent = viewModels
            clonedOriginal.Name = "Scythe"
        end
        local originalThrowableScythe = throwables:FindFirstChild("Scythe Original")
        if originalThrowableScythe then
            local clonedOriginalThrowable = originalThrowableScythe:Clone()
            clonedOriginalThrowable.Parent = throwables
            clonedOriginalThrowable.Name = "Scythe"
        end
    end
end)






---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------

local player = game:GetService("Players").LocalPlayer
local username = player.Name
local firstPersonFolder = workspace.ViewModels.FirstPerson

-- Store the original size of LeftArm and RightArm
local originalSizes = {}

-- Function to modify the arms of the model
local function modifyArms(model, toggleState)
    local leftArm = model:FindFirstChild("LeftArm")
    local rightArm = model:FindFirstChild("RightArm")

    if leftArm then
        -- Remove the Mesh from LeftArm if the toggle is on
        if toggleState then
            local leftArmMesh = leftArm:FindFirstChild("Mesh")
            if leftArmMesh then
                leftArmMesh:Destroy()
            end
            -- Set the size of LeftArm to (0, 0, 0)
            leftArm.Size = Vector3.new(0, 0, 0)
        else
            -- If toggle is off, restore the original size
            if not originalSizes[leftArm] then
                originalSizes[leftArm] = leftArm.Size
            end
            leftArm.Size = originalSizes[leftArm]
        end
    end

    if rightArm then
        -- Remove the Mesh from RightArm if the toggle is on
        if toggleState then
            local rightArmMesh = rightArm:FindFirstChild("Mesh")
            if rightArmMesh then
                rightArmMesh:Destroy()
            end
            -- Set the size of RightArm to (0, 0, 0)
            rightArm.Size = Vector3.new(0, 0, 0)
        else
            -- If toggle is off, restore the original size
            if not originalSizes[rightArm] then
                originalSizes[rightArm] = rightArm.Size
            end
            rightArm.Size = originalSizes[rightArm]
        end
    end
end

-- Function to find and modify the model when it changes
local function onModelChanged()
    -- Find the model containing the local player's username
    local modelToModify = nil
    for _, model in pairs(firstPersonFolder:GetChildren()) do
        if model.Name:find(username) then
            modelToModify = model
            break
        end
    end

    -- If a new model is found, modify its arms
    if modelToModify then
        -- Apply the toggle state to modify the arms
        local toggleState = Options.NoHands.Value
        modifyArms(modelToModify, toggleState)
    else
        warn("No model found for player: " .. username)
    end
end

-- Initially check and modify the first model
onModelChanged()

-- Listen for changes in the FirstPerson folder and apply changes to the new model
firstPersonFolder.ChildAdded:Connect(onModelChanged)
firstPersonFolder.ChildRemoved:Connect(onModelChanged)

-- Toggle implementation
local Toggle = Tabs.ModTab:AddToggle("NoHands", {Title = "Ghost Hands", Default = false})

Toggle:OnChanged(function()
    print("Toggle changed:", Options.NoHands.Value)
    if textLabels and textLabels.ghosttxt then
        textLabels.ghosttxt.Visible = Toggle.Value
        fadeText(textLabels.ghosttxt, Toggle.Value)
        alignTextLabels()
    end

    -- Recheck the model and apply the toggle state to the arms
    onModelChanged()
end)


local RunService = game:GetService("RunService")
local firstPerson = workspace.ViewModels.FirstPerson

-- Table to store parts for the effect
local affectedParts = {}

-- Function to apply static transparency to MeshParts
local function applyStaticTransparency()
    -- Clear the previous parts to avoid applying effects to the old model
    affectedParts = {}

    -- Loop through all descendants in the FirstPerson model
    for _, descendant in ipairs(firstPerson:GetDescendants()) do
        -- Check if the descendant is a Model and contains an ItemVisual with a Body part
        local itemVisual = descendant:FindFirstChild("ItemVisual")
        if descendant:IsA("Model") and itemVisual then
            local body = itemVisual:FindFirstChild("Body")
            -- Check if the Body part exists
            if body then
                -- Loop through all children in the Body model
                for _, part in ipairs(body:GetChildren()) do
                    -- Check if the child is a MeshPart
                    if part:IsA("MeshPart") then
                        -- Set the static transparency value
                        part.Transparency = 0.6
                        table.insert(affectedParts, part)  -- Store the part for reference
                    end
                end
            end
        end
    end
end

-- Function to remove static transparency from MeshParts
local function removeStaticTransparency()
    for _, part in ipairs(affectedParts) do
        part.Transparency = 0  -- Reset transparency back to 0
    end
end

-- Add a Toggle to enable/disable the effect
local Toggle = Tabs.ModTab:AddToggle("TransparencyToggle", {
    Title = "Material Weapon",  -- Title of the toggle
    Default = false,            -- Default state (false means the effect is off by default)
})

Toggle:OnChanged(function()
    if Toggle.Value then
        applyStaticTransparency()  -- Apply the static transparency if the toggle is on
    else
        removeStaticTransparency()  -- Remove the static transparency if the toggle is off
    end
end)

-- Function to monitor and reapply static transparency if the model changes
local function monitorModelChange()
    local lastModel = nil
    -- Monitor for any changes in the FirstPerson model
    RunService.Heartbeat:Connect(function()
        local currentModel = firstPerson:FindFirstChildOfClass("Model")
        if currentModel ~= lastModel then
            lastModel = currentModel
            -- Reapply static transparency if the toggle is on
            if Toggle.Value then
                applyStaticTransparency()  -- Reapply the static transparency to the new model
            end
        end
    end)
end

-- Start monitoring the model changes after Toggle is initialized
monitorModelChange()


local player = game:GetService("Players").LocalPlayer
local miscAssets = player.PlayerScripts.Assets:WaitForChild("Misc")
local muzzleFlashes = miscAssets:WaitForChild("MuzzleFlashes")

-- Clone the original "Muzzle Flashes" model
local defaultMuzzleFlash = muzzleFlashes:FindFirstChild("Default")
if defaultMuzzleFlash then
    local muzzleFlashOriginal = defaultMuzzleFlash:Clone()
    muzzleFlashOriginal.Name = "Muzzle Flash Original"
    muzzleFlashOriginal.Parent = muzzleFlashes
end

-- Dropdown for selecting Muzzle Flash
local MuzzleFlashDropdown = Tabs.ModTab:AddDropdown("MuzzleFlashDropdown", {
    Title = "Fire Effect [Bullet]",
    Values = {
        "None", "Aqua Burst", "Demon Shorty", 
        "Demon Uzi", "Dynamite Gun", "Electro Rifle", 
        "Exogun", "Singularity", "Wondergun"
    },
    Multi = false,
    Default = 1,
})


MuzzleFlashDropdown:OnChanged(function(Value)
    -- Remove any current Muzzle Flash model
    local currentMuzzleFlash = muzzleFlashes:FindFirstChild("Default") or muzzleFlashes:FindFirstChild("Muzzle Flash Original")
    if currentMuzzleFlash then
        currentMuzzleFlash:Destroy()
    end

    if Value ~= "None" then
        -- Clone selected Muzzle Flash model
        textLabels.b_effect.Visible = true
        fadeText(textLabels.b_effect, true)
        alignTextLabels() 
        local selectedMuzzleFlash = muzzleFlashes:FindFirstChild(Value)
        
        if selectedMuzzleFlash then
            local clonedMuzzleFlash = selectedMuzzleFlash:Clone()
            clonedMuzzleFlash.Parent = muzzleFlashes
            clonedMuzzleFlash.Name = "Default"
        end

    else
        -- Restore the original Muzzle Flash model
        local originalMuzzleFlash = muzzleFlashes:FindFirstChild("Muzzle Flash Original")
        textLabels.b_effect.Visible = false
        fadeText(textLabels.b_effect, false)
        alignTextLabels() 
        if originalMuzzleFlash then
            local clonedOriginal = originalMuzzleFlash:Clone()
            clonedOriginal.Parent = muzzleFlashes
            clonedOriginal.Name = "Default"
        end
    end
end)




local miscAssets = player.PlayerScripts.Assets:WaitForChild("Misc")

-- References to BurningEffects and FireHitboxes folders
local burningEffects = miscAssets:WaitForChild("BurningEffects")
local fireHitboxes = miscAssets:WaitForChild("FireHitboxes")

-- Backup original Default models
local burningEffectDefault = burningEffects:FindFirstChild("Default")
if burningEffectDefault then
    local burningEffectOriginal = burningEffectDefault:Clone()
    burningEffectOriginal.Name = "Burning Effect Original"
    burningEffectOriginal.Parent = burningEffects
end

local fireHitboxDefault = fireHitboxes:FindFirstChild("Default")
if fireHitboxDefault then
    local fireHitboxOriginal = fireHitboxDefault:Clone()
    fireHitboxOriginal.Name = "Fire Hitbox Original"
    fireHitboxOriginal.Parent = fireHitboxes
end

-- Dropdown for selecting Burning Effect and Fire Hitbox
local FireEffectDropdown = Tabs.ModTab:AddDropdown("FireEffectDropdown", {
    Title = "Moltov Fire ",
    Values = {
        "None", "Hexxed Candle [Purple]"
    },
    Multi = false,
    Default = 1,
})


FireEffectDropdown:OnChanged(function(Value)
    -- Remove current Default models
    local currentBurningEffect = burningEffects:FindFirstChild("Default") or burningEffects:FindFirstChild("Burning Effect Original")
    local currentFireHitbox = fireHitboxes:FindFirstChild("Default") or fireHitboxes:FindFirstChild("Fire Hitbox Original")

    if currentBurningEffect then
        currentBurningEffect:Destroy()
    end
    if currentFireHitbox then
        currentFireHitbox:Destroy()
    end

    if Value == "Hexxed Candle" then
        -- Set Hexxed Candle models as Default
        local hexxedBurningEffect = burningEffects:FindFirstChild("Hexxed Candle")
        local hexxedFireHitbox = fireHitboxes:FindFirstChild("Hexxed Candle")

        if hexxedBurningEffect then
            local clonedBurningEffect = hexxedBurningEffect:Clone()
            clonedBurningEffect.Name = "Default"
            clonedBurningEffect.Parent = burningEffects
        end
        if hexxedFireHitbox then
            local clonedFireHitbox = hexxedFireHitbox:Clone()
            clonedFireHitbox.Name = "Default"
            clonedFireHitbox.Parent = fireHitboxes
        end
    else
        -- Restore the original Default models
        local originalBurningEffect = burningEffects:FindFirstChild("Burning Effect Original")
        local originalFireHitbox = fireHitboxes:FindFirstChild("Fire Hitbox Original")

        if originalBurningEffect then
            local clonedOriginal = originalBurningEffect:Clone()
            clonedOriginal.Name = "Default"
            clonedOriginal.Parent = burningEffects
        end
        if originalFireHitbox then
            local clonedOriginal = originalFireHitbox:Clone()
            clonedOriginal.Name = "Default"
            clonedOriginal.Parent = fireHitboxes
        end
    end
end)



local player = game:GetService("Players").LocalPlayer
local miscAssets = player.PlayerScripts.Assets:WaitForChild("LightingProfiles")

-- Backup original Default Lighting Profile
local defaultLightingProfile = miscAssets:FindFirstChild("Default")
if defaultLightingProfile then
    local defaultProfileOriginal = defaultLightingProfile:Clone()
    defaultProfileOriginal.Name = "Lighting Profile Original"
    defaultProfileOriginal.Parent = miscAssets
end
-- Custom names for dropdown options
local lightingProfiles = {
    None = "None",
    Graveyard = "Scary NightLight",
    GraveyardMatchPoint = "Unfair",
    LobbyHalloween = "Ocen",
    Station = "Hellfire"
}

-- Dropdown for selecting Lighting Profile
local LightingProfileDropdown = Tabs.ModTab:AddDropdown("LightingProfileDropdown", {
    Title = "Atmosphere",
    Values = {
        lightingProfiles.None, lightingProfiles.Graveyard, lightingProfiles.GraveyardMatchPoint,
        lightingProfiles.LobbyHalloween, lightingProfiles.Station
    },
    Multi = false,
    Default = 1,
})

LightingProfileDropdown:SetValue(lightingProfiles.None)

LightingProfileDropdown:OnChanged(function(Value)
    -- Find the corresponding Lighting Profile key
    local selectedKey
    for key, name in pairs(lightingProfiles) do
        if name == Value then
            selectedKey = key
            break
        end
    end

    -- Remove current Lighting Profile
    local currentLightingProfile = miscAssets:FindFirstChild("Default") or miscAssets:FindFirstChild("Lighting Profile Original")
    if currentLightingProfile then
        currentLightingProfile:Destroy()
    end

    -- Update visibility of atmosphere label based on selection
    local showText = selectedKey and selectedKey ~= "None"
    textLabels.atmosphere.Visible = showText
    fadeText(textLabels.atmosphere, showText)
    alignTextLabels()

    -- Apply the selected Lighting Profile or restore original
    if showText then
        -- Clone selected Lighting Profile model
        local selectedLightingProfile = miscAssets:FindFirstChild(selectedKey)
        if selectedLightingProfile then
            local clonedLightingProfile = selectedLightingProfile:Clone()
            clonedLightingProfile.Parent = miscAssets
            clonedLightingProfile.Name = "Default"
        end
    else
        -- Restore the original Lighting Profile
        local originalLightingProfile = miscAssets:FindFirstChild("Lighting Profile Original")
        if originalLightingProfile then
            local clonedOriginal = originalLightingProfile:Clone()
            clonedOriginal.Parent = miscAssets
            clonedOriginal.Name = "Default"
        end
    end
end)


local FlshBangOffToggle = Tabs.Essential:AddToggle("FlshBangOffToggle", {Title = "Hide Flash", Description = "Hide flashbang in game.", Default = false })
local hasBeenToggledOn = false

FlshBangOffToggle:OnChanged(function()
    if Options.FlshBangOffToggle.Value then
        -- Toggle turned on: Remove the FlashbangEffect and mark as toggled on
        hasBeenToggledOn = true
        local player = game["Players - Client"].LocalPlayer
        local flashbangEffect = player.PlayerScripts.Assets.Misc:FindFirstChild("FlashbangEffect")
        if flashbangEffect then
            flashbangEffect:Destroy()
        end
    else
        -- Toggle turned off after being turned on: Show dialog
        if hasBeenToggledOn then
            Window:Dialog({
                Title = "Warning",
                Content = "To get the flashbang working again, rejoin the game. And also save the config if youre using autoload.",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("ok.")
                        end
                    }
                }
            })
        end
    end
end)


-- Import RunService for the moving and pulsing effects
local RunService = game:GetService("RunService")

Tabs.ModTab:AddButton({
    Title = "Apply Static Color",
    Description = "Applies a random color weapon.",
    Callback = function()
        -- Access the FirstPerson model
        local firstPerson = workspace.ViewModels.FirstPerson

        -- Function to generate a random color
        local function getRandomColor()
            return Color3.new(math.random(), math.random(), math.random())
        end

        -- Loop through all descendants in the FirstPerson model
        for _, descendant in ipairs(firstPerson:GetDescendants()) do
            -- Check if the descendant is a Model and contains a Body part
            if descendant:IsA("Model") and descendant:FindFirstChild("ItemVisual") then
                local body = descendant.ItemVisual.Body
                -- Check if the Body part exists
                if body then
                    -- Loop through all children in the Body model
                    for _, part in ipairs(body:GetChildren()) do
                        -- Check if the child is a MeshPart
                        if part:IsA("MeshPart") then
                            -- Assign a random color to the MeshPart
                            part.Color = getRandomColor()
                        end
                    end
                end
            end
        end
    end
})


Tabs.ModTab:AddButton({
    Title = "Animated Material Weapon",
    Description = "Adds animated effects to weapon.",
    Callback = function()
        -- Access the FirstPerson model
        local firstPerson = workspace.ViewModels.FirstPerson

        -- Table to store parts for continuous effects
        local animatedParts = {}

        -- Loop through all descendants in the FirstPerson model
        for _, descendant in ipairs(firstPerson:GetDescendants()) do
            -- Check if the descendant is a Model and contains a Body part
            if descendant:IsA("Model") and descendant:FindFirstChild("ItemVisual") then
                local body = descendant.ItemVisual.Body
                -- Check if the Body part exists
                if body then
                    -- Loop through all children in the Body model
                    for _, part in ipairs(body:GetChildren()) do
                        -- Check if the child is a MeshPart
                        if part:IsA("MeshPart") then
                            -- Set initial properties for semi-transparent look
                            part.Transparency = 0.4  -- Start transparency in the middle of the pulse range
                            table.insert(animatedParts, part)  -- Store for animation
                        end
                    end
                end
            end
        end

        -- Function for color cycling
        local function getColorCycle(t)
            return Color3.fromHSV((t % 1), 0.5, 1)
        end

        -- Run animation with heartbeat
        RunService.Heartbeat:Connect(function(deltaTime)
            local time = tick()
            for _, part in ipairs(animatedParts) do
                -- Color cycling effect
                part.Color = getColorCycle(time * 0.5)

                -- Pulsing transparency effect between 0.3 and 0.5
                part.Transparency = 0.4 + 0.1 * math.sin(time * 2)

                -- Slow rotation
                part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(1), 0)
            end
        end)
    end
})

local ResolutionSlider = Tabs.ModTab:AddSlider("ResolutionSlider", {
    Title = "Resolution Slider",
    Description = "Adjust the resolution value",
    Default = 100,  -- Default to 100 which represents 1
    Min = 10,      -- Minimum value is 10 which represents 0.1
    Max = 140,     -- Maximum value is 100 which represents 1
    Rounding = 1,  -- Rounding is set to 1 to handle the integer representation
    Callback = function(Value)
        -- Convert the slider value to the corresponding resolution value
        local roundedValue = math.floor(Value / 1 + 0.5)  -- Round to the nearest integer
        getgenv().ResolutionValue = roundedValue / 100 
    end
})

local Camera = workspace.CurrentCamera
if getgenv().CameraModifier == nil then
    game:GetService("RunService").RenderStepped:Connect(
        function()
            Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().ResolutionValue, 0, 0, 0, 1)
        end
    )
end
getgenv().CameraModifier = true



local Toggle = Tabs.ModTab:AddToggle("HitMarker1", {Title = "Show Hitmarker", Description = "Show mark where bullet hits.", Default = false})

Toggle:OnChanged(function()
    local part = game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc.ImpactMarkerBullet

    if part then
        if Toggle.Value then
            part.Color = Colorpicker.Value
            part.Transparency = 0  -- Make it fully visible
        else
            part.Transparency = 1
        end
        
        print("Toggle changed:", Toggle.Value)
        print("Current color:", Colorpicker.Value)
    else
        print("ImpactMarkerBullet part not found!")
    end

    if textLabels and textLabels.textLabel5 then
        textLabels.textLabel5.Visible = Toggle.Value
        fadeText(textLabels.textLabel5, Toggle.Value)
        alignTextLabels()
    end
end)


local Input = Tabs.ModTab:AddInput("HitMarkInput", {
    Title = "Hit Markar",
    Description = "Leave it empty to hide the marker.",
    Default = "rbxassetid://13862670077",
    Placeholder = "rbxassetid://89024621697883",
    Numeric = false, -- Allows non-numeric values
    Finished = false, -- Calls callback every time the value changes
    Callback = function(Value)
        print("Input changed:", Value)
        -- Access Players - Client and update the texture directly in ImpactMarkerBullet.Decal
        game["Players - Client"].LocalPlayer.PlayerScripts.Assets.Misc.ImpactMarkerBullet.Decal.Texture = Value
    end
})

Input:OnChanged(function()
    print("Input updated:", Input.Value)
end)


local Colorpicker = Tabs.ModTab:AddColorpicker("HitMarkerColor", {
    Title = "Choose hitmarker",
    Default = Color3.fromRGB(255, 255, 255)
})



Colorpicker:OnChanged(function()
    local part = game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc.ImpactMarkerBullet
    
    -- Check if the part exists before changing the color
    if part and Toggle.Value then
        -- Change the color of the part to the selected color if the toggle is on
        part.Color = Colorpicker.Value
        print("Colorpicker changed:", Colorpicker.Value)
    end
end)











Fluent:Notify({
    Title = "All Modules Loaded",
    Content = "Module Loaded [18/18]",
    Duration = 5
})



---------------------------------------------------------------------------------------------------------------------------------



end


-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("P3btManager")
SaveManager:SetFolder("P3bt/rivals")

InterfaceManager:BuildInterfaceSection(Tabs.Wlc)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)



-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()

aimbot.CustomParts = {}

for _, target in pairs(game["Workspace - Client"]:GetChildren()) do
    if target:IsA("Model") and target:FindFirstChild("HumanoidRootPart") then
        table.insert(aimbot.CustomParts, target.HumanoidRootPart)
    end
end

if #aimbot.CustomParts == 0 then
    print("No valid targets left")
end

