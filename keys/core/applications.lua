--------------------------------------------------------------------------------
-- super
--------------------------------------------------------------------------------
hl.bind("SUPER + grave", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-special-workspace.sh 'term' 'sp-term' 'alacritty --class sp-term'")            , { description = "toggle terminal" })
hl.bind("SUPER + e"    , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-special-workspace.sh 'files' 'sp-files' 'alacritty --class sp-files --e vifm'"), { description = "toggle file manager" })

hl.bind("SUPER + return"          , hl.dsp.exec_cmd(TERM       , { no_initial_focus = false }) , { description = "launch terminal"                               })
hl.bind("SUPER + ALT + return"    , hl.dsp.exec_cmd(TERM       , { no_initial_focus = true  }) , { description = "launch terminal [silent]"                      })
hl.bind("SUPER + CTRL + return"   , hl.dsp.exec_cmd(LAUNCHER   , { no_initial_focus = false }) , { description = "launch launcher"                               })
hl.bind("SUPER + r"               , hl.dsp.exec_cmd(LAUNCHER   , { no_initial_focus = false }) , { description = "launch launcher"                               })
hl.bind("SUPER + c"               , hl.dsp.exec_cmd(IDE        , { no_initial_focus = false }) , { description = "launch ide"                                    })
hl.bind("SUPER + ALT + c"         , hl.dsp.exec_cmd(IDE        , { no_initial_focus = true  }) , { description = "launch ide [silent]"                           })
hl.bind("SUPER + SHIFT + e"       , hl.dsp.exec_cmd(FILES_CLI   , { no_initial_focus = false }) , { description = "launch file manager"                           })
hl.bind("SUPER + SHIFT + ALT + e" , hl.dsp.exec_cmd(FILES_CLI   , { no_initial_focus = true  }) , { description = "launch file manager [silent]"                  })
hl.bind("SUPER + b"               , hl.dsp.exec_cmd(BROWSER , { no_initial_focus = false }) , { description = "launch web browser"                            })
hl.bind("SUPER + ALT + b"         , hl.dsp.exec_cmd(BROWSER , { no_initial_focus = true  }) , { description = "launch web browser [silent]"                   })
hl.bind("SUPER + i"               , hl.dsp.exec_cmd(BROWSER_INCOGNITO , { no_initial_focus = false }) , { description = "launch web browser in incognito mode"          })
hl.bind("SUPER + ALT + i"         , hl.dsp.exec_cmd(BROWSER_INCOGNITO , { no_initial_focus = true  }) , { description = "launch web browser in incognito mode [silent]" })



--------------------------------------------------------------------------------
-- CTRL + ALT
--------------------------------------------------------------------------------
hl.bind("CTRL + ALT + delete", hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-special-workspace.sh 'htop' 'sp-htop' 'alacritty --class sp-htop -e htop'"), { description = "" })
hl.bind("CTRL + ALT + end"   , hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/toggle-special-workspace.sh 'btop' 'sp-btop' 'alacritty --class sp-btop -e btop'"), { description = "" })
hl.bind("CTRL + ALT + t"     , hl.dsp.exec_cmd(TERM)                                                                                             , { description = "" })

-- hl.bind("CTRL ALT + a", togglespecialworkspace , audio                                                                                 , { description = "" })
-- hl.bind("CTRL ALT + a", hl.dsp.exec_cmd("")                   , [workspace special:audio] pavucontrol                                                 , { description = "" })
-- hl.bind("CTRL ALT + a", hl.dsp.exec_cmd("")                   , [workspace special:audio] qpwgraph                                                    , { description = "" })
-- hl.bind("CTRL ALT + v", hl.dsp.exec_cmd("")                   , $myHyprScript/toggle-special-workspace.sh"volume""pavucontrol""pavucontrol"           , { description = "" })
-- hl.bind("CTRL ALT + v", hl.dsp.exec_cmd("")                   , $myHyprScript/toggle-special-workspace.sh"volume""pavucontrol""pavucontrol & qpwgraph", { description = "" })



--------------------------------------------------------------------------------
-- CTRL + ALT + O
--------------------------------------------------------------------------------
hl.bind("CTRL + ALT + o", switch_submap("C-A-o-", "open-secondary"))

hl.define_submap("open-secondary", function()
  hl.bind("e"                    , hl.dsp.exec_cmd(FILES)       , { description = "gui file manager" })
  hl.bind("g"                    , hl.dsp.exec_cmd(IMAGE_EDITOR)   , { description = "image editor" })
  hl.bind("p"                    , hl.dsp.exec_cmd(PHOTO_LIBRARY), { description = "photo library" })
  hl.bind("r"                    , hl.dsp.exec_cmd(VECTOR_EDITOR)   , { description = "vector image editor" })
  hl.bind("v"                    , hl.dsp.exec_cmd(VIDEO_EDITOR)   , { description = "video editor" })

  hl.bind("e"        , RESET_SUBMAP, { release = true })
  hl.bind("g"        , RESET_SUBMAP, { release = true })
  hl.bind("p"        , RESET_SUBMAP, { release = true })
  hl.bind("r"        , RESET_SUBMAP, { release = true })
  hl.bind("v"        , RESET_SUBMAP, { release = true })
  hl.bind("catchall" , RESET_SUBMAP, { release = true })
end)
