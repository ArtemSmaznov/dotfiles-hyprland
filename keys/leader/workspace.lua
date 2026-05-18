hl.define_submap("workspace", function()

  hl.bind("b", switch_submap("SPC w b-", "borders"))

  hl.bind("backspace", switch_submap("SPC-", "leader"))
  hl.bind("catchall" , RESET_SUBMAP , { release = true })
end)
