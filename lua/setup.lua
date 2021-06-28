local plugins = {
  "lspconfig",
  "formatter",
  "treesitter",
  "telescope",
}

for _, plugin in ipairs(plugins) do
  pcall(require, 'plugins.'..plugin)
end
