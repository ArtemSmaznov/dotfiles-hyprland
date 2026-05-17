hl.config({
  debug = {
    overlay = false,                -- print the debug performance overlay. Disable VFR for accurate results.	bool	false
    -- damage_blink = false,         -- (epilepsy warning!) flash areas updated with damage tracking	bool	false
    disable_logs = true,            -- disable logging to a file	bool	true
    -- disable_time = true,          -- disables time logging	bool	true
    -- damage_tracking = 2,          -- redraw only the needed bits of the display. Do not change. (default: full - 2) monitor - 1, none - 0	int	2
    -- enable_stdout_logs = false,   -- enables logging to stdout	bool	false
    manual_crash = 0,               -- set to 1 and then back to 0 to crash Hyprland.	int	0
    -- suppress_errors = false,      -- if true, do not display config file parsing errors.	bool	false
    -- watchdog_timeout = 5,         -- sets the timeout in seconds for watchdog to abort processing of a signal of the main thread. Set to 0 to disable.	int	5
    -- disable_scale_checks = false, -- disables verifying of the scale factors. Will result in pixel alignment and rounding errors.	bool	false
    -- error_limit = 5,              -- limits the number of displayed config file parsing errors.	int	5
  },
})
