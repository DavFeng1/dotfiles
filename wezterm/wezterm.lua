-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox dark, hard (base16)'
config.window_decorations = "NONE"


config.keys = {
  {
    key = 'r',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ReloadConfiguration,
  },
}

-- and finally, return the configuration to wezterm
return config
