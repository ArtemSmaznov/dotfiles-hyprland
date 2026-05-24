hl.define_submap("gaps", function()

  hl.bind("g"             , TOGGLE_GAPS      , { description = "toggle" })
  hl.bind("t"             , TOGGLE_GAPS      , { description = "toggle" })
  hl.bind("0"             , RESET_GAPS       , { description = "reset" })
  hl.bind("minus"         , SHRINK_GAPS      , { repeating = true, description = "shrink" })
  hl.bind("equal"         , GROW_GAPS        , { repeating = true, description = "grow" })
  hl.bind("SHIFT + 0"     , DISABLE_GAPS     , { description = "disable" })
  hl.bind("SHIFT + minus" , SHRINK_MORE_GAPS , { repeating = true, description = "shrink more" })
  hl.bind("SHIFT + equal" , GROW_MORE_GAPS   , { repeating = true, description = "grow more" })

  hl.bind("backspace", switch_submap("SPC l-", "layout"))
  hl.bind("catchall" , RESET_SUBMAP, { release = true })
end)
