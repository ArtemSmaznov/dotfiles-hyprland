local reset_submap = function()
  hl.dispatch(hl.dsp.submap("reset"))
  hl.dispatch(hl.dsp.exec_cmd(myHyprScript .. "/reset-submap.sh"))
end

--------------------------------------------------------------------------------
-- system
--------------------------------------------------------------------------------
hl.bind("SUPER + CTRL + d" , hl.dsp.exec_cmd(myVisualizer)                  , { description = "debug" })
hl.bind("SUPER + CTRL + q" , hl.dsp.exec_cmd("uwsm stop")                   , { description = "quit Hyprland" })
hl.bind("SUPER + CTRL + r" , hl.dsp.force_renderer_reload                   , { description = "restart Hyprland" })
hl.bind("SHIFT + ALT_L"    , hl.dsp.exec_cmd(myScript .. "/toggle-lang.sh") , { description = "switch language" })

-- TODO master escape
hl.bind("SUPER + escape" , hl.dsp.exec_cmd("echo SUPER ESCAPE") , { description = "SUPER ESCAPE" })



--------------------------------------------------------------------------------
-- windows
--------------------------------------------------------------------------------
-- states
hl.bind("SUPER + q", function()
  hl.dispatch(hl.dsp.window.close())
  hl.dispatch(hl.dsp.exec_cmd("paplay " .. sound_effects_dir .. "/window-close.ogg"))
end, { description = "close focused window" })

hl.bind("SUPER + ALT + q", function()
  hl.dispatch(hl.dsp.exec_cmd("hyprctl kill"))
  hl.dispatch(hl.dsp.exec_cmd("paplay " .. sound_effects_dir .. "/window-close.ogg"))
end, { description = "click window to close" })

hl.bind("SUPER + SHIFT + F11" , hl.dsp.window.fullscreen_state({ internal = -1, client = 2 }) , { description = "toggle fake fullscreen" })
hl.bind("SUPER + F11"         , hl.dsp.window.fullscreen(0)               , { description = "toggle fullscreen" })
hl.bind("SUPER + SHIFT + f"   , hl.dsp.window.fullscreen(0)               , { description = "toggle fullscreen" })
hl.bind("SUPER + m"           , hl.dsp.window.fullscreen(1)               , { description = "toggle maximize" })

hl.bind("SUPER + f", function()
  hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
  hl.dispatch(hl.dsp.window.center())
end, { description = "toggle floating" })

hl.bind("SUPER + CTRL + f", function()
  hl.dispatch(hl.dsp.window.pin({ action = "toggle" }))
  hl.dispatch(hl.dsp.exec_cmd("paplay " .. sound_effects_dir .. "/window-pin.ogg"))
end, { description = "toggle pinned" })

hl.bind("SUPER + up", function()
  hl.dispatch(hl.dsp.window.pin({ action = "toggle" }))
  hl.dispatch(hl.dsp.exec_cmd("paplay " .. sound_effects_dir .. "/window-pin.ogg"))
end, { description = "toggle pinned" })

hl.bind("SUPER + SHIFT + p" , hl.dsp.window.pseudo({ action = "toggle" }), { description = "toggle pseudo" })
hl.bind("SUPER + SHIFT + m" , hl.dsp.layout("togglesplit")               , { description = "mirror dwindle layout" })

-- window focus
hl.bind("SUPER + h", hl.dsp.focus({ direction = "left"  }), { description = "focus left window"  })
hl.bind("SUPER + j", hl.dsp.focus({ direction = "down"  }), { description = "focus below window" })
hl.bind("SUPER + k", hl.dsp.focus({ direction = "up"    }), { description = "focus above window" })
hl.bind("SUPER + l", hl.dsp.focus({ direction = "right" }), { description = "focus right window" })

hl.bind("ALT + tab"        , hl.dsp.window.cycle_next({ next = true  }), { description = "focus next window" })
hl.bind("ALT + SHIFT + tab", hl.dsp.window.cycle_next({ next = false }), { description = "focus previous window" })

-- groups
hl.bind("SUPER + ALT + tab"        , hl.dsp.group.next(), { description = "focus next window" })
hl.bind("SUPER + ALT + SHIFT + tab", hl.dsp.group.prev(), { description = "focus previous window" })

hl.bind("SUPER + left" , hl.dsp.group.prev()                           , { description = "focus prev window" })
hl.bind("SUPER + down" , hl.dsp.group.move_window({ forward = false }) , { description = "move window down in stack" })
hl.bind("SUPER + up"   , hl.dsp.group.move_window({ forward = true })  , { description = "move window up in stack" })
hl.bind("SUPER + right", hl.dsp.group.next()                           , { description = "focus next window" })

