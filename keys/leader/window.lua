hl.define_submap("window", function()

  hl.bind("b", function()
    require("keys.leader.window.border")
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w b-' borders"))
    hl.dispatch(hl.dsp.submap("borders"))
  end, { description = "+borders" })

  hl.bind("s", function()
    require("keys.leader.window.stack")
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w s-' stack  "))
    hl.dispatch(hl.dsp.submap("stack"))
  end, { description = "+stack" })

  hl.bind("backspace", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader"))
    hl.dispatch(hl.dsp.submap("leader"))
  end)

  hl.bind("catchall" , RESET_SUBMAP , { release = true })
end)
