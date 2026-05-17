-- xwayland windows
hl.window_rule({
    name = "xwayland",
    match = { xwayland = true },
    border_color = {
      angle = -90,
      colors = {
        "rgba(" .. base09 .. "aa)",
        "rgba(" .. base08 .. "aa)",
        "rgba(" .. base0A .. "aa)",
      },
    },
})


-- pinned windows
hl.window_rule({
    name = "pinned",
    match = { pin = true },
    border_size = borders_dialog,
})

-- maximized windows
hl.window_rule {
    name = "maximized-windows",
    match = { fullscreen_state_internal = 1 },
    rounding = 0,
    dim_around = 1,
}

hl.window_rule {
    name = "fake-fullscreen-windows",
    match = { fullscreen_state_client = 2 },
    rounding = 0,
}

-- workspaces
-- workspace 1 - internet
-- hl.window_rule {} = workspace 1 silent,match:class firefox
-- hl.window_rule {} = workspace 1 silent,match:class Tor Browser
-- hl.window_rule {} = workspace 1 silent,match:class Chromium
-- hl.window_rule {} = workspace 1 silent,match:class Google-chrome
-- hl.window_rule {} = workspace 1 silent,match:class Brave-browser
-- hl.window_rule {} = workspace 1 silent,match:class vivaldi-stable
-- hl.window_rule {} = workspace 1 silent,match:class org.qutebrowser.qutebrowser
-- hl.window_rule {} = workspace 1 silent,match:class nyxt

-- workspace 2 - mail
hl.window_rule {
  match = { class = "org.mozilla.Thunderbird"},
  workspace = "2 silent",
}

-- workspace 3 - coding
hl.window_rule {
  match = { class = "[Ee]macs" },
  workspace = "3 silent",
}

hl.window_rule {
  match = { class = "Geany" },
  workspace = "3 silent",
}

hl.window_rule {
  match = { class = "Atom" },
  workspace = "3 silent",
}

hl.window_rule {
  match = { class = "Subl3" },
  workspace = "3 silent",
}

hl.window_rule {
  match = { class = "code-oss" },
  workspace = "3 silent",
}

hl.window_rule {
  match = { class = "Oomox" },
  workspace = "3 silent",
}

hl.window_rule {
  match = { class = "Unity" },
  workspace = "3 silent",
}

hl.window_rule {
  match = { class = "UnityHub" },
  workspace = "3 silent",
}

hl.window_rule {
  match = { class = "jetbrains-studio" },
  workspace = "3 silent",
}


-- workspace 4 - computer
hl.window_rule {
  match = { class = "dolphin" },
  workspace = "4 silent",
}

hl.window_rule {
  match = { class = "ark" },
  workspace = "4 silent",
}

hl.window_rule {
  match = { class = "File-roller" },
  workspace = "4 silent",
}

hl.window_rule {
  match = { class = "googledocs" },
  workspace = "4 silent",
}

hl.window_rule {
  match = { class = "keep" },
  workspace = "4 silent",
}

hl.window_rule {
  match = { class = "calendar" },
  workspace = "4 silent",
}


-- workspace 5 - chat

-- hl.window_rule {
--   match = { class = "whatsapp-for-linux", },
--   workspace = "5 silent",
-- }

-- hl.window_rule {
--   match = { class = "Slack", },
--   workspace = "5 silent",
-- }

-- hl.window_rule {
--   match = { class = "discord", },
--   workspace = "5 silent",
-- }

-- hl.window_rule {
--   match = { class = "signal", },
--   workspace = "5 silent",
-- }

-- hl.window_rule {
--   match = { class = "[Ss]team", title = "Friends List.*" },
--   workspace = "5 silent",
-- }


-- workspace 6 - graphics
hl.window_rule {
  match = { class = "[Gg]imp" },
  workspace = "6 silent",
}

hl.window_rule {
  match = { class = "Inkscape" },
  workspace = "6 silent",
}

hl.window_rule {
  match = { class = "Flowblade" },
  workspace = "6 silent",
}

hl.window_rule {
  match = { class = "org.kde.digikam" },
  workspace = "6 silent",
}

hl.window_rule {
  match = { class = "obs" },
  workspace = "6 silent",
}

hl.window_rule {
  match = { class = "kdenlive" },
  workspace = "6 silent",
}


-- workspace 7 - star

-- workspace 8 - gaming
hl.window_rule {
  match = { class = "[Bb]attle.net" },
  workspace = "8 silent",
}

hl.window_rule {
  match = { class = "[Ww]ine" },
  workspace = "8 silent",
}

hl.window_rule {
  match = { class = "dolphin-emu" },
  workspace = "8 silent",
}

hl.window_rule {
  match = { class = "Citra" },
  workspace = "8 silent",
}

hl.window_rule {
  match = { class = "SuperTuxKart" },
  workspace = "8 silent",
}


-- workspace 9 - music
hl.window_rule {
  match = { class = "Spotify" },
  workspace = "9 silent",
}


-- workspace 10 - syslog



-- scratchpads

-- torrent
hl.window_rule {
  name = "torrent",
  match = { class = "com.transmissionbt.transmission*" },
  size = { "monitor_w*0.3", "monitor_h*0.8" },
  float = true,
  center = true,
}

-- anki
hl.window_rule {
  name = "anki",
  match = { class = "anki" },
  size  = { "monitor_w*0.2", "monitor_h*0.7" },
  float = true,
  center = true,
  dim_around = true,
}

-- virtmanager
hl.window_rule {
  name = "virtmanager",
  match = { class = "virt-manager" },
  workspace = "special:vm silent",
}

-- htop
hl.window_rule {
  name = "htop",
  match = { class = "sp-htop" },
  -- float = true,
  -- size  = { "monitor_w*0.8", "monitor_h*0.8" },
  -- center = true,
  stay_focused = true,
  dim_around = true,
}

-- calculator
hl.window_rule {
  name = "htop",
  match = { class = "org.gnome.Calculator" },
  float = true,
  size  = { "monitor_w*0.15", "monitor_h*0.5" },
  move  = { "monitor_w*0.82", "monitor_h*0.5" },
}