-- swapping tiled windows
hl.bind("SUPER + SHIFT + h", hl.dsp.window.swap({ direction = "left" })  , { description = "swap focused window with left window" })
hl.bind("SUPER + SHIFT + j", hl.dsp.window.swap({ direction = "down" })  , { description = "swap focused window with below window" })
hl.bind("SUPER + SHIFT + k", hl.dsp.window.swap({ direction = "up" })    , { description = "swap focused window with above window" })
hl.bind("SUPER + SHIFT + l", hl.dsp.window.swap({ direction = "right" }) , { description = "swap focused window with right window" })

-- resizing windows
local step = 40
-- hl.bind("SUPER + equal" , splitratio   , exact 1  , { description = "reset fucused window size" })

hl.bind("SUPER + CTRL + h", hl.dsp.window.resize({ x = -step , y = 0     , relative = true }) , { repeating = true , description = "grow focused window left"  })
hl.bind("SUPER + CTRL + j", hl.dsp.window.resize({ x = 0     , y = step  , relative = true }) , { repeating = true , description = "grow focused window down"  })
hl.bind("SUPER + CTRL + k", hl.dsp.window.resize({ x = 0     , y = -step , relative = true }) , { repeating = true , description = "grow focused window up"    })
hl.bind("SUPER + CTRL + l", hl.dsp.window.resize({ x = step  , y = 0     , relative = true }) , { repeating = true , description = "grow focused window right" })

-- move floating windows
hl.bind("SUPER + CTRL  + c" , hl.dsp.window.center() , { repeating = true, description = "center window" })
hl.bind("SUPER + equal"     , hl.dsp.window.center() , { repeating = true, description = "center floating window" })

hl.bind("SUPER + SHIFT + h" , hl.dsp.window.move({ x = -step , y = 0     })     , { repeating = true, description = "move floating window left"  })
hl.bind("SUPER + SHIFT + j" , hl.dsp.window.move({ x = 0     , y = step  })  , { repeating = true, description = "move floating window down"     })
hl.bind("SUPER + SHIFT + k" , hl.dsp.window.move({ x = 0     , y = -step }) , { repeating = true, description = "move floating window up"        })
hl.bind("SUPER + SHIFT + l" , hl.dsp.window.move({ x = step  , y = 0     })     , { repeating = true, description = "move floating window right" })
hl.bind("SUPER + SHIFT + h" , hl.dsp.window.move({ x = -step , y = 0     })     , { repeating = true, description = "move floating window left"  })



--------------------------------------------------------------------------------
-- monitors
--------------------------------------------------------------------------------
-- focus
hl.bind("SUPER + F1"    , hl.dsp.focus({ monitor = 0 }), { description = "move focus to monitor 1" })
hl.bind("SUPER + F2"    , hl.dsp.focus({ monitor = 1 }), { description = "move focus to monitor 2" })
hl.bind("SUPER + F3"    , hl.dsp.focus({ monitor = 2 }), { description = "move focus to monitor 3" })

-- TODO moving windows
-- hl.bind("SUPER + SHIFT + comma" , hl.dsp.window.move({ monitor = 0 }), { description = "move window to below monitor" })
-- hl.bind("SUPER + SHIFT + period", hl.dsp.window.move({ monitor = 1 }), { description = "move window to above monitor" })

-- swapping
hl.bind("SUPER + SHIFT + F1", hl.dsp.window.move({ monitor = 0 }), { description = "move window to monitor 1" })
hl.bind("SUPER + SHIFT + F2", hl.dsp.window.move({ monitor = 1 }), { description = "move window to monitor 2" })
hl.bind("SUPER + SHIFT + F3", hl.dsp.window.move({ monitor = 2 }), { description = "move window to monitor 3" })



