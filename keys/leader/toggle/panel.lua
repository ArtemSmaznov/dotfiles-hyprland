hl.define_submap("panels", function()

  hl.bind("m"         , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m $(" .. SCRIPTS .. "/get-current-monitor.sh id) " .. EWW_MONITOR)       , { description = "monitor panel" })
  hl.bind("SHIFT + M" , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m 1 " .. EWW_MONITOR)                                                    , { description = "monitor panel on secondary monitor" })
  hl.bind("p"         , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m $(" .. SCRIPTS .. "/get-current-monitor.sh id) " .. EWW_PLAYGROUND)    , { description = "playground panel" })
  hl.bind("SHIFT + P" , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m 1 " .. EWW_PLAYGROUND)                                                 , { description = "playground panel on secondary monitor" })
  hl.bind("q"         , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m $(" .. SCRIPTS .. "/get-current-monitor.sh id) " .. EWW_QUICK_SETTINGS), { description = "quick-settings panel" })
  hl.bind("SHIFT + Q" , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m 1 " .. EWW_QUICK_SETTINGS)                                             , { description = "quick-settings panel on secondary monitor" })

  hl.bind("backspace", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS  .. "/which-key.sh -p 'SPC t-' toggle"))
    hl.dispatch(hl.dsp.submap("toggle"))
  end)

  hl.bind("escape" , RESET_SUBMAP , { release = true })
end)
