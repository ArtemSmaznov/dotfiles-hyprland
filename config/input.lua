hl.config({
  input = {
    kb_layout = "us,ru,jp",
    kb_variant = "",
    kb_model = "",
    -- kb_options = grp:lalt_lshift_toggle
    kb_options = "",
    kb_rules = "",

    -- focus
    -- Specify if and how cursor movement should affect window focus
    -- 0 - Cursor movement will not change focus.
    -- 1 - Cursor movement will always change focus to the window under the cursor.
    -- 2 - Cursor focus will be detached from keyboard focus. Clicking on a window will move keyboard focus to that window.
    -- 3 - Cursor focus will be completely separate from keyboard focus. Clicking on a window will not change keyboard focus.
    --
    follow_mouse = 2,

    -- If disabled, mouse focus won’t switch to the hovered window unless the mouse crosses a window boundary when follow_mouse=1.
    mouse_refocus = false,
    focus_on_close = 0,

    -- 0 - Cursor movement will not change focus.
    -- 1 - focus will change to the window under the cursor when changing from tiled-to-floating and vice versa.
    -- 2 - focus will also follow mouse on float-to-float switches.
    float_switch_override_focus = 0,

    repeat_rate = 25,
    repeat_delay = 300,

    scroll_factor = 1,
    natural_scroll = false,

    touchpad = {
      natural_scroll = false,
    },

    sensitivity = 0,
  },
})
