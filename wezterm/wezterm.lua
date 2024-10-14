-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- This will hold the configuration.
local config = wezterm.config_builder()
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end

  return 'Dark'
end

function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Gruvbox dark, hard (base16)'
  else
    return 'Builtin Solarized Light'
  end
end

function colors_for_appearance(appearance)
  if appearance:find 'Dark' then
    return {
      background = "#1e2021",
      tab_bar = {
        background = "#1e2021"
      },
    }
  else
    return {
      background = "#f5f5f5",
      tab_bar = {
        background = "#f5f5f5"
      },
    }
  end
end

local appearance = get_appearance()
config.colors = colors_for_appearance(appearance)
config.color_scheme = scheme_for_appearance(appearance)

config.window_decorations = "RESIZE"
config.keys = {
  {
    key = 'r',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ReloadConfiguration,
  },
}


config.font_size = 18
config.use_fancy_tab_bar = false
config.line_height = 1.1

-- and finally, return the configuration to wezterm
return config
