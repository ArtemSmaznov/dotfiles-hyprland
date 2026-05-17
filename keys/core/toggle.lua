hl.bind("SUPER + t", function()
  hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'M-t-' toggle"))
  hl.dispatch(hl.dsp.submap("toggle"))
end)
