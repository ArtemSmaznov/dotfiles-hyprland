hl.bind("SUPER + p", switch_submap("M-p-", "pass"))

hl.define_submap("pass", function()
  hl.bind("c"          , hl.dsp.exec_cmd("wofi-pass --squash")                  , { description = "copy field" })
  hl.bind("p"          , hl.dsp.exec_cmd("wofi-pass --squash --type")           , { description = "fill field" })
  hl.bind("a"          , hl.dsp.exec_cmd("wofi-pass --squash --type --autotype"), { description = "autofill password" })

  hl.bind("c"       , RESET_SUBMAP)
  hl.bind("p"       , RESET_SUBMAP)
  hl.bind("a"       , RESET_SUBMAP)
  hl.bind("catchall", RESET_SUBMAP, { release = true })
end)
