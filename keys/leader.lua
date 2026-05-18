hl.bind("SUPER + space", switch_submap("SPC-", "leader"))

hl.define_submap("leader", function()
  require("keys.leader.config")
  hl.bind("c", switch_submap("SPC c-", "config"))


  require("keys.leader.eww")
  hl.bind("e", switch_submap("SPC e-", "eww"))


  require("keys.leader.layout")
  hl.bind("l", switch_submap("SPC l-", "layout"))


  require("keys.leader.toggle")
  hl.bind("t", switch_submap("SPC t-", "toggle"))


  require("keys.leader.window")
  hl.bind("w", switch_submap("SPC w-", "window"))


  require("keys.leader.workspace")
  hl.bind("SHIFT + W", switch_submap("SPC W-", "workspace"))


  hl.bind("catchall", RESET_SUBMAP, { release = true })
end)
