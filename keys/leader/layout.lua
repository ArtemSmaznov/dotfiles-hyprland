hl.define_submap("layout", function()

  hl.bind("d", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh set dwindle") , { description = "dwindle" })

  hl.bind("g", function()
    require("keys.leader.layout.gaps")
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC l g-' gaps"))
    hl.dispatch(hl.dsp.submap("gaps"))
  end, { description = "+gaps" })

  hl.bind("l", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh toggle")        , { description = "switch layout" })
  hl.bind("m", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh set master")    , { description = "master" })
  hl.bind("s", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh set scrolling") , { description = "scrolling" })

  hl.bind("backspace", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader"))
    hl.dispatch(hl.dsp.submap("leader"))
  end)

  hl.bind("catchall" , RESET_SUBMAP , { release = true })
end)
