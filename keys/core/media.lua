-- system
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(SCRIPTS .. "/set-volume.sh + " .. VOLUME_STEP), { locked = true, description = "increase system volume" })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(SCRIPTS .. "/set-volume.sh - " .. VOLUME_STEP), { locked = true, description = "decrease system volume" })
hl.bind("XF86AudioMute"       , hl.dsp.exec_cmd(SCRIPTS .. "/toggle-mute.sh")                 , { locked = true, description = "toggle mute" })

-- player audio
hl.bind("XF86AudioPlay"              , hl.dsp.exec_cmd(SCRIPTS .. "/playerctl.sh toggle")  , { locked = true, description = "player play/pause" })
hl.bind("XF86AudioStop"              , hl.dsp.exec_cmd(SCRIPTS .. "/playerctl.sh stop")    , { locked = true, description = "player stop" })
hl.bind("XF86AudioPrev"              , hl.dsp.exec_cmd(SCRIPTS .. "/playerctl.sh prev")    , { locked = true, description = "player prev" })
hl.bind("XF86AudioNext"              , hl.dsp.exec_cmd(SCRIPTS .. "/playerctl.sh next")    , { locked = true, description = "player next" })
hl.bind("CTRL + XF86AudioPlay"       , hl.dsp.exec_cmd(SCRIPTS .. "/musictl.sh single")    , { locked = true, description = "music [s] single mode" })
hl.bind("CTRL + XF86AudioStop"       , hl.dsp.exec_cmd(SCRIPTS .. "/musictl.sh random")    , { locked = true, description = "music [z] shuffle mode" })
hl.bind("CTRL + XF86AudioPrev"       , hl.dsp.exec_cmd(SCRIPTS .. "/musictl.sh replay")    , { locked = true, description = "replay track from the beginning" })
hl.bind("CTRL + XF86AudioNext"       , hl.dsp.exec_cmd(SCRIPTS .. "/musictl.sh skip")      , { locked = true, description = "skip track and remove from queue" })
hl.bind("CTRL + XF86AudioRaiseVolume", hl.dsp.exec_cmd(SCRIPTS .. "/playerctl.sh vol-up")  , { locked = true, description = "player increase volume" })
hl.bind("CTRL + XF86AudioLowerVolume", hl.dsp.exec_cmd(SCRIPTS .. "/playerctl.sh vol-down"), { locked = true, description = "player decrease volume" })
