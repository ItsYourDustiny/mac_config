-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This table will hold the configuration.
local config = {}


if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- color scheme and font
config.color_scheme = "nord"
config.font = wezterm.font("Firamono Nerd Font")

-- dont adjust window size
config.adjust_window_size_when_changing_font_size = false

return config

-- -- functions for nvim/wez interaction
-- local function isViProcess(pane) 
--     -- get_foreground_process_name On Linux, macOS and Windows, 
--     -- the process can be queried to determine this path. Other operating systems 
--     -- (notably, FreeBSD and other unix systems) are not currently supported
--     return pane:get_foreground_process_name():find('n?vim') ~= nil
--     -- return pane:get_title():find("n?vim") ~= nil
-- end

-- local function conditionalActivatePane(window, pane, pane_direction, vim_direction)
--     if isViProcess(pane) then
--         window:perform_action(
--             -- This should match the keybinds you set in Neovim.
--             act.SendKey({ key = vim_direction, mods = 'CTRL' }),
--             pane
--         )
--     else
--         window:perform_action(act.ActivatePaneDirection(pane_direction), pane)
--     end
-- end

-- wezterm.on('ActivatePaneDirection-right', function(window, pane)
--     conditionalActivatePane(window, pane, 'Right', 'l')
-- end)
-- wezterm.on('ActivatePaneDirection-left', function(window, pane)
--     conditionalActivatePane(window, pane, 'Left', 'h')
-- end)
-- wezterm.on('ActivatePaneDirection-up', function(window, pane)
--     conditionalActivatePane(window, pane, 'Up', 'k')
-- end)
-- wezterm.on('ActivatePaneDirection-down', function(window, pane)
--     conditionalActivatePane(window, pane, 'Down', 'j')
-- end)

-- wezterm.on('update-right-status', function(window, pane)
--     window:set_right_status(window:active_workspace())
-- end)  

-- -- config.leader = { key = '', mods = 'CTRL|ALT|SHIFT|CMD' }

-- config.keys = {
-- 	{ key = 'h', mods = 'CTRL', action = act.EmitEvent('ActivatePaneDirection-left') },
-- 	{ key = 'j', mods = 'CTRL', action = act.EmitEvent('ActivatePaneDirection-down') },
-- 	{ key = 'k', mods = 'CTRL', action = act.EmitEvent('ActivatePaneDirection-up') },
-- 	{ key = 'l', mods = 'CTRL', action = act.EmitEvent('ActivatePaneDirection-right') },
--     { key = 'n', mods = 'CTRL', action = act.SwitchWorkspaceRelative(1) },
--     { key = 'p', mods = 'CTRL', action = act.SwitchWorkspaceRelative(-1) },
--     {
--         key = 'n',
--         mods = 'CTRL|SHIFT',
--         action = act.PromptInputLine {
--           description = wezterm.format {
--             { Attribute = { Intensity = 'Bold' } },
--             { Foreground = { AnsiColor = 'Fuchsia' } },
--             { Text = 'Enter name for new workspace' },
--           },
--           action = wezterm.action_callback(function(window, pane, line)
--             -- line will be `nil` if they hit escape without entering anything
--             -- An empty string if they just hit enter
--             -- Or the actual line of text they wrote
--             if line then
--               window:perform_action(
--                 act.SwitchToWorkspace {
--                   name = line,
--                 },
--                 pane
--               )
--             end
--           end),
--         },
--     },
--     {
--         key = 'w',
--         mods = 'CTRL',
--         action = wezterm.action.CloseCurrentPane { confirm = false },
--     },
--     {
--         key = 'n',
--         mods = 'CTRL',
--         action = wezterm.action.SplitHorizontal,
--     },
--     {
--         key = 'n',
--         mods = 'SHIFT|CTRL',
--         action = wezterm.action.ToggleFullScreen,
--     },
--     { key = '=', mods = 'CTRL', action = wezterm.action.IncreaseFontSize },
--     { key = '-', mods = 'CTRL', action = wezterm.action.DecreaseFontSize },
--     { mods = "OPT", key = "LeftArrow", action = act.SendKey({ mods = "ALT", key = "b" }) },
-- 	  { mods = "OPT", key = "RightArrow", action = act.SendKey({ mods = "ALT", key = "f" }) },
-- 	  { mods = "CMD", key = "LeftArrow", action = act.SendKey({ mods = "CTRL", key = "a" }) },
--   	{ mods = "CMD", key = "RightArrow", action = act.SendKey({ mods = "CTRL", key = "e" }) },
-- 	  { mods = "CMD", key = "Backspace", action = act.SendKey({ mods = "CTRL", key = "u" }) },
-- }

-- return config
