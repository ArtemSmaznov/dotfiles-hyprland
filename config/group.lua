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
          "rgba(" .. BASE0B .. "aa)",
          "rgba(" .. BASE0D .. "aa)",
          "rgba(" .. BASE0C .. "aa)",
        },
        angle = 45,
      },
      border_inactive = {
        colors = {
          "rgba(" .. BASE0B .. "33)",
          "rgba(" .. BASE0D .. "33)",
          "rgba(" .. BASE0C .. "33)",
        },
        angle = 45,
      },
      border_locked_active = {
        colors = {
          "rgba(" .. BASE09 .. "aa)",
          "rgba(" .. BASE0A .. "aa)",
          "rgba(" .. BASE0F .. "aa)",
        },
      },
      border_locked_inactive = {
        colors = {
          "rgba(" .. BASE09 .. "33)",
          "rgba(" .. BASE0A .. "33)",
          "rgba(" .. BASE0F .. "33)",
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
      text_color                = "rgb(" .. BASE01 .. ")",
      gradient_rounding         = CORNERS,
      gradient_round_only_edges = false,

      -- plain inidicators
      indicator_height          = 0,
      rounding                  = CORNERS,
      round_only_edges          = false,

      -- indicator colors
      col                       = {
        active = "rgba(" .. BASE0B .. "aa)",
        inactive = "rgba(" .. BASE0C .. "22)",
        locked_active = "rgba(" .. BASE09 .. "aa)",
        locked_inactive = "rgba(" .. BASE0F .. "22)",
      },

      -- indicator gaps
      gaps_in                   = GAPS_INNER,
      gaps_out                  = GAPS_INNER,
    },
  },
})
