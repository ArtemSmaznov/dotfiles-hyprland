hl.dsp.window.tag({ tag = "+okular", window = "class:org.kde.okular" })

hl.window_rule({
  name = "okular-floating",
  match = {
    tag = "okular",
    float = true,
  },
  keep_aspect_ratio = true,
  stay_focused = true,
  center = true,
})


hl.window_rule({
  name = "okular-initial-state",
  match = { tag = "okular" },
  float = true,
})
