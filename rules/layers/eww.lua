hl.layer_rule({
    name = "status-bars",
    match = { namespace = "waybar" },
    blur = true,
})


hl.layer_rule({
    match = { namespace = "gtk-layer-shell" },
    blur = true,
    ignore_alpha = 0,
    animation = "slide",
})

hl.layer_rule({
    match = { namespace = eww_config },
    blur = true,
    ignore_alpha = 0,
    animation = "slide",
})

hl.layer_rule({
    match = { namespace = eww_monitor },
    blur = true,
    ignore_alpha = 0,
    animation = "slide",
})

hl.layer_rule({
    match = { namespace = eww_quick_settings },
    blur = true,
    ignore_alpha = 0,
    animation = "slide",
})

hl.layer_rule({
    match = { namespace = eww_which_key },
    blur = true,
    ignore_alpha = 0,
    animation = "slide",
})
