hl.config({
  binds  = {
    workspace_back_and_forth = true,
    allow_workspace_cycles = true,

    -- sets the preferred focus finding method when using focuswindow/movewindow/etc with a direction.
    -- 0 - history (recent have priority)
    -- 1 - length (longer shared edges have priority)
    focus_preferred_method = 0,

    movefocus_cycles_fullscreen = false,
  },
})
