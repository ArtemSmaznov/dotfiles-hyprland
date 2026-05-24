hl.define_submap("borders", function()

  hl.bind("b"             , TOGGLE_BORDERS      , { description = "toggle" })
  hl.bind("t"             , TOGGLE_BORDERS      , { description = "toggle" })
  hl.bind("0"             , RESET_BORDERS       , { description = "reset" })
  hl.bind("minus"         , SHRINK_BORDERS      , { description = "shrink" })
  hl.bind("equal"         , GROW_BORDERS        , { description = "grow" })
  hl.bind("SHIFT + 0"     , DISABLE_BORDERS     , { description = "disable" })
  hl.bind("SHIFT + minus" , SHRINK_MORE_BORDERS , { description = "shrink more" })
  hl.bind("SHIFT + equal" , GROW_MORE_BORDERS   , { description = "grow more" })

  hl.bind("backspace", switch_submap("SPC w-", "window"))
  hl.bind("catchall",  RESET_SUBMAP, { release = true })
end)
