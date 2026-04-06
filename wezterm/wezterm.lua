-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.initial_cols = 60
config.initial_rows = 20

-- fonts
config.font_size = 16
config.font = wezterm.font_with_fallback {
  'CaskaydiaMono NFM',
  'WenQuanYi Zen Hei'
}

-- theming
config.window_decorations = "NONE"
config.enable_tab_bar = false
config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.5,
}
config.window_background_opacity = 0.5
config.default_cursor_style = "SteadyBar"
config.color_scheme = "Noctalia"

-- keybinds
config.keys = {
  {
    key = 'r',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ReloadConfiguration,
  },
  {
    key = 't',
    mods = 'CTRL',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = '[',
    mods = 'CTRL',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = ']',
    mods = 'CTRL',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'w',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  {
    key = 'z',
    mods = 'CTRL',
    action = wezterm.action.TogglePaneZoomState,
  },
  {
    key = 'LeftArrow',
    mods = 'CTRL|ALT',
    action =wezterm.action.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'DownArrow',
    mods = 'CTRL|ALT',
    action =wezterm.action.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = 'UpArrow',
    mods = 'CTRL|ALT',
    action =wezterm.action.AdjustPaneSize { 'Up', 5 }
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|ALT',
    action =wezterm.action.AdjustPaneSize { 'Right', 5 },
  },
  {
    key = 'LeftArrow',
    mods = 'CTRL',
    action =wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'CTRL',
    action =wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'UpArrow',
    mods = 'CTRL',
    action =wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'DownArrow',
    mods = 'CTRL',
    action =wezterm.action.ActivatePaneDirection 'Down',
  },
}

-- Finally, return the configuration to wezterm:
return config
