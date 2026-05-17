-- states
hl.bind("SUPER + q", function()
  hl.dispatch(hl.dsp.window.close())
  hl.dispatch(hl.dsp.exec_cmd("paplay " .. SOUND_EFFECTS_DIR .. "/window-close.ogg"))
end, { description = "close focused window" })

hl.bind("SUPER + ALT + q", function()
  hl.dispatch(hl.dsp.exec_cmd("hyprctl kill"))
  hl.dispatch(hl.dsp.exec_cmd("paplay " .. SOUND_EFFECTS_DIR .. "/window-close.ogg"))
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
  hl.dispatch(hl.dsp.exec_cmd("paplay " .. SOUND_EFFECTS_DIR .. "/window-pin.ogg"))
end, { description = "toggle pinned" })

hl.bind("SUPER + up", function()
  hl.dispatch(hl.dsp.window.pin({ action = "toggle" }))
  hl.dispatch(hl.dsp.exec_cmd("paplay " .. SOUND_EFFECTS_DIR .. "/window-pin.ogg"))
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
