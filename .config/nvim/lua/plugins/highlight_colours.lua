return {
   "brenoprata10/nvim-highlight-colors",

   cond = vim.opt.termguicolors,
   lazy = true,
   ft = { "css", "html" },

   opts = {
      render = "background",

      enable_named_colors = true,
      enable_tailwind = true,
   },
}
