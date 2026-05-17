local default_workspace = "8"



hl.window_rule({ match = { class = "net.lutris.Lutris" }, tag = "+game-launcher" })
hl.window_rule({ match = { class = "[Ss]team"          }, tag = "+game-launcher" })
hl.window_rule({
  name = "game-launcher",
  match = { tag = "game-launcher" },
  workspace = default_workspace .. " silent",
})



hl.window_rule({
  name = "steam-updater-floating-windows",
  match = {
    class = "[Ss]team",
    float = true,
  },
  workspace = default_workspace .. " silent",
  no_focus = true,
})



hl.window_rule({
  name = "steam-float-dialogs-and-stuff",
  match = {
    class = "[Ss]team",
    title = "SteamTinkerLaunch",
  },
  float = true,
})



hl.window_rule({
  name = "non-game-windows-spawned-by-launching-games",
  match = {
    class = "steam_app.*",
    title = "^$",
  },
  center = true,
})



hl.window_rule({ match = { class = "steam_app.*", title = "negative:^$" }, content = "game" })
hl.window_rule({
  name = "game-windows",
  match = { content = "game" },
  render_unfocused = true, -- fix for workspace switches for games
  fullscreen = true,
})
