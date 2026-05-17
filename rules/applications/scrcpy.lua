hl.dsp.window.tag({ tag = "+scrcpy", window = "class:[Ss]crcpy" })
hl.window_rule({
  name = "scrcpy",
  match = { tag = "scrcpy" },
  tile = true,
  pseudo = true,
  keep_aspect_ratio = true,
  opacity = "0.7 override",
  border_size = 0,
})
