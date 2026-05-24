hl.define_submap("stack", function()

  hl.bind("tab"       , hl.dsp.group.next()                                 , { description = "next window" })
  hl.bind("l"         , hl.dsp.group.lock_active({ action = "toggle" })     , { description = "toggle lock on stack" })
  hl.bind("SHIFT + L" , hl.dsp.group.lock({ action = "toggle" })            , { description = "toggle lock on all stacks" })
  hl.bind("s"         , hl.dsp.group.toggle()                               , { description = "toggle window stacking" })
  hl.bind("x"         , hl.dsp.window.deny_from_group({ action = "toggle" }), { description = "restict window from stacking" })

  hl.bind("backspace", switch_submap("SPC w-", "window"))

  hl.bind("l"         , RESET_SUBMAP)
  hl.bind("SHIFT + L" , RESET_SUBMAP)
  hl.bind("s"         , RESET_SUBMAP)
  hl.bind("x"         , RESET_SUBMAP)
  hl.bind("catchall"  , RESET_SUBMAP, { release = true })
end)
