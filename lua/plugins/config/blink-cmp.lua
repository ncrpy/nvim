local M = {}

M.opts = {
  -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
  -- 'super-tab' for mappings similar to vscode (tab to accept)
  -- 'enter' for enter to accept
  -- 'none' for no mappings
  --
  -- All presets have the following mappings:
  -- C-space: Open menu or open docs if already open
  -- C-n/C-p or Up/Down: Select next/previous item
  -- C-e: Hide menu
  -- C-k: Toggle signature help (if signature.enabled = true)
  --
  -- See :h blink-cmp-config-keymap for defining your own keymap
  keymap = {
    preset = "enter",
    ["<C-e>"] = {
      function(cmp)
        if not cmp.is_visible() then
          local copilot_ok, suggestion = pcall(require, "copilot.suggestion")
          if copilot_ok and suggestion.is_visible() then
            suggestion.dismiss()
            return true
          end
        end
      end,
      "hide",
      "fallback",
    },
    ["<C-y>"] = {
      function(cmp)
        if cmp.get_selected_item_idx() == nil then
          local copilot_ok, suggestion = pcall(require, "copilot.suggestion")
          if copilot_ok and suggestion.is_visible() then
            suggestion.accept()
            return true
          end
        end
      end,
      "select_and_accept",
      "fallback",
    },
    ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
    ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    ["<C-n>"] = {
      function(cmp)
        if not cmp.is_visible() then
          local copilot_ok, suggestion = pcall(require, "copilot.suggestion")
          if copilot_ok and suggestion.is_visible() then
            suggestion.next()
            return true
          end
        end
      end,
      "select_next",
      "fallback_to_mappings",
    },
    ["<C-p>"] = {
      function(cmp)
        if not cmp.is_visible() then
          local copilot_ok, suggestion = pcall(require, "copilot.suggestion")
          if copilot_ok and suggestion.is_visible() then
            suggestion.prev()
            return true
          end
        end
      end,
      "select_prev",
      "fallback_to_mappings",
    },
  },

  appearance = {
    -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
    -- Adjusts spacing to ensure icons are aligned
    nerd_font_variant = "mono",
  },

  completion = {
    list = {
      selection = {
        preselect = false,
        auto_insert = true,
      },
    },
    menu = {
      draw = {
        columns = {
          { "kind_icon" },
          { "label", "label_description", gap = 1 },
          { "source_name" },
        },
      },
    },
    -- (Default) Only show the documentation popup when manually triggered
    documentation = { auto_show = true },
    ghost_text = { enabled = true },
  },

  -- Default list of enabled providers defined so that you can extend it
  -- elsewhere in your config, without redefining it, due to `opts_extend`
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },

  -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
  -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
  -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
  --
  -- See the fuzzy documentation for more information
  fuzzy = { implementation = "prefer_rust_with_warning" },

  cmdline = {
    keymap = {
      ["<Tab>"] = { "show", "select_next" },
      ["<S-Tab>"] = { "show", "select_prev" },
    },

    completion = {
      list = {
        selection = {
          preselect = false,
          auto_insert = true,
        },
      },
    },
  },
}

return M
