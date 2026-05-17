hl.define_submap("borders", function()

  hl.bind("b"             , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders toggle")   ,  { description = "toggle" })
  hl.bind("0"             , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders reset")    ,  { description = "reset" })
  hl.bind("minus"         , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders shrink 1") ,  { description = "shrink" })
  hl.bind("equal"         , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders grow 1")   ,  { description = "grow" })
  hl.bind("SHIFT + 0"     , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders disable")  ,  { description = "disable" })
  hl.bind("SHIFT + minus" , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders shrink 5") ,  { description = "shrink more" })
  hl.bind("SHIFT + equal" , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders grow 5")   ,  { description = "grow more" })

  hl.bind("backspace", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w-' window"))
    hl.dispatch(hl.dsp.submap("window"))
  end)

  hl.bind("catchall" , RESET_SUBMAP , { release = true })
end)
