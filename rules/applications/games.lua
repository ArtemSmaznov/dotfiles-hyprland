local default_workspace = "8"



hl.dsp.window.tag({ tag = "+game-launcher", window = "class:net.lutris.Lutris" })
hl.dsp.window.tag({ tag = "+game-launcher", window = "class:[Ss]team" })
hl.window_rule({
  name = "game-launcher",
  match = { tag = "game-launcher" },
  workspace = default_workspace .. " silent",
})



hl.dsp.window.tag({ tag = "+steam-floats", window = "class:[Ss]team,float:true" })
hl.window_rule({
  name = "steam-updater-floating-windows",
  match = { tag = "steam-floats" },
  workspace = default_workspace .. " silent",
  no_focus = true,
})



hl.window_rule({
  name = "steam-float-dialogs-and-stuff",
  match = { title = "SteamTinkerLaunch" },
  float = true,
})



hl.dsp.window.tag({ tag = "+game-misc", window = "class:steam_app.*,title:^$" })
hl.window_rule({
  name = "non-game-windows-spawned-by-launching-games",
  match = { tag = "game-misc" },
  center = true,
})



hl.dsp.window.tag({ tag = "+game", window = "class:steam_app.*,title:negative:^$" })
hl.window_rule({
  name = "game-windows",
  match = { tag = "game" },
  render_unfocused = true, -- fix for workspace switches for games
  fullscreen = true,
})


