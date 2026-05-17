local gaps_outer = 40

hl.window_rule({
  name = "mini-visualizer",
  match = {
    class = "mini-visualizer",
  },
  no_initial_focus = true,
  float = true,
  move = { gaps_outer, "monitor_w-" .. gaps_outer },
  size = { "monitor_w*0.17", 300 },
  pin = true,
})