--------------------------------------------------------------------------------
-- workspaces
--------------------------------------------------------------------------------
-- focus
hl.bind("SUPER + tab", hl.dsp.focus({ workspace = "previous" , on_current_monitor = true }) , { description = "toggle last workspace" })
hl.bind("SUPER + 1"  , hl.dsp.focus({ workspace = 1          , on_current_monitor = true }) , { description = "switch to workspace 1" })
hl.bind("SUPER + 2"  , hl.dsp.focus({ workspace = 2          , on_current_monitor = true }) , { description = "switch to workspace 2" })
hl.bind("SUPER + 3"  , hl.dsp.focus({ workspace = 3          , on_current_monitor = true }) , { description = "switch to workspace 3" })
hl.bind("SUPER + 4"  , hl.dsp.focus({ workspace = 4          , on_current_monitor = true }) , { description = "switch to workspace 4" })
hl.bind("SUPER + 5"  , hl.dsp.focus({ workspace = 5          , on_current_monitor = true }) , { description = "switch to workspace 5" })
hl.bind("SUPER + 6"  , hl.dsp.focus({ workspace = 6          , on_current_monitor = true }) , { description = "switch to workspace 6" })
hl.bind("SUPER + 7"  , hl.dsp.focus({ workspace = 7          , on_current_monitor = true }) , { description = "switch to workspace 7" })
hl.bind("SUPER + 8"  , hl.dsp.focus({ workspace = 8          , on_current_monitor = true }) , { description = "switch to workspace 8" })
hl.bind("SUPER + 9"  , hl.dsp.focus({ workspace = 9          , on_current_monitor = true }) , { description = "switch to workspace 9" })
hl.bind("SUPER + 0"  , hl.dsp.focus({ workspace = 10         , on_current_monitor = true }) , { description = "switch to workspace 10" })

-- moving windows
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1  , follow = false }), { description = "move window to workspace 1" })
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2  , follow = false }), { description = "move window to workspace 2" })
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3  , follow = false }), { description = "move window to workspace 3" })
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4  , follow = false }), { description = "move window to workspace 4" })
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5  , follow = false }), { description = "move window to workspace 5" })
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6  , follow = false }), { description = "move window to workspace 6" })
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7  , follow = false }), { description = "move window to workspace 7" })
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8  , follow = false }), { description = "move window to workspace 8" })
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9  , follow = false }), { description = "move window to workspace 9" })
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 , follow = false }), { description = "move window to workspace 10" })

-- moving windows with switching workspace
hl.bind("SUPER + SHIFT + CTRL + 1", hl.dsp.window.move({ workspace = 1  }), { description = "move window to workspace 1 with switch"  })
hl.bind("SUPER + SHIFT + CTRL + 2", hl.dsp.window.move({ workspace = 2  }), { description = "move window to workspace 2 with switch"  })
hl.bind("SUPER + SHIFT + CTRL + 3", hl.dsp.window.move({ workspace = 3  }), { description = "move window to workspace 3 with switch"  })
hl.bind("SUPER + SHIFT + CTRL + 4", hl.dsp.window.move({ workspace = 4  }), { description = "move window to workspace 4 with switch"  })
hl.bind("SUPER + SHIFT + CTRL + 5", hl.dsp.window.move({ workspace = 5  }), { description = "move window to workspace 5 with switch"  })
hl.bind("SUPER + SHIFT + CTRL + 6", hl.dsp.window.move({ workspace = 6  }), { description = "move window to workspace 6 with switch"  })
hl.bind("SUPER + SHIFT + CTRL + 7", hl.dsp.window.move({ workspace = 7  }), { description = "move window to workspace 7 with switch"  })
hl.bind("SUPER + SHIFT + CTRL + 8", hl.dsp.window.move({ workspace = 8  }), { description = "move window to workspace 8 with switch"  })
hl.bind("SUPER + SHIFT + CTRL + 9", hl.dsp.window.move({ workspace = 9  }), { description = "move window to workspace 9 with switch"  })
hl.bind("SUPER + SHIFT + CTRL + 0", hl.dsp.window.move({ workspace = 10 }), { description = "move window to workspace 10 with switch" })



--------------------------------------------------------------------------------
-- special workspaces
--------------------------------------------------------------------------------
-- toggle
hl.bind("SUPER + ALT + grave", hl.dsp.workspace.toggle_special("term"), { description = "toggle special workspace term" })
hl.bind("SUPER + ALT + 1"    , hl.dsp.workspace.toggle_special("1")   , { description = "toggle special workspace 1" })
hl.bind("SUPER + ALT + 2"    , hl.dsp.workspace.toggle_special("2")   , { description = "toggle special workspace 2" })
hl.bind("SUPER + ALT + 3"    , hl.dsp.workspace.toggle_special("3")   , { description = "toggle special workspace 3" })
hl.bind("SUPER + ALT + 4"    , hl.dsp.workspace.toggle_special("4")   , { description = "toggle special workspace 4" })
hl.bind("SUPER + ALT + 5"    , hl.dsp.workspace.toggle_special("5")   , { description = "toggle special workspace 5" })

