return {
   "tpope/vim-fugitive",
   version = "^3.7.0",

   lazy = true,
   keys = {
      { "<leader>gs", vim.cmd.Git, desc = "Show Git status" },
   },
}
