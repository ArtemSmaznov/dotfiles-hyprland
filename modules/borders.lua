Borders = {
  description = "Window borders",
  default_size = 15,
  disabled_size = 2,

  enabled = true,
  current_size = 15,
  last_size = 15,
}

--------------------------------------------------------------------------------

function Borders:new(o)
  o.parent = self
  return o
end

--------------------------------------------------------------------------------

function Borders:pull()
  self.current_size = hl.get_config("general.border_size")
  self.enabled = self.current_size > self.disabled_size
end

function Borders:push()
  hl.config({ general = { border_size = self.current_size } })
end

--------------------------------------------------------------------------------

function Borders:enable()
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

function Borders:disable()
  if (self.enabled) then
    Notification:shorter(self.description .. " disabled"):send()
  end

  self.enabled = false
  self.last_size = self.current_size
  self.current_size = self.disabled_size
  self:push()
end

function Borders:toggle()
  if (self.enabled)
  then self:disable()
  else self:enable()
  end
end

--------------------------------------------------------------------------------

function Borders:grow(step)
  self.last_size = self.current_size + step
  self:enable()
end

function Borders:shrink(step)
  self.last_size = self.current_size - step
  if (self.last_size <= self.disabled_size) then
    self:disable()
    return
  end

  self.current_size = self.last_size
  self:push()
end

function Borders:reset()
  if not (self.current_size == self.default_size) then
    Notification:shorter(self.description .. " reset to " .. self.default_size):send()
  end

  self.current_size = self.default_size
  self:push()
end

--------------------------------------------------------------------------------

TOGGLE_BORDERS = function()
  Borders:toggle()
end

DISABLE_BORDERS = function()
  Borders:disable()
end

RESET_BORDERS = function()
  Borders:reset()
end

GROW_BORDERS = function()
  Borders:grow(1)
end

SHRINK_BORDERS = function()
  Borders:shrink(1)
end

GROW_MORE_BORDERS = function()
  Borders:grow(5)
end

SHRINK_MORE_BORDERS = function()
  Borders:shrink(5)
end
