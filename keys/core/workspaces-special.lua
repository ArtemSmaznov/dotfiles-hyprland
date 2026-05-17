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
