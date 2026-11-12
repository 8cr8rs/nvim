local function setupPlugins()
  local lazyRepo = "https://github.com/folke/lazy.nvim.git"
  local lazyPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

  if not (vim.uv or vim.loop).fs_stat(lazyPath) then
    local stdout = vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "--branch=stable",
      lazyRepo,
      lazyPath,
    })

    if vim.v.shell_error ~= 0 then
      local errorText = string.format(
        "Failed to clone %s to %s.\n",
        lazyRepo,
        lazyPath
      ) .. stdout

      vim.notify(errorText, vim.log.levels.ERROR)
      vim.fn.getchar()
      os.exit(1)
    end
  end
  vim.opt.rtp:prepend(lazyPath)

  require("lazy").setup({
    spec = {
      -- import everything from lua/plugins
      { import = "plugins" },
    },
  })
end

-- only run if git is executable
if vim.fn.executable("git") == 1 then
  setupPlugins()
end
