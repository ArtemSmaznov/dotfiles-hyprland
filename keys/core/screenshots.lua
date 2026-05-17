hl.bind("print"                , hl.dsp.exec_cmd(SCRIPTS .. "/screenshot.sh monitor"), { description = "fullscreen screenshot" })
hl.bind("SUPER + SHIFT + print", hl.dsp.exec_cmd(SCRIPTS .. "/screenshot.sh area")   , { description = "selection area screenshot" })
hl.bind("ALT + print"          , hl.dsp.exec_cmd(SCRIPTS .. "/screenshot.sh window") , { description = "active window screenshot" })
hl.bind("SUPER + print"        , hl.dsp.exec_cmd(SCRIPTS .. "/screenshot.sh desktop"), { description = "full desktop screenshot" })
