local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
local config = wezterm.config_builder()
-- Wayland Support
config.enable_wayland = false
-- Colors and Fonts
config.color_scheme = 'Dark Pastel'
config.font = wezterm.font 'JetBrains Mono Nerd Font'
config.font_size = 12
-- Appearance
config.max_fps = 180
config.animation_fps = 180
config.window_background_opacity = 0.8
config.window_decorations = 'RESIZE'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
-- Tabs
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = false
-- Keybinds
config.leader = {
  key = 'a',
  mods = 'CTRL',
  timeout_milliseconds = 2000,
}
config.keys = {
  {
    key = 'c',
    mods = 'LEADER',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'n',
    mods = 'LEADER',
    action = act.ActivateTabRelative(1),
  },
  {
    key = 'p',
    mods = 'LEADER',
    action = act.ActivateTabRelative(-1),
  },
  {
    key = 'w',
    mods = 'LEADER',
    action = act.CloseCurrentTab{confirm = false},
  },
}
-- Unix Domain (Tmux)
config.unix_domains = {
  {
    name = 'unix',
  },
}
config.keys = {
  {
    key = 'a',
    mods = 'LEADER',
    action = act.AttachDomain 'unix',
  },
  {
    key = 'd',
    mods = 'LEADER',
    action = act.DetachDomain { DomainName = 'unix'},
  },
}
return config
