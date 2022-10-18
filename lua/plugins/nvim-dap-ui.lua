require("dapui").setup({
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        "scopes",
        "breakpoints",
        "stacks",
        { id = "watches", size = 0.25 }
      },
      size = 0.25,
      position = "right",
    },
    {
      elements = {
        "repl",
        "console",
      },
      size = 0.24,
      position = "bottom",
    },
  },
  controls = {
    -- Requires Neovim nightly (or 0.8 when released)
    enabled = true,
    -- Display controls in this element
    element = "repl",
    icons = {
      pause = "",
      play = "",
      step_into = "",
      step_over = "",
      step_out = "",
      step_back = "",
      run_last = "↻",
      terminate = "□",
    },
  },
  floating = {
    max_height = 0.9, -- These can be integers or a float between 0 and 1.
    max_width = 0.9, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
})
