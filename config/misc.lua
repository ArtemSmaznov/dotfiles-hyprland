hl.config({
  misc = {
    disable_autoreload = false,
    disable_hyprland_logo = false,
    middle_click_paste = true,
    enable_anr_dialog = false,

    -- styling
    font_family = "Hack Nerd Font",

    col = {
      splash = "rgb(" .. base07 ..")",
    },

    -- focus
    mouse_move_focuses_monitor = false,
    focus_on_activate = false,
    layers_hog_keyboard_focus = true,

    -- fullscreen
    on_focus_under_fullscreen = 0,
    exit_window_retains_fullscreen = false,

    -- animations
    animate_manual_resizes = true,
    animate_mouse_windowdragging = true,

    -- dpms
    mouse_move_enables_dpms = true,
    key_press_enables_dpms = true,

    -- window swallowing
    enable_swallow = false,
    -- swallow_regex = "",
    -- swallow_exception_regex = "",

    close_special_on_empty = true,
    allow_session_lock_restore = false,
    vrr = 2,
  },
})
