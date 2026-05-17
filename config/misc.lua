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
