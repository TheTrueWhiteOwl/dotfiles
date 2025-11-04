local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   local lazyrepo = "https://github.com/folke/lazy.nvim.git"
   vim.fn.system({ "git", "clone", "--filter=blob:none", "--single-branch", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
   spec = {
      import = "plugins"
   },
   ui = {
      border = "rounded",
      title = "Manage Plugins",
      width = 0.8,
      height = 0.9,

      icons = {
         cmd = "",
         config = "",
         event = "",
         ft = "",
         init = "",
         import = "",
         keys = "",
         lazy = "󰒲 ",
         loaded = "●",
         not_loaded = "○",
         plugin = "",
         runtime = "",
         require = "󰢱",
         source = "",
         start = "",
         task = "✓",
         list = {
            "●",
            "󱦰",
            "󰓎",
            "‒",
         },
      },
   },
   checker = {
      enabled = true,
      -- check for updates every week
      frequency = 604800,
   },
   change_detection = {
      notify = false,
   },
})
