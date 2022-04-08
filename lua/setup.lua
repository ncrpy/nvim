local plugins = {
  "lspconfig",
  "nvim-lsp-installer",
  "formatter",
  "nvim-treesitter",
  "colorizer",
  "telescope",
  "nvim-tree",
  "nvim-autopairs",
  "trouble"
}

for _, plugin in ipairs(plugins) do
  if package.loaders[2](plugin) then
    require("plugins." .. plugin)
  end
end
