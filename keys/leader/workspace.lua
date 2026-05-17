hl.define_submap("workspace", function()

  hl.bind("b", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w b-' borders"))
    hl.dispatch(hl.dsp.submap("borders"))
  end, { description = "+borders" })

  hl.bind("backspace", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader"))
    hl.dispatch(hl.dsp.submap("leader"))
  end)

  hl.bind("catchall" , RESET_SUBMAP , { release = true })
end)
