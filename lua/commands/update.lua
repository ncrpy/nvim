local ERROR = vim.log.levels.ERROR

local function get_nvim_path()
  return vim.uv.exepath() or ""
end

local function get_arch(callback)
  vim.system({ "uname", "-m" }, { text = true }, function(obj)
    local arch = obj.stdout:gsub("%s+$", "")
    callback(arch)
  end)
end

local function get_current_version()
  local version = vim.version()
  return "v" .. version.major .. "." .. version.minor .. "." .. version.patch
end

local function get_latest_version(callback)
  vim.system(
    { "curl", "-s", "https://api.github.com/repos/neovim/neovim/releases/latest" },
    { text = true },
    function(obj)
      if obj.code == 0 then
        local version = obj.stdout:match('"tag_name":%s*"(.-)"')
        callback(nil, version)
      else
        callback("Failed to get latest version", nil)
      end
    end
  )
end

local function check_update()
  local ok, _ = pcall(get_latest_version, function(err, version)
    if err then
      vim.notify("Failed to check for updates: " .. err, ERROR)
      return
    end

    local current_version = get_current_version()

    if version ~= current_version then
      vim.notify("New version of Neovim is available: " .. version)
    else
      vim.notify("Neovim is up to date")
    end
  end)

  if not ok then
    vim.notify("Failed to check for updates", ERROR)
  end
end

local function update_nvim()
  local nvim_path = get_nvim_path()
  local appimage_path

  if nvim_path:match("/squashfs%-root/usr/bin/nvim$") then
    appimage_path = nvim_path:gsub("squashfs%-root/usr/bin/nvim$", "nvim.appimage")
  else
    vim.notify("NvimUpdate is supported only for AppImageExtract installations", ERROR)
    return
  end

  local ok, _ = pcall(get_latest_version, function(err, version)
    if err then
      vim.notify("Failed to check for updates: " .. err, ERROR)
      return
    end

    local current_version = get_current_version()

    -- if version == current_version then
    --   vim.notify("Neovim is already up to date")
    --   return
    -- end

    get_arch(function(arch)
      local download_url

      if arch == "x86_64" then
        download_url = "https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage"
      elseif arch == "aarch64" or arch == "arm64" then
        download_url = "https://github.com/neovim/neovim/releases/latest/download/nvim-linux-arm64.appimage"
      else
        vim.notify("Unsupported architecture: " .. arch, ERROR)
        return
      end

      vim.system({ "curl", "-L", "-o", appimage_path, download_url }, { text = true }, function(obj_download)
        if obj_download.code ~= 0 then
          vim.notify("Failed to download neovim: " .. obj_download.stderr:gsub("%s+$", ""), ERROR)
          return
        end

        vim.uv.fs_chmod(appimage_path, tonumber("744", 8), function(err_chmod)
          if err_chmod then
            vim.notify("Failed to set permissions: " .. err_chmod, ERROR)
            return
          end

          local backup_path = nvim_path .. ".bak"

          vim.uv.fs_rename(nvim_path, backup_path, function(err_backup)
            if err_backup then
              vim.notify("Failed to backup old Neovim binary: " .. err_backup, ERROR)
              return
            end

            vim.system(
              { appimage_path, "--appimage-extract" },
              { cwd = appimage_path:gsub("/nvim.appimage$", ""), text = true },
              function(obj_extract)
                if obj_extract.code ~= 0 then
                  vim.notify("Failed to extract AppImage: " .. obj_extract.stderr:gsub("%s+$", ""), ERROR)
                  vim.uv.fs_rename(backup_path, nvim_path, function(err_restore)
                    if err_restore then
                      vim.notify("Failed to restore old Neovim binary: " .. err_restore, ERROR)
                    end
                  end)
                  return
                end

                vim.notify("Neovim has been updated to " .. version)
              end
            )
          end)
        end)
      end)
    end)
  end)

  if not ok then
    vim.notify("Failed to update Neovim", ERROR)
  end
end

vim.api.nvim_create_user_command("NvimCheckUpdate", check_update, {})
vim.api.nvim_create_user_command("NvimUpdate", update_nvim, {})
