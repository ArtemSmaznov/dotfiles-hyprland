hl.define_submap("autostart", function()

  hl.bind("b", hl.dsp.exec_cmd(EXILE .. " autostart toggle blueman-applet       && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle bluetooth" })
  hl.bind("d", hl.dsp.exec_cmd(EXILE .. " autostart toggle dunst                && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle dunst" })
  hl.bind("e", hl.dsp.exec_cmd(EXILE .. " autostart toggle emacs                && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle emacs" })
  hl.bind("k", hl.dsp.exec_cmd(EXILE .. " autostart toggle kdeconnect-indicator && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle kdeconnect" })
  hl.bind("l", hl.dsp.exec_cmd(EXILE .. " autostart toggle lutris               && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle lutris" })
  hl.bind("n", hl.dsp.exec_cmd(EXILE .. " autostart toggle nextcloud            && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle nextcloud" })
  hl.bind("q", hl.dsp.exec_cmd(EXILE .. " autostart toggle qutebrowser          && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle browser" })
  hl.bind("s", hl.dsp.exec_cmd(EXILE .. " autostart toggle steam                && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle steam" })
  hl.bind("t", hl.dsp.exec_cmd(EXILE .. " autostart toggle thunderbird          && eww update autostart-enabled-apps=$(" .. EXILE .. " autostart list)"), { description = "toggle thunderbird" })

  hl.bind("backspace", switch_submap("SPC c-", "config"))
  hl.bind("backspace", hl.dsp.exec_cmd("eww close " .. EWW_AUTOSTART))

  hl.bind("catchall", RESET_SUBMAP, { release = true })
end)
