-- defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua" # in console then restart hs

local hyper = { "cmd", "alt", "ctrl", "shift" }
local wm = require("window-management")
hs.hotkey.bind(hyper, "0", function()
	hs.reload()
end)

-- hs.hotkey.bind(hyper, "f", function()
-- 	hs.application.launchOrFocus("Firefox")
-- end)

-- -- hs.hotkey.bind(hyper, "1", function()
-- -- 	hs.spaces.gotoSpace(1)
-- -- 	hs.spaces.closeMissionControl()
-- -- end)

-- -- hs.hotkey.bind(hyper, "2", function()
-- -- 	-- hs.spaces.openMissionControl() 
-- -- 	-- print(hs.spaces.allSpaces())
-- -- 	hs.spaces.gotoSpace(12)
-- -- 	hs.spaces.closeMissionControl()
-- -- end)

-- -- hs.hotkey.bind(hyper, "escape", function()
-- -- 	hs.spaces.closeMissionControl()
-- -- end)

-- -- reload config
-- hs.notify.new({ title = "Hammerspoon", informativeText = "Config loaded" }):send()

-- -- window management
-- -- hs.hotkey.bind(hyper, "j", function() -- move to left
-- --   local win = hs.window.focusedWindow();
-- --   if not win then return end
-- -- win:moveToUnit(hs.layout.left50)
-- -- 	hs.eventtap.keyStroke({"ctrl", "option"}, "left")
-- -- end)
-- -- hs.hotkey.bind(hyper, "l", function() -- move to right
-- --   local win = hs.window.focusedWindow();
-- --   if not win then return end
-- -- win:moveToUnit(hs.layout.right50)
-- -- end)

-- -- hs.hotkey.bind(hyper, "u", function() wm.moveWindowToPosition(wm.screenPositions.topLeft) end)
-- -- hs.hotkey.bind(hyper, "o", function() wm.moveWindowToPosition(wm.screenPositions.topRight) end)
-- -- hs.hotkey.bind(hyper, "m", function() wm.moveWindowToPosition(wm.screenPositions.bottomLeft) end)
-- -- hs.hotkey.bind(hyper, ".", function() wm.moveWindowToPosition(wm.screenPositions.bottomRight) end)
-- hs.hotkey.bind(hyper, "q", function() -- minimize
-- 	local win = hs.window.focusedWindow()
-- 	if not win then
-- 		return
-- 	end
-- 	win:minimize(not win:isMinimized())
-- 	all_windows = hs.window.orderedWindows()
-- 	hs.window.frontmostWindow():focus()
-- end)

-- -- app shortcuts
-- local windows = {
-- 	c = "Google Chrome",
-- 	v = "Code",
-- 	t = "WezTerm",
-- 	s = "Slack",
-- 	w = "Obsidian", -- maybe put on right side of keeb?
-- 	-- f = 'Firefox',
-- 	g = "Godspeed",
-- }
-- local windowLaunchNames = {
-- 	-- currently just VS Code
-- 	V = "Visual Studio Code",
-- }
-- local lastKey = ""
-- local lastKeyTime = 0
-- local lastWindowIndex = 1
-- local appWindows = nil
-- local doubleKeyThreshold = 0.8

-- -- set up the binding for each key combo
-- for key, appName in pairs(windows) do
-- 	hs.hotkey.bind(hyper, key, function()
-- 		local keyTime = hs.timer.secondsSinceEpoch()
-- 		-- for a repeated key press, cycle through windows
-- 		if key == lastKey and keyTime - lastKeyTime < doubleKeyThreshold then
-- 			if appWindows == nil then
-- 				-- find the switchable windows
-- 				local app = hs.application.find(appName)
-- 				if app then
-- 					appWindows = hs.fnutils.filter(app:allWindows(), function(w)
-- 						return w:isStandard()
-- 					end)
-- 				end
-- 			end

-- 			if appWindows and #appWindows > 0 then
-- 				-- increment and loop
-- 				lastWindowIndex = lastWindowIndex % #appWindows + 1

-- 				--cycle apps
-- 				appWindows[lastWindowIndex]:focus()
-- 			end
-- 		else
-- 			-- switch to window
-- 			appWindows = nil
-- 			lastWindowIndex = 1

-- 			local app = hs.application.get(appName)
-- 			if app then
-- 				app:activate(true)
-- 			else
-- 				local launchName = windowLaunchNames[key] or appName
-- 				hs.application.launchOrFocus(launchName)
-- 			end
-- 		end

-- 		lastKey = key
-- 		lastKeyTime = keyTime
-- 	end)
-- end
