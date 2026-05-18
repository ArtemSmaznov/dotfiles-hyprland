hl.define_submap("quick-settings", function()

  hl.bind("b" , hl.dsp.exec_cmd("systemd-run --user -u btctl-toggle.service -- " .. SCRIPTS .. "/btctl.sh toggle")         , { description = "bluetooth" })
  hl.bind("e" , hl.dsp.exec_cmd(SCRIPTS .. "/netctl.sh toggle ethernet")                                                   , { description = "ethernet" })
  hl.bind("h" , hl.dsp.exec_cmd("systemd-run --user -u btctl-headphones.service -- " .. SCRIPTS .. "/toggle-headphones.sh"), { description = "bluetooth headphones" })
  hl.bind("s" , hl.dsp.exec_cmd("systemd-run --user -u btctl-speakers.service -- " .. SCRIPTS .. "/toggle-speakers.sh")    , { description = "bluetooth speakers" })
  hl.bind("v" , hl.dsp.exec_cmd(SCRIPTS .. "/vpnctl.sh toggle")                                                            , { description = "vpn" })
  hl.bind("w" , hl.dsp.exec_cmd(SCRIPTS .. "/netctl.sh toggle wifi")                                                       , { description = "wi-fi" })

  hl.bind("backspace", switch_submap("SPC t-", "toggle"))

  hl.bind("escape" , RESET_SUBMAP , { release = true })
end)
