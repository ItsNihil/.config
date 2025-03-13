-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font 'JetBrains Mono'
-- For example, changing the color scheme:
config.color_scheme = 'Dark Pastel'

config.font_size = 12

config.window_background_opacity = 0.8

-- and finally, return the configuration to wezterm
return config
