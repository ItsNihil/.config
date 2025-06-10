local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.enable_wayland = false

config.color_scheme = 'Dark Pastel'
config.font = wezterm.font 'JetBrains Mono Nerd Font'
config.font_size = 12

config.max_fps = 180
config.animation_fps = 30
config.window_background_opacity = 0.8

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = false

return config
