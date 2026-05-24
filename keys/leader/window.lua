hl.define_submap("window", function()

  require("keys.leader.window.border")
  hl.bind("b", switch_submap("SPC w b-", "borders"))

  require("keys.leader.window.stack")
  hl.bind("s", switch_submap("SPC w s-", "stack"))

  hl.bind("backspace", switch_submap("SPC-", "leader"))
  hl.bind("catchall" , RESET_SUBMAP, { release = true })
end)
