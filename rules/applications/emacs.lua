hl.window_rule({
  name = "emacs-org-edit-special",
  match = {
    class = "emacs",
    title = "\\*Org Src .* Doom Emacs ",
  },
  float = true,
  center = true,
  size = { "monitor_w*0.6", "monitor_h*0.8" },
  dim_around = true,
})
