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
local corners = 15

hl.config({
  group = {
    auto_group = true,
    insert_after_current = true,
    focus_removed_window = true,
    drag_into_group = 1,
    merge_groups_on_drag = false,
    merge_groups_on_groupbar = true,
    merge_floated_into_tiled_on_groupbar = false,
    group_on_movetoworkspace = false,

    col = {
      border_active = {
        colors = {
          "rgba(" .. base0B .. "aa)",
          "rgba(" .. base0D .. "aa)",
          "rgba(" .. base0C .. "aa)",
        },
        angle = 45,
      },
      border_inactive = {
        colors = {
          "rgba(" .. base0B .. "33)",
          "rgba(" .. base0D .. "33)",
          "rgba(" .. base0C .. "33)",
        },
        angle = 45,
      },
      border_locked_active = {
        colors = {
          "rgba(" .. base09 .. "aa)",
          "rgba(" .. base0A .. "aa)",
          "rgba(" .. base0F .. "aa)",
        },
      },
      border_locked_inactive = {
        colors = {
          "rgba(" .. base09 .. "33)",
          "rgba(" .. base0A .. "33)",
          "rgba(" .. base0F .. "33)",
        },
      },
    },

    groupbar = {
      enabled                   = true,
      render_titles             = true,
      stacked                   = false,
      scrolling                 = false,

      -- gradient (titled) indicators
      gradients                 = true,
      height                    = 36,
      font_size                 = 18,
      text_color                = "rgb(" .. base01 .. ")",
      gradient_rounding         = corners,
      gradient_round_only_edges = false,

      -- plain inidicators
      indicator_height          = 0,
      rounding                  = corners,
      round_only_edges          = false,

      -- indicator colors
      col                       = {
        active = "rgba(" .. base0B .. "aa)",
        inactive = "rgba(" .. base0C .. "22)",
        locked_active = "rgba(" .. base09 .. "aa)",
        locked_inactive = "rgba(" .. base0F .. "22)",
      },

      -- indicator gaps
      gaps_in                   = gaps_inner,
      gaps_out                  = gaps_inner,
    },
  },
})