-- moving windows
hl.bind("SUPER + ALT + SHIFT + grave", hl.dsp.window.move({ workspace = "term"      }), { description = "move window to special workspace term" })
hl.bind("SUPER + ALT + SHIFT + 1"    , hl.dsp.window.move({ workspace = "special:1" }), { description = "move window to special workspace 1"    })
hl.bind("SUPER + ALT + SHIFT + 2"    , hl.dsp.window.move({ workspace = "special:2" }), { description = "move window to special workspace 2"    })
hl.bind("SUPER + ALT + SHIFT + 3"    , hl.dsp.window.move({ workspace = "special:3" }), { description = "move window to special workspace 3"    })
hl.bind("SUPER + ALT + SHIFT + 4"    , hl.dsp.window.move({ workspace = "special:4" }), { description = "move window to special workspace 4"    })
hl.bind("SUPER + ALT + SHIFT + 5"    , hl.dsp.window.move({ workspace = "special:5" }), { description = "move window to special workspace 5"    })



--------------------------------------------------------------------------------
-- launching apps
--------------------------------------------------------------------------------
hl.bind("SUPER + grave", hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'term' 'sp-term' 'alacritty --class sp-term'")            , { description = "toggle terminal" })
hl.bind("SUPER + e"    , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'files' 'sp-files' 'alacritty --class sp-files --e vifm'"), { description = "toggle file manager" })

hl.bind("SUPER + return"          , hl.dsp.exec_cmd(myTerm       , { no_initial_focus = false }) , { description = "launch terminal"                               })
hl.bind("SUPER + ALT + return"    , hl.dsp.exec_cmd(myTerm       , { no_initial_focus = true  }) , { description = "launch terminal [silent]"                      })
hl.bind("SUPER + CTRL + return"   , hl.dsp.exec_cmd(myLauncher   , { no_initial_focus = false }) , { description = "launch launcher"                               })
hl.bind("SUPER + r"               , hl.dsp.exec_cmd(myLauncher   , { no_initial_focus = false }) , { description = "launch launcher"                               })
hl.bind("SUPER + c"               , hl.dsp.exec_cmd(myIde        , { no_initial_focus = false }) , { description = "launch ide"                                    })
hl.bind("SUPER + ALT + c"         , hl.dsp.exec_cmd(myIde        , { no_initial_focus = true  }) , { description = "launch ide [silent]"                           })
hl.bind("SUPER + SHIFT + e"       , hl.dsp.exec_cmd(myCliFiles   , { no_initial_focus = false }) , { description = "launch file manager"                           })
hl.bind("SUPER + SHIFT + ALT + e" , hl.dsp.exec_cmd(myCliFiles   , { no_initial_focus = true  }) , { description = "launch file manager [silent]"                  })
hl.bind("SUPER + b"               , hl.dsp.exec_cmd(myWebBrowser , { no_initial_focus = false }) , { description = "launch web browser"                            })
hl.bind("SUPER + ALT + b"         , hl.dsp.exec_cmd(myWebBrowser , { no_initial_focus = true  }) , { description = "launch web browser [silent]"                   })
hl.bind("SUPER + i"               , hl.dsp.exec_cmd(myIncBrowser , { no_initial_focus = false }) , { description = "launch web browser in incognito mode"          })
hl.bind("SUPER + ALT + i"         , hl.dsp.exec_cmd(myIncBrowser , { no_initial_focus = true  }) , { description = "launch web browser in incognito mode [silent]" })
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- CTRL + ALT
--------------------------------------------------------------------------------
hl.bind("CTRL + ALT + delete", hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'htop' 'sp-htop' 'alacritty --class sp-htop -e htop'"), { description = "" })
hl.bind("CTRL + ALT + end"   , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'btop' 'sp-btop' 'alacritty --class sp-btop -e btop'"), { description = "" })
hl.bind("CTRL + ALT + t"     , hl.dsp.exec_cmd(myTerm)                                                                                             , { description = "" })

-- hl.bind("CTRL ALT + a", togglespecialworkspace , audio                                                                                 , { description = "" })
-- hl.bind("CTRL ALT + a", hl.dsp.exec_cmd("")                   , [workspace special:audio] pavucontrol                                                 , { description = "" })
-- hl.bind("CTRL ALT + a", hl.dsp.exec_cmd("")                   , [workspace special:audio] qpwgraph                                                    , { description = "" })
-- hl.bind("CTRL ALT + v", hl.dsp.exec_cmd("")                   , $myHyprScript/toggle-special-workspace.sh"volume""pavucontrol""pavucontrol"           , { description = "" })
-- hl.bind("CTRL ALT + v", hl.dsp.exec_cmd("")                   , $myHyprScript/toggle-special-workspace.sh"volume""pavucontrol""pavucontrol & qpwgraph", { description = "" })
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- media keys
--------------------------------------------------------------------------------
-- system
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(myScript .. "/set-volume.sh + " .. volume_step), { locked = true, description = "increase system volume" })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(myScript .. "/set-volume.sh - " .. volume_step), { locked = true, description = "decrease system volume" })
hl.bind("XF86AudioMute"       , hl.dsp.exec_cmd(myScript .. "/toggle-mute.sh")                 , { locked = true, description = "toggle mute" })

-- player audio
hl.bind("XF86AudioPlay"              , hl.dsp.exec_cmd(myScript .. "/playerctl.sh toggle")  , { locked = true, description = "player play/pause" })
hl.bind("XF86AudioStop"              , hl.dsp.exec_cmd(myScript .. "/playerctl.sh stop")    , { locked = true, description = "player stop" })
hl.bind("XF86AudioPrev"              , hl.dsp.exec_cmd(myScript .. "/playerctl.sh prev")    , { locked = true, description = "player prev" })
hl.bind("XF86AudioNext"              , hl.dsp.exec_cmd(myScript .. "/playerctl.sh next")    , { locked = true, description = "player next" })
hl.bind("CTRL + XF86AudioPlay"       , hl.dsp.exec_cmd(myScript .. "/musictl.sh single")    , { locked = true, description = "music [s] single mode" })
hl.bind("CTRL + XF86AudioStop"       , hl.dsp.exec_cmd(myScript .. "/musictl.sh random")    , { locked = true, description = "music [z] shuffle mode" })
hl.bind("CTRL + XF86AudioPrev"       , hl.dsp.exec_cmd(myScript .. "/musictl.sh replay")    , { locked = true, description = "replay track from the beginning" })
hl.bind("CTRL + XF86AudioNext"       , hl.dsp.exec_cmd(myScript .. "/musictl.sh skip")      , { locked = true, description = "skip track and remove from queue" })
hl.bind("CTRL + XF86AudioRaiseVolume", hl.dsp.exec_cmd(myScript .. "/playerctl.sh vol-up")  , { locked = true, description = "player increase volume" })
hl.bind("CTRL + XF86AudioLowerVolume", hl.dsp.exec_cmd(myScript .. "/playerctl.sh vol-down"), { locked = true, description = "player decrease volume" })
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- [PrtSc] screenshots
--------------------------------------------------------------------------------
hl.bind("print"                , hl.dsp.exec_cmd(myScript .. "/screenshot.sh monitor"), { description = "fullscreen screenshot" })
hl.bind("SUPER + SHIFT + print", hl.dsp.exec_cmd(myScript .. "/screenshot.sh area")   , { description = "selection area screenshot" })
hl.bind("ALT + print"          , hl.dsp.exec_cmd(myScript .. "/screenshot.sh window") , { description = "active window screenshot" })
hl.bind("SUPER + print"        , hl.dsp.exec_cmd(myScript .. "/screenshot.sh desktop"), { description = "full desktop screenshot" })
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- [\] notifications
--------------------------------------------------------------------------------
hl.bind("SUPER + backslash", function()
  hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'M-\\\\-' dm-notify"))
  hl.dispatch(hl.dsp.submap("dm-notify"))
end)

hl.define_submap("dm-notify"  , function()
  hl.bind("backspace"         , hl.dsp.exec_cmd(myDMScript .. "/dm-notify close")  , { description = "clear last notification"   })
  -- hl.bind("SUPER + backslash" , hl.dsp.exec_cmd(myDMScript .. "/dm-notify recent") , { description = "show last notification"    })
  hl.bind("backslash"         , hl.dsp.exec_cmd(myDMScript .. "/dm-notify recent") , { description = "show last notification"    })
  hl.bind("SHIFT + BACKSLASH" , hl.dsp.exec_cmd(myDMScript .. "/dm-notify recents"), { description = "show recent notifications" })
  hl.bind("a"                 , hl.dsp.exec_cmd(myDMScript .. "/dm-notify context"), { description = "open last notification"    })
  hl.bind("c"                 , hl.dsp.exec_cmd(myDMScript .. "/dm-notify close")  , { description = "clear last notification"   })
  hl.bind("SHIFT + C"         , hl.dsp.exec_cmd(myDMScript .. "/dm-notify clear")  , { description = "clear all notifications"   })
  hl.bind("r"                 , hl.dsp.exec_cmd(myDMScript .. "/dm-notify recents"), { description = "show recent notifications" })

  hl.bind("catchall", reset_submap, { release = true })
  hl.bind("a"       , reset_submap, { release = true })
end)
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- [d] dm-scripts
--------------------------------------------------------------------------------
hl.bind("SUPER + d", function()
  hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'M-d-' dm-global"))
  hl.dispatch(hl.dsp.submap("dm-global"))
end)

hl.define_submap("dm-global", function()
  hl.bind("backslash"       , hl.dsp.exec_cmd(myDMScript .. "/dm-notify")    , { description = "dm-notify" })
  hl.bind("a"               , hl.dsp.exec_cmd(myDMScript .. "/dm-audio")     , { description = "dm-audio" })
  hl.bind("b"               , hl.dsp.exec_cmd(myDMScript .. "/dm-bookman")   , { description = "dm-bookman" })
  -- hl.bind("SUPER + d"       , hl.dsp.exec_cmd(myDMScript .. "/dm-master")    , { description = "dm-master" })
  hl.bind("k"               , hl.dsp.exec_cmd(myDMScript .. "/dm-keys")      , { description = "dm-keys" })
  hl.bind("n"               , hl.dsp.exec_cmd(myDMScript .. "/dm-notify")    , { description = "dm-notify" })
  hl.bind("p"               , hl.dsp.exec_cmd(myDMScript .. "/dm-player")    , { description = "dm-player" })
  hl.bind("r"               , hl.dsp.exec_cmd(myDMScript .. "/dm-record")    , { description = "dm-record" })
  hl.bind("s"               , hl.dsp.exec_cmd(myDMScript .. "/dm-screenshot"), { description = "dm-screenshot" })
  hl.bind("t"               , hl.dsp.exec_cmd(myDMScript .. "/dm-theme")     , { description = "dm-theme" })
  hl.bind("w"               , hl.dsp.exec_cmd(myDMScript .. "/dm-wallpaper") , { description = "dm-wallpaper" })
  hl.bind("z"               , hl.dsp.exec_cmd(myDMScript .. "/dm-power")     , { description = "dm-power" })

  hl.bind("catchall"  , reset_submap, { release = true })
  hl.bind("backslash" , reset_submap, { release = true })
  hl.bind("a"         , reset_submap, { release = true })
  hl.bind("b"         , reset_submap, { release = true })
  -- hl.bind("SUPER + d" , reset_submap, { release = true })
  hl.bind("k"         , reset_submap, { release = true })
  hl.bind("n"         , reset_submap, { release = true })
  hl.bind("p"         , reset_submap, { release = true })
  hl.bind("r"         , reset_submap, { release = true })
  hl.bind("s"         , reset_submap, { release = true })
  hl.bind("t"         , reset_submap, { release = true })
  hl.bind("w"         , reset_submap, { release = true })
  hl.bind("z"         , reset_submap, { release = true })
end)
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- [o] open
--------------------------------------------------------------------------------
hl.bind("SUPER + o", function()
  hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'M-o-' open"))
  hl.dispatch(hl.dsp.submap("open"))
end)

hl.define_submap("open", function()
  hl.bind("b"          , hl.dsp.exec_cmd(mySysBluetooth)                                                                                  , { description = "bluetooth" })
  hl.bind("c"          , hl.dsp.exec_cmd(myColorPicker)                                                                                   , { description = "color picker" })
  hl.bind("d"          , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'chats' $myDiscordClass $myDiscord")               , { description = "toggle chats" })
  hl.bind("e"          , hl.dsp.exec_cmd("myEmail")                                                                                       , { description = "email client" })
  hl.bind("g"          , hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'M-o g-' games")                                                , { description = "" })
  hl.bind("g"          , hl.dsp.submap("games")                                                                                           , { description = "+games" })
  hl.bind("i"          , hl.dsp.exec_cmd("vimiv $XDG_PICTURES_DIR")                                                                       , { description = "image viewer" })
  hl.bind("m"          , hl.dsp.exec_cmd(myCliMusic)                                                                                      , { description = "music player" })
  hl.bind("SHIFT + M"  , hl.dsp.exec_cmd(myCliMusic                                                                                       , { workspace = 9, no_initial_focus = true }) , { description = "music player on default workspace" })
  hl.bind("t"          , hl.dsp.exec_cmd(myTorBrowser)                                                                                    , { description = "tor browser" })
  hl.bind("v"          , hl.dsp.exec_cmd(myVolumeControl)                                                                                 , { description = "volume control" })
  hl.bind("w"          , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'chats' 'whatsapp-for-linux' 'whatsapp-for-linux'"), { description = "toggle whatsapp" })

  hl.bind("catchall"  , reset_submap, { release = true })
  hl.bind("b"         , reset_submap, { release = true })
  hl.bind("c"         , reset_submap, { release = true })
  hl.bind("d"         , reset_submap, { release = true })
  hl.bind("e"         , reset_submap, { release = true })
  hl.bind("i"         , reset_submap, { release = true })
  hl.bind("m"         , reset_submap, { release = true })
  hl.bind("SHIFT + M" , reset_submap, { release = true })
  hl.bind("t"         , reset_submap, { release = true })
  hl.bind("v"         , reset_submap, { release = true })
  hl.bind("w"         , reset_submap, { release = true })
end)

-- [o] [g] open games
hl.define_submap("games", function()
  hl.bind("d"           , hl.dsp.exec_cmd(myGZDoom)  , { description = "gzdoom" })
  hl.bind("f"           , hl.dsp.exec_cmd(myFHeroes2), { description = "fheroes2 (homm2)" })
  -- hl.bind("g"           , hl.dsp.exec_cmd(myGameHub) , { description = "gamehub" })
  hl.bind("h"           , hl.dsp.exec_cmd(myHeroic)  , { description = "heroic" })
  hl.bind("l"           , hl.dsp.exec_cmd(myLutris)  , { description = "lutris" })
  hl.bind("n"           , hl.dsp.exec_cmd(myNexus)   , { description = "Nexus Mods App" })
  hl.bind("s"           , hl.dsp.exec_cmd(mySteam)   , { description = "steam" })
  hl.bind("v"           , hl.dsp.exec_cmd(myVCMI)    , { description = "vcmi (homm3)" })
  hl.bind("x"           , hl.dsp.exec_cmd(myNexus)   , { description = "Nexus Mods App" })

  hl.bind("catchall" , reset_submap                                                   , { release = true })
  hl.bind("backspace", hl.dsp.exec_cmd(myEwwScript  .. "/which-key.sh -p 'M-o-' open"), { description = "" })
  hl.bind("backspace", hl.dsp.submap("open")                                          , { description = "" })
  hl.bind("d"        , reset_submap                                                   , { release = true })
  hl.bind("f"        , reset_submap                                                   , { release = true })
  -- hl.bind("g"        , reset_submap                                                   , { release = true })
  hl.bind("h"        , reset_submap                                                   , { release = true })
  hl.bind("l"        , reset_submap                                                   , { release = true })
  hl.bind("n"        , reset_submap                                                   , { release = true })
  hl.bind("s"        , reset_submap                                                   , { release = true })
  hl.bind("v"        , reset_submap                                                   , { release = true })
  hl.bind("x"        , reset_submap                                                   , { release = true })
end)
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- [p] pass
--------------------------------------------------------------------------------
hl.bind("SUPER + p", function()
  hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'M-p-' pass"))
  hl.dispatch(hl.dsp.submap("pass"))
end)

hl.define_submap("pass", function()
  hl.bind("c"          , hl.dsp.exec_cmd("wofi-pass --squash")                  , { description = "copy field" })
  hl.bind("p"          , hl.dsp.exec_cmd("wofi-pass --squash --type")           , { description = "fill field" })
  hl.bind("a"          , hl.dsp.exec_cmd("wofi-pass --squash --type --autotype"), { description = "autofill password" })

  hl.bind("catchall", reset_submap, { release = true })
  hl.bind("c"       , reset_submap, { release = true })
  hl.bind("p"       , reset_submap, { release = true })
  hl.bind("a"       , reset_submap, { release = true })
end)
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- [s] scratchpad
--------------------------------------------------------------------------------
hl.bind("SUPER + s", function()
  hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'M-s-' scratchpad"))
  hl.dispatch(hl.dsp.submap("scratchpad"))
end)

hl.define_submap("scratchpad", function()
  hl.bind("a"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'anki' 'anki' 'anki'")                                          , { description = "anki" })
  hl.bind("b"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'bluetooth' " .. mySysBluetooth .. mySysBluetooth)              , { description = "bluetooth" })
  hl.bind("c"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'calculator' 'org.gnome.Calculator' 'gnome-calculator'")        , { description = "calculator" })
  hl.bind("d"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'chats' " .. myDiscordClass .. myDiscord)                       , { description = "discord" })
  hl.bind("e"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'email' " .. myEmailClass .. myEmail)                           , { description = "email client" })
  hl.bind("m"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'music' 'sp-music' 'alacritty --class sp-music -e ncmpcpp'")    , { description = "music player" })
  hl.bind("p"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'phone' 'scrcpy' 'scrcpy'")                                     , { description = "phone" })
  hl.bind("t"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'torrent' 'com.transmissionbt.transmission' 'transmission-gtk'"), { description = "torrent" })
  hl.bind("v"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'vm' 'virt-manager' 'virt-manager'")                            , { description = "vm" })
  hl.bind("w"                , hl.dsp.exec_cmd(myHyprScript .. "/toggle-special-workspace.sh 'chats' 'whatsapp-for-linux' 'whatsapp-for-linux'")             , { description = "whatsapp" })

  hl.bind("catchall", reset_submap, { release = true })
  hl.bind("a"       , reset_submap, { release = true })
  hl.bind("b"       , reset_submap, { release = true })
  hl.bind("c"       , reset_submap, { release = true })
  hl.bind("d"       , reset_submap, { release = true })
  hl.bind("e"       , reset_submap, { release = true })
  hl.bind("m"       , reset_submap, { release = true })
  hl.bind("p"       , reset_submap, { release = true })
  hl.bind("t"       , reset_submap, { release = true })
  hl.bind("v"       , reset_submap, { release = true })
  hl.bind("w"       , reset_submap, { release = true })
end)
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- [t] toggle
--------------------------------------------------------------------------------
hl.bind("SUPER + t", function()
  hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'M-t-' toggle"))
  hl.dispatch(hl.dsp.submap("toggle"))
end)

hl.define_submap("toggle", function()
  -- TODO
end)
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- [z] power management
--------------------------------------------------------------------------------
hl.bind("SUPER + z", function()
  hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'M-z-' dm-power"))
  hl.dispatch(hl.dsp.submap("dm-power"))
end)

hl.define_submap("dm-power", function()
  hl.bind("c"              , hl.dsp.exec_cmd(myDMScript .. "/dm-power controller")         , { description = "disconnect all controllers" })
  hl.bind("l"              , hl.dsp.exec_cmd(myDMScript .. "/dm-power lock")               , { description = "lock screen" })
  hl.bind("SHIFT + L"      , hl.dsp.exec_cmd("loginctl terminate-session'$XDG_SESSION_ID'"), { description = "logout" })
  hl.bind("p"              , hl.dsp.exec_cmd(myDMScript .. "/dm-power poweroff")           , { description = "shutdown system" })
  hl.bind("r"              , hl.dsp.exec_cmd(myDMScript .. "/dm-power reboot")             , { description = "reboot system" })
  hl.bind("s"              , hl.dsp.exec_cmd(myDMScript .. "/dm-power suspend")            , { description = "suspend system" })
  hl.bind("z"              , hl.dsp.exec_cmd(myDMScript .. "/dm-power suspend")            , { description = "suspend system" })
  -- hl.bind("SUPER + z"      , hl.dsp.exec_cmd(myDMScript .. "/dm-power suspend")            , { description = "suspend system" })

  hl.bind("catchall"  , reset_submap, { release = true })
  hl.bind("c"         , reset_submap, { release = true })
  hl.bind("l"         , reset_submap, { release = true })
  hl.bind("SHIFT + L" , reset_submap, { release = true })
  hl.bind("p"         , reset_submap, { release = true })
  hl.bind("r"         , reset_submap, { release = true })
  hl.bind("s"         , reset_submap, { release = true })
  hl.bind("z"         , reset_submap, { release = true })
  -- hl.bind("SUPER + z" , reset_submap, { release = true })
end)
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- CTRL + ALT + O
--------------------------------------------------------------------------------
hl.bind("CTRL + ALT + o", function()
  hl.dispatch(hl.dsp.exec_cmd(myEwwScript .. "/which-key.sh -p 'M-z-' dm-power"))
  hl.dispatch(hl.dsp.submap("open-secondary"))
end)

hl.define_submap("open-secondary", function()
  hl.bind("e"                    , hl.dsp.exec_cmd(myFiles)       , { description = "gui file manager" })
  hl.bind("g"                    , hl.dsp.exec_cmd(myImgEditor)   , { description = "image editor" })
  hl.bind("p"                    , hl.dsp.exec_cmd(myPhotoLibrary), { description = "photo library" })
  hl.bind("r"                    , hl.dsp.exec_cmd(myVctEditor)   , { description = "vector image editor" })
  hl.bind("v"                    , hl.dsp.exec_cmd(myVidEditor)   , { description = "video editor" })

  hl.bind("catchall" , reset_submap, { release = true })
  hl.bind("e"        , reset_submap, { release = true })
  hl.bind("g"        , reset_submap, { release = true })
  hl.bind("p"        , reset_submap, { release = true })
  hl.bind("r"        , reset_submap, { release = true })
  hl.bind("v"        , reset_submap, { release = true })
end)
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- temporarily disable all keybinds
--------------------------------------------------------------------------------
hl.bind("SUPER + slash", function()
  hl.dispatch(hl.dsp.submap("disable-binds"))
  -- TODO spawn a warning icon somewhere ⌨❎
end)

hl.define_submap("disable-binds", function()
  hl.bind("SUPER + escape", hl.dsp.submap("reset"))
end)
