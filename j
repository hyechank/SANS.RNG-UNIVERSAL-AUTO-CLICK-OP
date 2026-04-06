local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Max Speed Auto Click",
   LoadingTitle = "Auto Click",
   LoadingSubtitle = "Test",
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Main", 4483362458)

local AutoClick = false
local RunService = game:GetService("RunService")

Tab:CreateToggle({
   Name = "MAX Auto Click",
   CurrentValue = false,
   Callback = function(Value)
      AutoClick = Value
   end
})

RunService.Heartbeat:Connect(function()
	if not AutoClick then return end
	
	for _,v in ipairs(workspace:GetDescendants()) do
		if v:IsA("ClickDetector") then
			pcall(function()
				fireclickdetector(v)
			end)
		end
	end
end)
