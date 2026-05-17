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

local gaps_inner = 20
local gaps_outer = 40
local borders = 15

hl.config({
  general = {
    gaps_in = gaps_inner,
    gaps_out = gaps_outer,

    border_size = borders,

    col = {
      active_border = {
        colors = {
          "rgba(" .. base0B .. "aa)",
          "rgba(" .. base0E .. "aa)",
          "rgba(" .. base0C .. "aa)",
          "rgba(" .. base0A .. "aa)",
        },
        angle = 45,
      },
      inactive_border = {
        colors = {
          "rgba(" .. base03 .. "aa)",
          "rgba(" .. base01 .. "99)",
        },
        angle = 90,
      },
      nogroup_border_active = {
        colors = {
          "rgba(" .. base08 .. "aa)",
          "rgba(" .. base00 .. "aa)",
          "rgba(" .. base09 .. "aa)",
        },
        angle = 45,
      },
      nogroup_border = {
        colors = {
          "rgba(" .. base08 .. "33)",
          "rgba(" .. base00 .. "33)",
          "rgba(" .. base09 .. "33)",
        },
        angle = 45,
      },
    },

    no_focus_fallback = true,
    resize_on_border = true,
    layout = "scrolling",
  },
})
