Notification = {
  message = "Test notification",
  duration = 2,
  duration_default = 3,
  duration_shorter = 2,
  duration_longer = 5,
  duration_warning = 15,
  duration_alert = 30,
}

--------------------------------------------------------------------------------
-- builders
--------------------------------------------------------------------------------

function Notification:default(message)
  self.message = message
  self.duration = self.duration_default
  return self
end

function Notification:shorter(message)
  self.message = message
  self.duration = self.duration_shorter
  return self
end

function Notification:longer(message)
  self.message = message
  self.duration = self.duration_longer
  return self
end

function Notification:warning(message)
  self.message = message
  self.duration = self.warning
  return self
end

function Notification:alert(message)
  self.message = message
  self.duration = self.alert
  return self
end

--------------------------------------------------------------------------------

function Notification:send()
  hl.notification.create({
      text = self.message,
      duration = 1000 * self.duration,
  })
end

