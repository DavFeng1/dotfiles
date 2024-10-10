-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- This will hold the configuration.
local config = wezterm.config_builder()
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox dark, hard (base16)'
config.window_decorations = "RESIZE"


config.keys = {
  {
    key = 'r',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ReloadConfiguration,
  },
}

config.colors = {
  background = "#1e2021",
  tab_bar = {
    background = "#1e2021"
  },
}

config.font_size = 18
config.use_fancy_tab_bar = false
config.line_height = 1.1

-- and finally, return the configuration to wezterm
return config
