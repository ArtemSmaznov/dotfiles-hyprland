hl.define_submap("toggle", function()

  hl.bind("b" , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh " .. BORDERS .. " toggle") , { description = "window borders" })
  hl.bind("c" , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-corners.sh " .. CORNERS)         , { description = "rounded corners" })
  hl.bind("d" , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-dimming.sh 1")                   , { description = "window dimming" })
  hl.bind("g" , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " toggle") , { description = "window gaps" })

  require("keys.leader.toggle.panel")
  hl.bind("p", switch_submap("SPC t p-", "panels"))

  require("keys.leader.toggle.quick-settings")
  hl.bind("q", switch_submap("SPC t q-", "quick-settings"))

  hl.bind("s", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-status-bar.sh")                              , { description = "status bar" })
  hl.bind("z", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-zen.sh " .. BORDERS .. CORNERS .. GAPS_INNER), { description = "zen mode" })

  hl.bind("backspace", switch_submap("SPC-", "leader"))

  hl.bind("b"        , RESET_SUBMAP , { release = true })
  hl.bind("c"        , RESET_SUBMAP , { release = true })
  hl.bind("d"        , RESET_SUBMAP , { release = true })
  hl.bind("g"        , RESET_SUBMAP , { release = true })
  hl.bind("s"        , RESET_SUBMAP , { release = true })
  hl.bind("z"        , RESET_SUBMAP , { release = true })
  hl.bind("catchall" , RESET_SUBMAP , { release = true })
end)
