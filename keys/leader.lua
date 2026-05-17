hl.bind("SUPER + space", hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
hl.bind("SUPER + space", hl.dsp.submap("leader")                                         , { description = "" })

hl.define_submap("leader", function()
  hl.bind("c", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC c-' config"))
    hl.dispatch(hl.dsp.submap("config"))
  end, { description = "+config" })
  require("keys.leader.config")


  hl.bind("e", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC e-' eww"))
    hl.dispatch(hl.dsp.submap("eww"))
  end, { description = "+Elkowars Wacky Widgets" })
  require("keys.leader.eww")


  hl.bind("l", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC l-' layout"))
    hl.dispatch(hl.dsp.submap("layout"))
  end, { description = "+layout" })
  require("keys.leader.layout")


  hl.bind("t", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC t-' toggle"))
    hl.dispatch(hl.dsp.submap("toggle"))
  end, { description = "+toggle" })
  require("keys.leader.toggle")


  hl.bind("w", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w-' window"))
    hl.dispatch(hl.dsp.submap("window"))
  end, { description = "+window" })
  require("keys.leader.window")


  hl.bind("SHIFT + W", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC W-' workspace"))
    hl.dispatch(hl.dsp.submap("workspace"))
  end, { description = "+workspace" })
  require("keys.leader.workspace")


  hl.bind("catchall", RESET_SUBMAP, { release = true })
end)
