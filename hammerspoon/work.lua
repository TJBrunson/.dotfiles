local appBindings = {
    ["1"] = "Cursor",
    ["2"] = "Ghostty",
    ["3"] = "Brave Browser",
    ["4"] = "Slack",
    ["5"] = "Messages",
    ["9"] = "Quip"
}

-- Function to launch or focus an application
local function launchOrFocusApp(appName)
    hs.application.launchOrFocus(appName)
end

-- Bind Option + number to launch or focus the corresponding app
for key, appName in pairs(appBindings) do
    hs.hotkey.bind({"alt"}, key, function()
        launchOrFocusApp(appName)
    end)
end
