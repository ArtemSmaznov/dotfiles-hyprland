hl.define_submap("config", function()

  hl.bind("a", function()
    require("keys.leader.config.autostart")
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC c a-' autostart"))
    hl.dispatch(hl.dsp.exec_cmd("eww open " .. EWW_AUTOSTART))
    hl.dispatch(hl.dsp.submap("autostart"))
  end, { description = "open autostart list" })

  hl.bind("backspace", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader"))
    hl.dispatch(hl.dsp.submap("leader"))
  end)

  hl.bind("a"       , RESET_SUBMAP , { release = true })
  hl.bind("catchall", RESET_SUBMAP , { release = true })
end)
