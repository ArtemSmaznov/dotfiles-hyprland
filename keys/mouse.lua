-- mouse primary
local mouse_left   = "mouse:272"
local mouse_middle = "mouse:274"
local mouse_right  = "mouse:273"

-- mouse extra
local mouse_next = "mouse:276"
local mouse_prev = "mouse:275"

-- mouse wheel
local mouse_wheel_up    = "mouse_down"
local mouse_wheel_down  = "mouse_up"
local mouse_wheel_left  = "mouse_left"
local mouse_wheel_right = "mouse_right"


-- click binds
hl.bind("SUPER + " .. mouse_wheel_up   , hl.dsp.exec_cmd(SCRIPTS .. "/set-volume.sh + " .. VOLUME_STEP))
hl.bind("SUPER + " .. mouse_wheel_down , hl.dsp.exec_cmd(SCRIPTS .. "/set-volume.sh - " .. VOLUME_STEP))

-- drag binds
hl.bind("SUPER + " .. mouse_left  , hl.dsp.window.drag()   , { mouse = true })
hl.bind("SUPER + " .. mouse_left  , hl.dsp.exec_cmd("paplay " .. SOUND_EFFECTS_DIR .. "/window-move-start.ogg"))
hl.bind("SUPER + " .. mouse_right , hl.dsp.window.resize() , { mouse = true })
