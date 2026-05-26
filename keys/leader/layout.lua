hl.define_submap("layout", function()

  hl.bind("d", function() Layouts:reset("dwindle")   end, { description = "switch to dwindle" })

  require("keys.leader.layout.gaps")
  hl.bind("g", switch_submap("SPC l g-", "gaps"))

  hl.bind("l", function() Layouts:next()             end, { description = "next layout" })
  hl.bind("m", function() Layouts:reset("master")    end, { description = "switch to master" })
  hl.bind("s", function() Layouts:reset("scrolling") end, { description = "switch to scrolling" })
  hl.bind("x", function() Layouts:reset()            end, { description = "reset to default" })

  hl.bind("bracketleft", function() Layouts:prev()   end, { description = "prev layout" })
  hl.bind("bracketright", function() Layouts:next()  end, { description = "next layout" })

  hl.bind("backspace", switch_submap("SPC-", "leader"))

  hl.bind("catchall" , RESET_SUBMAP, { release = true })
end)
