hl.config({
  general = {
    gaps_in = GAPS_INNER,
    gaps_out = GAPS_OUTER,

    border_size = BORDERS,

    col = {
      active_border = {
        colors = {
          "rgba(" .. BASE0B .. "aa)",
          "rgba(" .. BASE0E .. "aa)",
          "rgba(" .. BASE0C .. "aa)",
          "rgba(" .. BASE0A .. "aa)",
        },
        angle = 45,
      },
      inactive_border = {
        colors = {
          "rgba(" .. BASE03 .. "aa)",
          "rgba(" .. BASE01 .. "99)",
        },
        angle = 90,
      },
      nogroup_border_active = {
        colors = {
          "rgba(" .. BASE08 .. "aa)",
          "rgba(" .. BASE00 .. "aa)",
          "rgba(" .. BASE09 .. "aa)",
        },
        angle = 45,
      },
      nogroup_border = {
        colors = {
          "rgba(" .. BASE08 .. "33)",
          "rgba(" .. BASE00 .. "33)",
          "rgba(" .. BASE09 .. "33)",
        },
        angle = 45,
      },
    },

    no_focus_fallback = true,
    resize_on_border = true,
  },
})
