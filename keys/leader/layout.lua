hl.define_submap("layout", function()

  hl.bind("d", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh set dwindle") , { description = "dwindle" })

  require("keys.leader.layout.gaps")
  hl.bind("g", switch_submap("SPC l g-", "gaps"))

  hl.bind("l", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh toggle")        , { description = "switch layout" })
  hl.bind("m", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh set master")    , { description = "master" })
  hl.bind("s", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh set scrolling") , { description = "scrolling" })

  hl.bind("backspace", switch_submap("SPC-", "leader"))

  hl.bind("catchall" , RESET_SUBMAP, { release = true })
end)
