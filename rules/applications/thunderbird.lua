hl.window_rule({
  name = "thunderbird-float-dialogs-and-stuff",
  match = {
    class = "org.mozilla.Thunderbird",
    title = ".*Filters.*",
  },
  float = true,
  size = { "monitor_w", "monitor_h*0.7" },
  move = { "monitor_w*0.3", "monitor_h*0.15" },
})
