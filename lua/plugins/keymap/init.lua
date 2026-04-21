local M = {}

setmetatable(M, {
  __index = function(tbl, key)
    local ok, mod = pcall(require, "plugins.keymap." .. key)
    local ret = ok and mod or {}
    rawset(tbl, key, ret)
    return ret
  end
})

return M
