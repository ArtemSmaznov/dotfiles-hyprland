hl.config({
  decoration = {
    rounding = CORNERS,

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
