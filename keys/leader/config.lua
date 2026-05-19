hl.define_submap("config", function()

  require("keys.leader.config.autostart")
  hl.bind("a", hl.dsp.exec_cmd("eww open " .. EWW_AUTOSTART), { description = "open autostart list" })
  hl.bind("a", switch_submap("SPC c a-", "autostart"))

  hl.bind("backspace", switch_submap("SPC-", "leader"))

  hl.bind("a"       , RESET_SUBMAP , { release = true })
  hl.bind("catchall", RESET_SUBMAP , { release = true })
end)
