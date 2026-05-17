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
  },
})
