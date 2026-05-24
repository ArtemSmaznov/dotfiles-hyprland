Gaps = {
  description   = "Window gaps",
  default_size  = 20,
  disabled_size = 0,

  enabled       = true,
  current_size  = 20,
  last_size     = 20,
}

--------------------------------------------------------------------------------

function Gaps:new(o)
  o.parent = self
  return o
end

--------------------------------------------------------------------------------

function Gaps:pull()
  self.current_size = hl.get_config("general.gaps_in").top
  self.enabled = self.current_size > self.disabled_size
end

function Gaps:push()
  hl.config({
    general = {
      gaps_in  = self.current_size,
      gaps_out = self.current_size * 2,
    }
  })
end

--------------------------------------------------------------------------------

function Gaps:enable()
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

function Gaps:disable()
  if (self.enabled) then
    Notification:shorter(self.description .. " disabled"):send()
  end

  self.enabled = false
  self.last_size = self.current_size
  self.current_size = self.disabled_size
  self:push()
end

function Gaps:toggle()
  if (self.enabled)
  then self:disable()
  else self:enable()
  end
end

--------------------------------------------------------------------------------

function Gaps:grow(step)
  self.last_size = self.current_size + step
  self:enable()
end

function Gaps:shrink(step)
  self.last_size = self.current_size - step
  if (self.last_size <= self.disabled_size) then
    self:disable()
    return
  end

  self.current_size = self.last_size
  self:push()
end

function Gaps:reset()
  if not (self.current_size == self.default_size) then
    Notification:shorter(self.description .. " reset to " .. self.default_size):send()
  end

  self.current_size = self.default_size
  self:push()
end

--------------------------------------------------------------------------------

TOGGLE_GAPS = function()
  Gaps:toggle()
end

DISABLE_GAPS = function()
  Gaps:disable()
end

RESET_GAPS = function()
  Gaps:reset()
end

GROW_GAPS = function()
  Gaps:grow(1)
end

SHRINK_GAPS = function()
  Gaps:shrink(1)
end

GROW_MORE_GAPS = function()
  Gaps:grow(5)
end

SHRINK_MORE_GAPS = function()
  Gaps:shrink(5)
end
