hl.define_submap("eww", function()

  hl.bind("d", hl.dsp.exec_cmd("eww set debug=true")          , { description = "toggle debug panel" })
  hl.bind("p", hl.dsp.exec_cmd("eww open --toggle playground"), { description = "open playground" })

  hl.bind("backspace", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader"))
    hl.dispatch(hl.dsp.submap("leader"))
  end)

  hl.bind("d"        , RESET_SUBMAP , { release = true })
  hl.bind("p"        , RESET_SUBMAP , { release = true })
  hl.bind("catchall" , RESET_SUBMAP , { release = true })
end)
