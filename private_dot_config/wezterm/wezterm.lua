local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font 'JetBrainsMono Nerd Font Mono'
config.font_size = 16

config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.initial_cols = 160
config.initial_rows = 40

return config
