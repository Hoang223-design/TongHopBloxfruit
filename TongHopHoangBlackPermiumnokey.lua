loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoang223-design/GuiHoang01/refs/heads/main/GuiHoang02.lua"))()
  
local Window = MakeWindow({
    Hub = {
        Title = "HoàngBlackHub Beta v0.3 Beta ( permium admin script ☕)",
        Animation = "Cre: NgọcHoàng2010"
    },
    Key = {
        KeySystem = false,
        Title = "Nhập key để tiếp tục🌚🥵",
        Description = "Created By: Huỳnh Ngọc Hoàng👑",
        KeyLink = "https://i.pinimg.com/736x/52/22/09/5222095c6fb6e2cfbe52c83c620a171c.jpg",
        Keys = {""},
        Notifi = {
            Notifications = true,
            CorrectKey = "Script Đang Chạy🥵!",
            Incorrectkey = "Key không tồn tại🥵",
            CopyKeyLink = "Đã sao chép, hãy đọc tin nhắn bạn vừa copy🌚"
        }
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=128504363561748",
    Size = {50, 50},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

local Tab1o = MakeTab({Name = "🎹 Nhạc"})
local Tab2o = MakeTab({Name = "🏠 Main"})
local Tab3o = MakeTab({Name = "🍎 Trái cây"})
local Tab4o = MakeTab({Name = "⚔️ PvP"})
local Tab5o = MakeTab({Name = "🌏 Khác"})
local Tab6o = MakeTab({Name = "🛸 Dịch Chuyển"})
local Tab7o = MakeTab({Name = "🌐 Server"})
local Tab8o = MakeTab({Name = "💎 Admin Premium"})


-- Tap nhạc
AddToggle(Tab1o, {
    Name = "Chipi chipi chapa🐱",
    Default = false,
    Callback = function(state)
        if currentSound and currentSound ~= nil then
            currentSound:Stop()
            currentSound = nil
        end
        
        if state then
            local sound = Instance.new("Sound")
            sound.Name = "ChipiMusic"
            sound.Parent = game.Workspace
            sound.SoundId = "rbxassetid://16190783444"
            sound.Volume = 1.5
            sound.Looped = true
            sound:Play()
            currentSound = sound
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo!",
                Text = "Đã bật nhạc Chipi chipi chapa😼!",
                Duration = 5
            })
        end
    end
})

AddToggle(Tab1o, {
    Name = "Money🤑Rain (Phonk)",
    Default = false,
    Callback = function(state)
        if currentSound and currentSound ~= nil then
            currentSound:Stop()
            currentSound = nil
        end
        
        if state then
            local sound = Instance.new("Sound")
            sound.Name = "MoneyRainMusic"
            sound.Parent = game.Workspace
            sound.SoundId = "rbxassetid://9046862941"
            sound.Volume = 2
            sound.Looped = true
            sound:Play()
            currentSound = sound
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "🥵Đã bật nhạc Money Rain🥵!",
                Duration = 5
            })
        end
    end
})

-- Tab Main
AddButton(Tab2o, {
    Name = "Redz Hub",
    Callback = function()
        local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
    end
})

AddButton(Tab2o, {
    Name = "Hoang-Tiger-Hub v0.08",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoang223-design/Hoang-Dark-Blox-fruit/refs/heads/main/HoangDark-BF.lua"))()
    end
})

AddButton(Tab2o, {
    Name = "Hoang-Tiger-Hub FaiFai v0.1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoang223-design/BF-Tigerfifai/refs/heads/main/HoangBlackDepTraiVaiCaNho.lua"))()
    end
})

AddButton(Tab2o, {
    Name = "W-azure v2",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end
})

AddButton(Tab2o, {
    Name = "HoHo",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

AddButton(Tab2o, {
    Name = "ASTRAL",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
    end
})

AddButton(Tab2o, {
    Name = "Xero",
    Callback = function()
        getgenv().Team = "Marines"
        getgenv().Hide_Menu = false
        getgenv().Auto_Execute = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
    end
})

-- Tab trái
AddButton(Tab3o, {
    Name = "auto Nhặt 🍑🤤",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/marisdeptrai/Script-Free/main/FruitFinder.lua"))()
    end
})

-- Tab PvP
AddButton(Tab4o, {
    Name = "sắp có😍 !!",
    Callback = function()
    end
})

-- Tab Khác
AddButton(Tab5o, {
    Name = "dành cho máy yếu💥 x3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})

-- Fix
local function TravelToSea(targetSea)
    local success = false
    pcall(function()
        if targetSea == 1 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        elseif targetSea == 2 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        elseif targetSea == 3 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
        wait(2) -- Chờ game xử lý dịch chuyển
        success = true
    end)
    return success
end

AddButton(Tab6o, {
    Name = "🌲🌲Sea 1🛸",
    Callback = function()
        if TravelToSea(1) then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đã dịch chuyển đến Sea 1!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không thể dịch chuyển đến Sea 1!",
                Duration = 5
            })
        end
    end
})

AddButton(Tab6o, {
    Name = "🌲☕Sea 2🛸",
    Callback = function()
        if TravelToSea(2) then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đã dịch chuyển đến Sea 2!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không thể dịch chuyển đến Sea 2!",
                Duration = 5
            })
        end
    end
})

AddButton(Tab6o, {
    Name = "🐢Sea 3🛸",
    Callback = function()
        if TravelToSea(3) then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đã dịch chuyển đến Sea 3!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không thể dịch chuyển đến Sea 3!",
                Duration = 5
            })
        end
    end
})

-- Tab Server
local function RejoinServer()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Thông báo🔊!",
        Text = "Đang rejoin lại Server",
        Duration = 5
    })
end

local function HopServer()
    local success, error = pcall(function()
        local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
        for _, server in pairs(servers.data) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id, game.Players.LocalPlayer)
                break
            end
        end
    end)
    if success then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang chuyển server",
            Duration = 5
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Không tìm thấy server",
            Duration = 5
        })
    end
end

local function FindLowPlayerServer()
    local success, error = pcall(function()
        local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
        local lowestPlayers = math.huge
        local targetServer = nil
        
        for _, server in pairs(servers.data) do
            if server.playing < lowestPlayers and server.id ~= game.JobId then
                lowestPlayers = server.playing
                targetServer = server.id
            end
        end
        
        if targetServer then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, targetServer, game.Players.LocalPlayer)
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đang chuyển đến server ít người (" .. lowestPlayers .. " người)...",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không tìm thấy server ít người!",
                Duration = 5
            })
        end
    end)
    if not success then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "lỗi tìm server, hãy thử lại xem sao?" .. tostring(error),
            Duration = 5
        })
    end
end

AddButton(Tab7o, {
    Name = "🔄 Rejoin Server",
    Callback = function()
        RejoinServer()
    end
})

AddButton(Tab7o, {
    Name = "🌍 đổi server",
    Callback = function()
        HopServer()
    end
})

AddButton(Tab7o, {
    Name = "👥 Tìm Server Ít Người",
    Callback = function()
        FindLowPlayerServer()
    end
})

AddButton(Tab8o, {
    Name = "🚫trade scam",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rabbb216/FreezeTradeScam/refs/heads/main/FreezeTradeScam.lua"))()
    end
})
