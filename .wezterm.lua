-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

function get_appearance()
    if wezterm.gui then
        return wezterm.gui.get_appearance()
    end
    return 'Dark'
end

function scheme_for_appearance(appearance)
    if appearance:find 'Dark' then
        return 'Batman'
    else
        return 'Papercolor Light (Gogh)'
    end
end

-- This is where you actually apply your config choices

config.color_scheme = scheme_for_appearance(get_appearance())
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold' })
config.font_size = 14.0
config.window_close_confirmation = 'NeverPrompt'
config.default_cursor_style = 'BlinkingBar'
config.initial_cols = 100
config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config
