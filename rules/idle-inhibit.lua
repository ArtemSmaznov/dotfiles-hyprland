hl.window_rule({
  match = { content = "game" },
  idle_inhibit = "focus",
})

hl.window_rule({
  match = { fullscreen = true },
  idle_inhibit = "focus",
})

hl.window_rule({
  match = { class = ".*x86_64" },
  idle_inhibit = "focus",
})

hl.window_rule({
  match = { class = "vimiv" },
  idle_inhibit = "focus",
})

hl.window_rule({
  match = { class = "cava" },
  idle_inhibit = "always",
})
