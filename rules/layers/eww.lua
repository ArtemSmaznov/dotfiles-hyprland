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
    match = { namespace = EWW_CONFIG },
    blur = true,
    ignore_alpha = 0,
    animation = "slide",
})

hl.layer_rule({
    match = { namespace = EWW_MONITOR },
    blur = true,
    ignore_alpha = 0,
    animation = "slide",
})

hl.layer_rule({
    match = { namespace = EWW_QUICK_SETTINGS },
    blur = true,
    ignore_alpha = 0,
    animation = "slide",
})

hl.layer_rule({
    match = { namespace = EWW_WHICH_KEY },
    blur = true,
    ignore_alpha = 0,
    animation = "slide",
})
