local reset_submap = function()
  hl.dispatch(hl.dsp.submap("reset"))
  hl.dispatch(hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/reset-submap.sh"))
end

--------------------------------------------------------------------------------

hl.bind("SUPER + space", hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
hl.bind("SUPER + space", hl.dsp.submap("leader")                                         , { description = "" })

hl.define_submap("leader", function()
  hl.bind("c", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC c-' config"))
    hl.dispatch(hl.dsp.submap("config"))
  end, { description = "+config" })


  hl.bind("e", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC e-' eww"))
    hl.dispatch(hl.dsp.submap("eww"))
  end, { description = "+Elkowars Wacky Widgets" })


  hl.bind("l", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC l-' layout"))
    hl.dispatch(hl.dsp.submap("layout"))
  end, { description = "+layout" })


  hl.bind("t", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC t-' toggle"))
    hl.dispatch(hl.dsp.submap("toggle"))
  end, { description = "+toggle" })


  hl.bind("w", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w-' window"))
    hl.dispatch(hl.dsp.submap("window"))
  end, { description = "+window" })


  hl.bind("SHIFT + W", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC W-' workspace"))
    hl.dispatch(hl.dsp.submap("workspace"))
  end, { description = "+workspace" })


  hl.bind("catchall", reset_submap, { release = true })
end)
--------------------------------------------------------------------------------
-- [c] config
--------------------------------------------------------------------------------
hl.define_submap("config", function()
  hl.bind("a", function()
    hl.dispatch(hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC c a-' autostart"))
    hl.dispatch(hl.dsp.exec_cmd("eww open " .. EWW_AUTOSTART))
    hl.dispatch(hl.dsp.submap("autostart"))
  end, { description = "open autostart list" })

  hl.bind("catchall", reset_submap, { release = true })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                         , { description = "" })
  hl.bind("a"        , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/reset-submap.sh")             , { release = true, description = "" })
end)

-- [c] config → [a] autostart
--------------------------------------------------------------------------------
hl.define_submap("autostart", function()
  hl.bind("b", hl.dsp.exec_cmd(EXILE .. "autostart toggle blueman-applet       && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle bluetooth" })
  hl.bind("d", hl.dsp.exec_cmd(EXILE .. "autostart toggle dunst                && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle dunst" })
  hl.bind("e", hl.dsp.exec_cmd(EXILE .. "autostart toggle emacs                && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle emacs" })
  hl.bind("k", hl.dsp.exec_cmd(EXILE .. "autostart toggle kdeconnect-indicator && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle kdeconnect" })
  hl.bind("l", hl.dsp.exec_cmd(EXILE .. "autostart toggle lutris               && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle lutris" })
  hl.bind("n", hl.dsp.exec_cmd(EXILE .. "autostart toggle nextcloud            && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle nextcloud" })
  hl.bind("q", hl.dsp.exec_cmd(EXILE .. "autostart toggle qutebrowser          && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle browser" })
  hl.bind("s", hl.dsp.exec_cmd(EXILE .. "autostart toggle steam                && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle steam" })
  hl.bind("t", hl.dsp.exec_cmd(EXILE .. "autostart toggle thunderbird          && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle thunderbird" })

  hl.bind("catchall", reset_submap, { release = true })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS  .. "/which-key.sh -p 'SPC c-' config"), { description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd("eww close " .. EWW_AUTOSTART))
  hl.bind("backspace", hl.dsp.submap("config"))
end)

--------------------------------------------------------------------------------
-- [e] eww
--------------------------------------------------------------------------------
hl.define_submap("eww", function()
  hl.bind("d"         , hl.dsp.exec_cmd("eww set debug=true")          , { description = "toggle debug panel" })
  hl.bind("p"         , hl.dsp.exec_cmd("eww open --toggle playground"), { description = "open playground" })

  hl.bind("catchall" , reset_submap                                                     , { release = true })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS  .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                          , { description = "" })
  hl.bind("d"        , reset_submap                                                     , { release = true })
  hl.bind("p"        , reset_submap                                                     , { release = true })
end)
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- [l] layout
--------------------------------------------------------------------------------
hl.define_submap("layout", function()
  hl.bind("g"            , hl.dsp.exec_cmd(EWW_SCRIPTS  .. "/which-key.sh -p 'SPC l g-' gaps"), { description = "" })
  hl.bind("d"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh set dwindle")       , { description = "dwindle" })
  hl.bind("g"            , hl.dsp.submap("gaps")                                              , { description = "+gaps" })
  hl.bind("l"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh toggle")            , { description = "switch layout" })
  hl.bind("m"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh set master")        , { description = "master" })
  hl.bind("s"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/layoutctl.sh set scrolling")     , { description = "scrolling" })

  hl.bind("catchall" , reset_submap                                                     , { release = true })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                         , { description = "" })
end)

-- [l] layout → [g] gaps
hl.define_submap("gaps"  , function()
  hl.bind("g"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " toggle")  , { description = "toggle" })
  hl.bind("0"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " reset")   , { description = "reset" })
  hl.bind("minus"        , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " shrink 1"), { repeating = true, description = "shrink" })
  hl.bind("equal"        , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " grow 1")  , { repeating = true, description = "grow" })
  hl.bind("SHIFT + 0"    , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " disable") , { description = "disable" })
  hl.bind("SHIFT + minus", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " shrink 5"), { repeating = true, description = "shrink more" })
  hl.bind("SHIFT + equal", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. BORDERS .. " grow 5")     , { repeating = true, description = "grow more" })
