-- local function clearTable(module)
--   for k, v in pairs(module) do
--     if (type(v) == 'table') then
--       module[k] = {}
--     else
--       print(k)
--     end
--   end
-- end
-- 
-- local presets = require('which-key.plugins.presets')
-- 
-- clearTable(presets)

local wk = require('which-key')

wk.setup{
}
