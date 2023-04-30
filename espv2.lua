-- ESP

-- GUI

-- Orion Lib


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()


local Window = OrionLib:MakeWindow({Name = "ESP", HidePremium = false, SaveConfig = true, ConfigFolder = "ESP"})

OrionLib:MakeNotification({
	Name = "Succesfully Executed",
	Content = "executed?",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]


MainTab:AddButton({
	Name = "Execute esp",
	Callback = function()
      		print("Succesfully")
              local lplr = game.Players.LocalPlayer
              local camera = game:GetService("Workspace").CurrentCamera
              local CurrentCamera = workspace.CurrentCamera
              local worldToViewportPoint = CurrentCamera.worldToViewportPoint
              
              local HeadOff = Vector3.new(0, 0.5, 0)
              local LegOff = Vector3.new(0,3,0)
              
              for i,v in pairs(game.Players:GetChildren()) do 
                  local BoxOutline = Drawing.new("Square")
                  BoxOutline.Visible = false
                  BoxOutline.Color = Color3.new(0,0,0)
                  BoxOutline.Thickness = 3
                  BoxOutline.Transparency = 1
                  BoxOutline.Filled = false
              
                  local Box = Drawing.new("Square")
                  Box.Visible = false
                  Box.Color = Color3.new(1,1,1)
                  Box.Thickness = 1
                  Box.Transparency = 1
                  Box.Filled = false
              
                  function boxesp()
                      game:GetService("RunService").RenderStepped:Connect(function ()
                          if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                              local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
              
                              local RootPart = v.Character.HumanoidRootPart
                              local Head = v.Character.Head
                              local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                              local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                              local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
              
              
                              if onScreen then
                                  BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                  BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                                  BoxOutline.Visible = true
              
                                  Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                  Box.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                                  Box.Visible = true
              
              
                                  if v.TeamColor == lplr.TeamColor then
                                      Box.Color = Color3.new(0,1,0)
                                  else
                                      Box.Color = Color3.new(1,0,0)
                                  end
              
                                  
                              else
                                  BoxOutline.Visible = false
                                  Box.Visible = false
                              end
                          else
                              BoxOutline.Visible = false
                              Box.Visible = false
                          end
                      end)
                  end
                  coroutine.wrap(boxesp)()
              end
              
              
              
              game.Players.PlayerAdded:Connect(function(v)
                  local BoxOutline = Drawing.new("Square")
                  BoxOutline.Visible = false
                  BoxOutline.Color = Color3.new(0,0,0)
                  BoxOutline.Thickness = 3
                  BoxOutline.Transparency = 1
                  BoxOutline.Filled = false
              
                  local Box = Drawing.new("Square")
                  Box.Visible = false
                  Box.Color = Color3.new(1,1,1)
                  Box.Thickness = 1
                  Box.Transparency = 1
                  Box.Filled = false
              
                  function boxesp()
                      game:GetService("RunService").RenderStepped:Connect(function ()
                          if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                              local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
              
                              local RootPart = v.Character.HumanoidRootPart
                              local Head = v.Character.Head
                              local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                              local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                              local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
              
              
                              if onScreen then
                                  BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                  BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                                  BoxOutline.Visible = true
              
                                  Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                                  Box.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                                  Box.Visible = true
              
                                  if v.TeamColor == lplr.TeamColor then
                                      Box.Color = Color3.new(0,1,0)
                                  else
                                      Box.Color = Color3.new(1,0,0)
                                  end
              
              
              
                              else
                                  BoxOutline.Visible = false
                                  Box.Visible = false
                              end
                          else
                              BoxOutline.Visible = false
                              Box.Visible = false
                          end
                      end)
                  end
                  coroutine.wrap(boxesp)()
              end)

  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]



-- The actual ESP code
--[[
local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

for i,v in pairs(game.Players:GetChildren()) do 
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function ()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)


                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    Box.Visible = true


                    if v.TeamColor == lplr.TeamColor then
                        Box.Color = Color3.new(0,1,0)
                    else
                        Box.Color = Color3.new(1,0,0)
                    end

                    
                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end



game.Players.PlayerAdded:Connect(function(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function ()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)


                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    Box.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        Box.Color = Color3.new(0,1,0)
                    else
                        Box.Color = Color3.new(1,0,0)
                    end



                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)

]]


