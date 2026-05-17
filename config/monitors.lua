hl.monitor ({
    output   = "DP-1",
    mode     = "highrr",
    position = "0x0",
    scale    = "auto",
    vrr      = 2,  -- fullscreen only
    bitdepth = 10, -- enable 10 bit support (hdr)
})

hl.monitor ({
    output   = "DP-3",
    mode     = "1920x1080@144",
    position = "760x-1080",
    scale    = "auto",
    disabled = false,
})

-- fallback
hl.monitor ({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})
