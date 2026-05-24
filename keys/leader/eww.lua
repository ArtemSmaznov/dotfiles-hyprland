hl.define_submap("eww", function()

  hl.bind("d", hl.dsp.exec_cmd("eww set debug=true")          , { description = "toggle debug panel" })
  hl.bind("p", hl.dsp.exec_cmd("eww open --toggle playground"), { description = "open playground" })

  hl.bind("backspace", switch_submap("SPC-", "leader"))

  hl.bind("d"        , RESET_SUBMAP)
  hl.bind("p"        , RESET_SUBMAP)
  hl.bind("catchall" , RESET_SUBMAP, { release = true })
end)
