RESET_SUBMAP = function()
  hl.dispatch(hl.dsp.submap("reset"))
  hl.dispatch(hl.dsp.exec_cmd(HYPR_SCRIPTS .. "/reset-submap.sh"))
end

--------------------------------------------------------------------------------

require("keys.core")
require("keys.leader")
require("keys.mouse")
