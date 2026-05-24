hl.define_submap("toggle", function()

  hl.bind("b", TOGGLE_BORDERS  , { description = "window borders" })
  hl.bind("r", TOGGLE_ROUNDING , { description = "rounded corners" })
  hl.bind("d", TOGGLE_DIMMING  , { description = "window dimming" })
  hl.bind("g", TOGGLE_GAPS     , { description = "window gaps" })

  require("keys.leader.toggle.panel")
  hl.bind("p", switch_submap("SPC t p-", "panels"))

  require("keys.leader.toggle.quick-settings")
  hl.bind("q", switch_submap("SPC t q-", "quick-settings"))
  hl.bind("s", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-status-bar.sh")                              , { description = "status bar" })
  hl.bind("z", ZEN_MODE, { description = "zen mode" })

  hl.bind("backspace", switch_submap("SPC-", "leader"))
  hl.bind("catchall" , RESET_SUBMAP, { release = true })
end)
