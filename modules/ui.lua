require("modules/eww")

local disabled_borders = 2
local disabled_gaps = 0
local disabled_corners = 0

--------------------------------------------------------------------------------

local function enable_borders()
  hl.config({ general = { border_size = BORDERS } })
  hl.notification.create({ text = "Borders enabled", duration = 2000 })
end

local function disable_borders()
  hl.config({ general = { border_size = disabled_borders } })
  hl.notification.create({ text = "Borders disabled", duration = 2000 })
end

local function toggle_borders()
  local borders = hl.get_config("general.border_size")
  if (borders == disabled_borders)
  then
    enable_borders()
  else
    disable_borders()
  end
end

--------------------------------------------------------------------------------

local function enable_gaps()
  hl.config({
    general = {
      gaps_in = GAPS_INNER,
      gaps_out = GAPS_OUTER,
    }
  })
  hl.notification.create({ text = "Gaps enabled", duration = 2000 })
end

local function disable_gaps()
  hl.config({
    general = {
      gaps_in = disabled_gaps,
      gaps_out = disabled_gaps,
    }
  })
  hl.notification.create({ text = "Gaps disabled", duration = 2000 })
end

local function toggle_gaps()
  local gaps_in = hl.get_config("general.gaps_in").top
  local gaps_out = hl.get_config("general.gaps_out").top

  if (gaps_in == disabled_gaps or gaps_out == disabled_gaps)
  then
    enable_gaps()
  else
    disable_gaps()
  end
end

--------------------------------------------------------------------------------

local function enable_corners()
  hl.config({
    decoration = { rounding = CORNERS }
  })
  hl.notification.create({ text = "Rounded corners enabled", duration = 2000 })
end

local function disable_corners()
  hl.config({
    decoration = { rounding = disabled_corners }
  })
  hl.notification.create({ text = "Rounded corners disabled", duration = 2000 })
end

local function toggle_corners()
  local corners = hl.get_config("decoration.rounding")
  if (corners == disabled_corners)
  then
    enable_corners()
  else
    disable_corners()
  end
end

--------------------------------------------------------------------------------

local function enable_dimming()
  hl.config({
    decoration = { dim_inactive = true }
  })
  hl.notification.create({ text = "Window dimming enabled", duration = 2000 })
end

local function disable_dimming()
  hl.config({
    decoration = { dim_inactive = false }
  })
  hl.notification.create({ text = "Window dimming disabled", duration = 2000 })
end

local function toggle_dimming()
  local dimming = hl.get_config("decoration.dim_inactive")
  if (not dimming)
  then
    enable_dimming()
  else
    disable_dimming()
  end
end

--------------------------------------------------------------------------------

local zen = false
local function toggle_zen()
  zen = not zen
  if (zen)
  then
    CLOSE_EWW_WINDOW(EWW_BAR_MAIN)
    disable_borders()
    disable_gaps()
    disable_corners()
    hl.notification.create({ text = "ZEN mode enabled", duration = 3000 })
  else
    OPEN_EWW_WINDOW(EWW_BAR_MAIN)
    enable_borders()
    enable_gaps()
    enable_corners()
    hl.notification.create({ text = "ZEN mode disabled", duration = 3000 })
  end
end

--------------------------------------------------------------------------------

TOGGLE_BORDERS = function()
  toggle_borders()
end

TOGGLE_GAPS = function()
  toggle_gaps()
end

TOGGLE_CORNERS = function()
  toggle_corners()
end

TOGGLE_DIMMING = function()
  toggle_dimming()
end

ZEN_MODE = function()
  toggle_zen()
end
