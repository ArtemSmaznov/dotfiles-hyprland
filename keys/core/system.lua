hl.bind("SUPER + CTRL + q" , hl.dsp.exec_cmd("uwsm stop")                   , { description = "quit Hyprland" })
hl.bind("SUPER + CTRL + r" , hl.dsp.force_renderer_reload                   , { description = "restart Hyprland" })
hl.bind("SHIFT + ALT_L"    , hl.dsp.exec_cmd(SCRIPTS .. "/toggle-lang.sh") , { description = "switch language" })

hl.bind("SUPER + CTRL + d", function()
  -- TOGGLE_EWW_WINDOW(EWW_BAR_MAIN)
  TOGGLE_BORDERS()
end, { description = "debug" })



-- TODO master escape
hl.bind("SUPER + escape" , hl.dsp.exec_cmd("echo SUPER ESCAPE") , { description = "SUPER ESCAPE" })



-- temporarily disable all keybinds
hl.bind("SUPER + slash", function()
  hl.dispatch(hl.dsp.submap("disable-binds"))
  -- TODO spawn a warning icon somewhere ⌨❎
end)

hl.define_submap("disable-binds", function()
  hl.bind("SUPER + escape", hl.dsp.submap("reset"))
end)
