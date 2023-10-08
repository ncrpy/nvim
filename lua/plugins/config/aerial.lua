local M = {}

M.opts = {
  backends = { "lsp", "treesitter", "markdown", "man" },
  layout = {
    placement = "edge"
  },
  filter_kind = false,
  show_guides = true,
}

M.setup = function(_, opts)

  require("aerial").setup(opts)

  local telescope_ok, telescope = pcall(require, "telescope")
  if telescope_ok then telescope.load_extension("aerial") end

  local lualine_ok, lualine = pcall(require, "lualine")
  if lualine_ok then
    lualine.setup({
      sections = {
        lualine_x = { "aerial" },
      },
    })
  end

end

return M
