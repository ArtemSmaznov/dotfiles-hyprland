Rounding = {
  description = "Rounded corners",
  default_size = 15,
  disabled_size = 0,

  enabled = true,
  current_size = 15,
  last_size = 15,
}

--------------------------------------------------------------------------------

function Rounding:new(o)
  o.parent = self
  return o
end

--------------------------------------------------------------------------------

function Rounding:pull()
  self.current_size = hl.get_config("decoration.rounding")
  self.enabled = self.current_size > self.disabled_size
end

function Rounding:push()
  hl.config({ decoration = { rounding = self.current_size } })
end

--------------------------------------------------------------------------------

function Rounding:enable()
  if not (self.enabled) then
    Notification:shorter(self.description .. " enabled"):send()
  end

  self.enabled = true
  self.current_size = self.last_size

  if (self.current_size <= self.disabled_size) then
    self.current_size = self.default_size
  end

  self:push()
end

function Rounding:disable()
  if (self.enabled) then
    Notification:shorter(self.description .. " disabled"):send()
  end

  self.enabled = false
  self.last_size = self.current_size
  self.current_size = self.disabled_size
  self:push()
end

function Rounding:toggle()
  if (self.enabled)
  then self:disable()
  else self:enable()
  end
end

--------------------------------------------------------------------------------

function Rounding:grow(step)
  self.last_size = self.current_size + step
  self:enable()
end

function Rounding:shrink(step)
  self.last_size = self.current_size - step
  if (self.last_size <= self.disabled_size) then
    self:disable()
    return
  end

  self.current_size = self.last_size
  self:push()
end

function Rounding:reset()
  if not (self.current_size == self.default_size) then
    Notification:shorter(self.description .. " reset to " .. self.default_size):send()
  end

  self.current_size = self.default_size
  self:push()
end

--------------------------------------------------------------------------------

TOGGLE_ROUNDING = function()
  Rounding:toggle()
end

DISABLE_ROUNDING = function()
  Rounding:disable()
end

RESET_ROUNDING = function()
  Rounding:reset()
end

GROW_ROUNDING = function()
  Rounding:grow(1)
end

SHRINK_ROUNDING = function()
  Rounding:shrink(1)
end

GROW_MORE_ROUNDING = function()
  Rounding:grow(5)
end

SHRINK_MORE_ROUNDING = function()
  Rounding:shrink(5)
end
