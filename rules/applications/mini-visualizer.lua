hl.window_rule({
  name = "mini-visualizer",
  match = {
    class = "mini-visualizer",
  },
  no_initial_focus = true,
  float = true,
  move = { GAPS_OUTER, "monitor_w-" .. GAPS_OUTER },
  size = { "monitor_w*0.17", 300 },
  pin = true,
})
