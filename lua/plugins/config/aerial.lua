local M = {}

M.keys = {
  {
    "<leader>o",
    "<Cmd>AerialToggle!<CR>",
  },
  {
    "<leader>p",
    "<Cmd>AerialNavToggle<CR>",
  },
}

M.opts = {
  backends = { "lsp", "treesitter", "markdown", "man" },
  layout = {
    placement = "edge",
  },
  filter_kind = false,
  highlight_on_jump = 250,
  autojump = true,
  show_guides = true,
}

M.setup = function(_, opts)
  require("aerial").setup(opts)

  -- local lualine_ok, lualine = pcall(require, "lualine")
  -- if lualine_ok then
  --   lualine.setup({
  --     extensions = {
  --       {
  --         sections = {
  --           lualine_a = { "filetype" },
  --
  --           -- Or you can customize it
  --           lualine_c = {
  --             {
  --               "aerial",
  --               -- The separator to be used to separate symbols in status line.
  --               sep = " ) ",
  --
  --               -- The number of symbols to render top-down. In order to render only 'N' last
  --               -- symbols, negative numbers may be supplied. For instance, 'depth = -1' can
  --               -- be used in order to render only current symbol.
  --               depth = nil,
  --
  --               -- When 'dense' mode is on, icons are not rendered near their symbols. Only
  --               -- a single icon that represents the kind of current symbol is rendered at
  --               -- the beginning of status line.
  --               dense = false,
  --
  --               -- The separator to be used to separate symbols in dense mode.
  --               dense_sep = ".",
  --
  --               -- Color the symbol icons.
  --               colored = true,
  --             },
  --           },
  --         },
  --         filetypes = { "aerial" },
  --       },
  --       unpack(require("lualine").get_config().extensions),
  --     },
  --   })
  -- end
end

return M
