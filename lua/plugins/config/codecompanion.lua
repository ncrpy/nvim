local M = {}

-- Place the encrypted API key in the config directory
-- How to encrypt:
-- `gpg --encrpyt --recipient <email> --output ${XDG_CONFIG_HOME}/codecompanion/<adapter>-api-key.gpg path/to/api-key`

local function api_key_path(adapter)
  -- Check if XDG_CONFIG_HOME is set, otherwise use default config path
  local config_dir = os.getenv("XDG_CONFIG_HOME") or os.getenv("HOME") .. "/.config"
  -- Path to the encrypted API key
  local api_key_gpg = string.format("%s/codecompanion/%s-api-key.gpg", config_dir, adapter)
  -- Return the path if exists, otherwise return nil
  return vim.fn.filereadable(api_key_gpg) == 1 and api_key_gpg or nil
end

local function env_api_key(adapter)
  local api_key_gpg = api_key_path(adapter)
  if vim.fn.executable("gpg") == 1 and api_key_gpg then
    return "cmd:gpg --decrypt " .. api_key_gpg .. " 2>/dev/null"
  end
  return nil
end

M.opts = {
  strategies = {
    -- Change the default chat adapter
    chat = {
      adapter = api_key_path("gemini") and "gemini" or "copilot",
    },
  },
  opts = {
    -- Set debug logging
    log_level = "DEBUG",
    language = "Japanese",
  },
  adapters = {
    gemini = function()
      return require("codecompanion.adapters").extend("gemini", {
        env = {
          api_key = env_api_key("gemini"),
        },
      })
    end,
  },
}

return M
