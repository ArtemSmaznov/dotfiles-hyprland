hl.on("hyprland.start", function()
  hl.exec_cmd("exec uwsm finalize")
  hl.exec_cmd("docker ps") -- HACK
  hl.exec_cmd("paplay \"$HOME/public/audio/windows95-startup.wav\"")
  hl.exec_cmd("uwsm app -S both -- eww open-many main-bar second-bar " .. EWW_INDICATORS .. " " .. EWW_QUICK_SETTINGS)
  hl.exec_cmd("hyprpm reload")
end)
