local Notifications = Instance.new("ScreenGui")
local UIListLayout = Instance.new("UIListLayout")
local notificationLabel = Instance.new("Frame")

Notifications.Name = "Notifications"
Notifications.Parent = game:GetService("CoreGui")
Notifications.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

notificationLabel.Name = "notificationLabel"
notificationLabel.Parent = Notifications
notificationLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notificationLabel.BackgroundTransparency = 1.000
notificationLabel.Position = UDim2.new(0.919472933, 0, 0.547540963, 0)
notificationLabel.Rotation = 180.000
notificationLabel.Size = UDim2.new(0, 100, 0, 268)

UIListLayout.Parent = notificationLabel
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.00499999989, 0)

local function notify(stringtext)
coroutine.wrap(function()
    local extraframe = Instance.new("Frame")
    local main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local icon = Instance.new("ImageLabel")
    local title = Instance.new("TextLabel")
    local text = Instance.new("TextLabel")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

    extraframe.Name = "extraframe"
    extraframe.Parent = notificationLabel
    extraframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    extraframe.BackgroundTransparency = 1.000
    extraframe.Position = UDim2.new(-1.22520995, 0, 0.738084257, 0)
    extraframe.Rotation = 90.000
    extraframe.Size = UDim2.new(2.22521114, 0, 0.243258953, 0)

    main.Name = "main"
    main.Parent = extraframe
    main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    main.Rotation = 180.000
    main.Size = UDim2.new(1.02584994, 0, 1.00000036, 0)
    main.Position = UDim2.new(-1.1,0,0,0)

    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = main

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(22, 22, 22))}
    UIGradient.Parent = main

    icon.Name = "icon"
    icon.Parent = main
    icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon.BackgroundTransparency = 1.000
    icon.Position = UDim2.new(0.024502717, 0, 0.112941802, 0)
    icon.Size = UDim2.new(0.0830039531, 0, 0.295774639, 0)
    icon.Image = "http://www.roblox.com/asset/?id=6031079158"

    title.Name = "title"
    title.Parent = main
    title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1.000
    title.Position = UDim2.new(0.134387359, 0, 0.112941802, 0)
    title.Size = UDim2.new(0.790513813, 0, 0.295774639, 0)
    title.Font = Enum.Font.GothamBold
    title.Text = "Auto Report"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 14.000
    title.TextXAlignment = Enum.TextXAlignment.Left

    text.Name = "text"
    text.Parent = main
    text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    text.TextWrapped = true
    text.BackgroundTransparency = 1.000
    text.Position = UDim2.new(0.0276679844, 0, 0.499203116, 0)
    text.Size = UDim2.new(0.944664061, 0, 0.408450693, 0)
    text.Font = Enum.Font.GothamMedium
    text.Text = stringtext
    text.TextColor3 = Color3.fromRGB(214, 214, 214)
    text.TextSize = 11.000
    text.TextXAlignment = Enum.TextXAlignment.Left
    text.TextYAlignment = Enum.TextYAlignment.Top

    UIAspectRatioConstraint.Parent = main
    UIAspectRatioConstraint.AspectRatio = 3.563

    local tween1, tween2 = game:GetService("TweenService"):Create(main, TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Position = UDim2.new(0,0,0,0)}), game:GetService("TweenService"):Create(main, TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Position = UDim2.new(-1.1,0,0,0)})
    tween1:Play()
    tween1.Completed:Wait()
    task.wait(3)
    tween2:Play()
    tween2.Completed:Wait()
    extraframe:Destroy()
end)()
task.wait(0.5)
end

local function findText(msg, textsToFind)
	for i,v in pairs(textsToFind) do
		if string.find(msg:lower(), v) then
			return v
		end
	end
end

local whitelisted = {
    "hadi10041"
}

notify("Loading Auto Report")
task.wait(0.75)
local deffov = workspace.CurrentCamera.FieldOfView
local smallerfov = workspace.CurrentCamera.FieldOfView - 12
local tween3, tween4 = game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(1.25, Enum.EasingStyle.Quart), {FieldOfView = smallerfov}), game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {FieldOfView = deffov})
tween3:Play()
tween3.Completed:Wait()
task.wait(2)
tween4:Play()
notify("Auto Report Loaded!")

local function AutoReport(target)
    local plr = target
    if plr == game.Players.LocalPlayer then return end
    if table.find(whitelisted, plr.Name) then return end


    plr.Chatted:Connect(function(msg)
        if plr ~= nil and v ~= game.Players.LocalPlayer then
            if findText(msg, {"script", "exploiter", "scripter", "hacker"}) then
                game.Players:ReportAbuse(plr, "Cheating/Exploiting", "")
                notify("Reported "..plr.DisplayName.." for hacking.")
            elseif findText(msg, {"hacks", "exploits"}) then
                game.Players:ReportAbuse(plr, "Scamming", "Scamming and exploiting")
                notify("Reported "..plr.DisplayName.." for scamming.")
            elseif findText(msg, {"L", "bozo", "clowwn", "trash", "noob", "bad", "haha", "gay", "kid", "poop", "dummy", "nigga", "black", "negro"})then
                game.Players:ReportAbuse(plr, "Bullying", "")
                notify("Reported "..plr.DisplayName.." for bullying.")
            elseif findText(msg, {"hot", "papi", "daddy", "do me"})then
                game.Players:ReportAbuse(plr, "Dating", "")
                notify("Reported "..plr.DisplayName.." for online dating")
            end
        end
    end)
end

for i,v in next, game.Players:GetPlayers() do
   coroutine.wrap(AutoReport)(v)
end
game.Players.PlayerAdded:Connect(function(v)
    coroutine.wrap(AutoReport)(v)
end)