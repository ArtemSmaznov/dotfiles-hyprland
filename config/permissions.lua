hl.config({
  ecosystem = {
    enforce_permissions = true,
  },
})

-- screen capture
hl.permission("/usr/bin/grim"        , "screencopy", "allow")
hl.permission("/usr/bin/wf-recorder" , "screencopy", "allow")
hl.permission("/usr/bin/wl-screenrec", "screencopy", "allow")
hl.permission("/usr/bin/hyprlock"    , "screencopy", "allow")

-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland",
--               "screencopy",
--               "allow")

-- plugins
hl.permission("/usr/(bin|local/bin)/hyprpm" , "plugin" , "allow")
