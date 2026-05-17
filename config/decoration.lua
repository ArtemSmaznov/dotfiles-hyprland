local base00 = "1d2021"
local base01 = "3c3836"
local base02 = "504945"
local base03 = "665c54"
local base04 = "bdae93"
local base05 = "d5c4a1"
local base06 = "ebdbb2"
local base07 = "fbf1c7"
local base08 = "fb4934"
local base09 = "fe8019"
local base0A = "fabd2f"
local base0B = "b8bb26"
local base0C = "8ec07c"
local base0D = "83a598"
local base0E = "d3869b"
local base0F = "d65d0e"

local corners = 15

hl.config({
  decoration = {
    rounding = corners,

    -- window opacity
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    fullscreen_opacity = 1.0,

    -- window dimming
    dim_inactive = false,
    dim_strength = 0.25,
    dim_special = 0.2,
    dim_around = 0.4,

    blur = {
      enabled = true,
      size = 10,
      passes = 3,
      ignore_opacity = true,
      new_optimizations = true,
      xray = false,
      noise = 0.03,
      special = false,
      popups = true,
      popups_ignorealpha = 0.2,
    },

    shadow = {
      enabled = true,

      range = 20,
      render_power = 3,
      sharp = false,
      -- ignore_window = true,

      color = "rgba(" .. base00 .. "ee)",
      color_inactive = "rgba(" .. base00 .. "cc)",

      scale = 1.0,
    },

    glow = {
      enabled = false,
      range = 10,
      render_power = 3,
      color = "rgba(" .. base07 .. "ee)",
      color_inactive = "rgba(" .. base07 .. "ee)",
    },
  },
})
