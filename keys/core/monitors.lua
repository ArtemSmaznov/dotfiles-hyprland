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
