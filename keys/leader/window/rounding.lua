hl.define_submap("rounding", function()

  hl.bind("r"             , TOGGLE_ROUNDING      , { description = "toggle" })
  hl.bind("t"             , TOGGLE_ROUNDING      , { description = "toggle" })
  hl.bind("0"             , RESET_ROUNDING       , { description = "reset" })
  hl.bind("minus"         , SHRINK_ROUNDING      , { description = "shrink" })
  hl.bind("equal"         , GROW_ROUNDING        , { description = "grow" })
  hl.bind("SHIFT + 0"     , DISABLE_ROUNDING     , { description = "disable" })
  hl.bind("SHIFT + minus" , SHRINK_MORE_ROUNDING , { description = "shrink more" })
  hl.bind("SHIFT + equal" , GROW_MORE_ROUNDING   , { description = "grow more" })

  hl.bind("backspace", switch_submap("SPC w-", "window"))
  hl.bind("catchall" ,  RESET_SUBMAP, { release = true })
end)