end)
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- [t] toggle
--------------------------------------------------------------------------------
hl.define_submap("toggle", function()
  hl.bind("b"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh " .. BORDERS .. " toggle")             , { description = "window borders" })
  hl.bind("c"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-corners.sh " .. CORNERS)                     , { description = "rounded corners" })
  hl.bind("d"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-dimming.sh 1")                               , { description = "window dimming" })
  hl.bind("g"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/gapctl.sh " .. GAPS_INNER .. " toggle")             , { description = "window gaps" })
  hl.bind("p"            , hl.dsp.exec_cmd(EWW_SCRIPTS  .. "/which-key.sh -p 'SPC t p-' panels")                 , { description = "" })
  hl.bind("p"            , hl.dsp.submap("panels")                                                               , { description = "+panels" })
  hl.bind("q"            , hl.dsp.exec_cmd(EWW_SCRIPTS  .. "/which-key.sh -p 'SPC t q-' quick-settings")         , { description = "" })
  hl.bind("q"            , hl.dsp.submap("quick-settings")                                                       , { description = "+quick-settings" })
  hl.bind("s"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-status-bar.sh")                              , { description = "status bar" })
  hl.bind("z"            , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-zen.sh " .. BORDERS .. CORNERS .. GAPS_INNER), { description = "zen mode" })

  hl.bind("catchall" , reset_submap                                                     , { release = true })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS  .. "/which-key.sh -p 'SPC-' leader"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                          , { description = "" })
  hl.bind("b"        , reset_submap                                                     , { release = true })
  hl.bind("c"        , reset_submap                                                     , { release = true })
  hl.bind("d"        , reset_submap                                                     , { release = true })
  hl.bind("g"        , reset_submap                                                     , { release = true })
  hl.bind("s"        , reset_submap                                                     , { release = true })
  hl.bind("z"        , reset_submap                                                     , { release = true })
end)

-- [t] toggle → [p] panels
hl.define_submap("panels", function()
  hl.bind("m"            , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m $(" .. SCRIPTS .. "/get-current-monitor.sh id) " .. EWW_MONITOR)       , { description = "monitor panel" })
  hl.bind("SHIFT + M"    , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m 1 " .. EWW_MONITOR)                                                     , { description = "monitor panel on secondary monitor" })
  hl.bind("p"            , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m $(" .. SCRIPTS .. "/get-current-monitor.sh id) " .. EWW_PLAYGROUND)    , { description = "playground panel" })
  hl.bind("SHIFT + P"    , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m 1 " .. EWW_PLAYGROUND)                                                  , { description = "playground panel on secondary monitor" })
  hl.bind("q"            , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m $(" .. SCRIPTS .. "/get-current-monitor.sh id) " .. EWW_QUICK_SETTINGS), { description = "quick-settings panel" })
  hl.bind("SHIFT + Q"    , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/toggle-window.sh -m 1 " .. EWW_QUICK_SETTINGS)                                              , { description = "quick-settings panel on secondary monitor" })

  hl.bind("escape"   , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/reset-submap.sh")                , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS  .. "/which-key.sh -p 'SPC t-' toggle"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("toggle")                                            , { description = "" })
end)

-- [t] toggle → [q] quick settings
hl.define_submap("quick-settings", function()
  hl.bind("b"                    , hl.dsp.exec_cmd("systemd-run --user -u btctl-toggle.service -- " .. SCRIPTS .. "/btctl.sh toggle")         , { description = "bluetooth" })
  hl.bind("e"                    , hl.dsp.exec_cmd(SCRIPTS .. "/netctl.sh toggle ethernet")                                                   , { description = "ethernet" })
  hl.bind("h"                    , hl.dsp.exec_cmd("systemd-run --user -u btctl-headphones.service -- " .. SCRIPTS .. "/toggle-headphones.sh"), { description = "bluetooth headphones" })
  hl.bind("s"                    , hl.dsp.exec_cmd("systemd-run --user -u btctl-speakers.service -- " .. SCRIPTS .. "/toggle-speakers.sh")    , { description = "bluetooth speakers" })
  hl.bind("v"                    , hl.dsp.exec_cmd(SCRIPTS .. "/vpnctl.sh toggle")                                                            , { description = "vpn" })
  hl.bind("w"                    , hl.dsp.exec_cmd(SCRIPTS .. "/netctl.sh toggle wifi")                                                       , { description = "wi-fi" })

  hl.bind("escape"   , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/reset-submap.sh")                , { release = true, description = "" })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS  .. "/which-key.sh -p 'SPC t-' toggle"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("toggle")                                            , { description = "" })
end)
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- [w] window
--------------------------------------------------------------------------------
hl.define_submap("window", function()
  hl.bind("b"            , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w b-' borders") , { description = "" })
  hl.bind("b"            , hl.dsp.submap("borders")                                              , { description = "+borders" })
  hl.bind("s"            , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w s-' stack  ") , { description = "" })
  hl.bind("s"            , hl.dsp.submap("stack")                                                , { description = "+stack" })

  hl.bind("catchall" , reset_submap                                                     , { release = true })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader") , { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                          , { description = "" })
end)

-- [w] window → [b] borders
hl.define_submap("borders", function()
  hl.bind("b"             , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders toggle")   ,  { description = "toggle" })
  hl.bind("0"             , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders reset")    ,  { description = "reset" })
  hl.bind("minus"         , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders shrink 1") ,  { description = "shrink" })
  hl.bind("equal"         , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders grow 1")   ,  { description = "grow" })
  hl.bind("SHIFT + 0"     , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders disable")  ,  { description = "disable" })
  hl.bind("SHIFT + minus" , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders shrink 5") ,  { description = "shrink more" })
  hl.bind("SHIFT + equal" , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/borderctl.sh $borders grow 5")   ,  { description = "grow more" })

  hl.bind("catchall" , reset_submap                                                     , { release = true })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w-' window") , { description = "" })
  hl.bind("backspace", hl.dsp.submap("window")                                            , { description = "" })
end)

-- [w] window → [s] stack
hl.define_submap("stack", function()
  hl.bind("tab"         , hl.dsp.group.next()                                 , { description = "next window" })
  hl.bind("l"           , hl.dsp.group.lock_active({ action = "toggle" })     , { description = "toggle lock on stack" })
  hl.bind("SHIFT + L"   , hl.dsp.group.lock({ action = "toggle" })            , { description = "toggle lock on all stacks" })
  hl.bind("s"           , hl.dsp.group.toggle()                               , { description = "toggle window stacking" })
  hl.bind("x"           , hl.dsp.window.deny_from_group({ action = "toggle" }), { description = "restict window from stacking" })

  hl.bind("catchall"  , reset_submap                                                       , { release = true })
  hl.bind("backspace" , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w-' window") , { description = "" })
  hl.bind("backspace" , hl.dsp.submap("window")                                            , { description = "" })
  hl.bind("l"         , reset_submap                                                       , { release = true })
  hl.bind("SHIFT + L" , reset_submap                                                       , { release = true })
  hl.bind("s"         , reset_submap                                                       , { release = true })
  hl.bind("x"         , reset_submap                                                       , { release = true })
end)
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- [W] workspace
--------------------------------------------------------------------------------
hl.define_submap("workspace", function()
  hl.bind("b"               , hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC w b-' borders") , { description = "" })
  hl.bind("b"               , hl.dsp.submap("borders")                                              , { description = "+borders" })

  hl.bind("catchall"  , reset_submap                                                       , { release = true })
  hl.bind("backspace", hl.dsp.exec_cmd(EWW_SCRIPTS .. "/which-key.sh -p 'SPC-' leader") , { description = "" })
  hl.bind("backspace", hl.dsp.submap("leader")                                          , { description = "" })
end)
--------------------------------------------------------------------------------
