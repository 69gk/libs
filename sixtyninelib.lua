-- Gui to Lua
-- Version: 3.2

-- Instances:

local TextButton = Instance.new("TextButton")

local Library = {}


function Library:CreateMain(title)
	local sixtyninelib = Instance.new("ScreenGui")
	local mainui = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UICorner = Instance.new("UICorner")
	local MainGradient = Instance.new("UIGradient")	
	local tabopen = Instance.new("TextButton")
	local TabGradient = Instance.new("UIGradient")
	local libtitle = Instance.new("TextLabel")
	local tabopen = Instance.new("TextButton")
	local TabGradient = Instance.new("UIGradient")
	local tablist = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	
	sixtyninelib.Name = "sixtyninelib"
	sixtyninelib.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	sixtyninelib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	mainui.Name = "mainui"
	mainui.Parent = sixtyninelib
	mainui.Active = true
	mainui.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	mainui.BorderColor3 = Color3.fromRGB(255, 0, 0)
	mainui.Position = UDim2.new(0.280843467, 0, 0.254878044, 0)
	mainui.Selectable = true
	mainui.Size = UDim2.new(0, 607, 0, 401)
	mainui.SizeConstraint = Enum.SizeConstraint.RelativeXX

	UIListLayout.Parent = mainui
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	UICorner.Parent = mainui

	MainGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(158, 61, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(2, 251, 255))}
	MainGradient.Rotation = -52
	MainGradient.Name = "MainGradient"
	MainGradient.Parent = mainui
	
	libtitle.Name = "libtitle"
	libtitle.Parent = mainui
	libtitle.Active = true
	libtitle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	libtitle.BackgroundTransparency = 0.800
	libtitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	libtitle.BorderSizePixel = 0
	libtitle.Size = UDim2.new(0, 607, 0, 50)
	libtitle.Font = Enum.Font.GothamBold
	libtitle.Text = title
	libtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	libtitle.TextSize = 25.000
	libtitle.TextWrapped = true

	tabopen.Name = "tabopen"
	tabopen.Parent = libtitle
	tabopen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tabopen.BackgroundTransparency = 1.000
	tabopen.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tabopen.BorderSizePixel = 0
	tabopen.Position = UDim2.new(0.00975521747, 0, -0.174462274, 0)
	tabopen.Rotation = 90.000
	tabopen.Selectable = false
	tabopen.Size = UDim2.new(0, 56, 0, 72)
	tabopen.Font = Enum.Font.SourceSans
	tabopen.Text = "..."
	tabopen.TextColor3 = Color3.fromRGB(255, 255, 255)
	tabopen.TextScaled = true
	tabopen.TextSize = 14.000
	tabopen.TextWrapped = true

	TabGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
	TabGradient.Rotation = -52
	TabGradient.Name = "TabGradient"
	TabGradient.Parent = tabopen
	
	tablist.Name = "tablist"
	tablist.Parent = mainui
	tablist.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	tablist.BorderColor3 = Color3.fromRGB(45, 45, 45)
	tablist.BorderSizePixel = 0
	tablist.Position = UDim2.new(0, 0, 0.124688283, 0)
	tablist.Size = UDim2.new(0, 128, 0, 351)
	tablist.Visible = false

	UICorner_2.CornerRadius = UDim.new(0, 4)
	UICorner_2.Parent = tablist

	
	local function TabListScript() -- tabopen.scriptopenanimation 
		local script = Instance.new('LocalScript', tabopen)

		local button = script.Parent
		local frame = script.Parent.Parent.Parent.tablist
		local animationDuration = 1
		local targetTransparency = 0.8

		local function animateFrame()
			frame.Visible = true
			local startTime = tick()

			while true do
				local currentTime = tick()
				local elapsedTime = currentTime - startTime
				local progress = elapsedTime / animationDuration

				if progress >= 0.8 then
					frame.Transparency = targetTransparency
					break
				else
					frame.Transparency = 0.8 - (0.8 - targetTransparency) * progress
				end

				wait(0.03)
			end
		end

		button.MouseButton1Click:Connect(animateFrame)

	end
	coroutine.wrap(TabListScript)()
	
	local sixtylib = {}
	
	function sixtylib:Button(name)
		TextButton.Parent = tablist
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.BackgroundTransparency = 1.000
		TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 128, 0, 50)
		TextButton.Font = Enum.Font.GothamBold
		TextButton.Text = name
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 23.000
		TextButton.TextWrapped = true
	end
	
	return sixtylib;
end

return Library;
