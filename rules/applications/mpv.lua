local app_class = "mpv"

hl.window_rule({
  name = "mpv-floating",
  match = {
    class = app_class,
    float = true,
  },
  dim_around = true,
  keep_aspect_ratio = true,
  stay_focused = true,
  center = true,
})



hl.window_rule({
  name = "mpv-tiled",
  match = {
    class = app_class,
    float = false,
  },
  pseudo = true,
})



hl.window_rule({
  name = "mpv-initial-state",
  match = {
    class = app_class,
  },
  float = true
})
