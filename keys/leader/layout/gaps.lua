hl.define_submap("gaps", function()

  hl.bind("g"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " toggle")  , { description = "toggle" })
  hl.bind("0"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " reset")   , { description = "reset" })
  hl.bind("minus"        , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " shrink 1"), { repeating = true, description = "shrink" })
  hl.bind("equal"        , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " grow 1")  , { repeating = true, description = "grow" })
  hl.bind("SHIFT + 0"    , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " disable") , { description = "disable" })
  hl.bind("SHIFT + minus", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " shrink 5"), { repeating = true, description = "shrink more" })
  hl.bind("SHIFT + equal", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. BORDERS .. " grow 5")     , { repeating = true, description = "grow more" })

  hl.bind("backspace", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC l-' layout"))
    hl.dispatch(hl.dsp.submap("layout"))
  end)

  hl.bind("catchall" , RESET_SUBMAP, { release = true })
end)
