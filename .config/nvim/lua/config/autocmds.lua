-- Source of hilghlight on yank
-- https://stackoverflow.com/questions/26069278/highlight-copied-area-in-vim
vim.api.nvim_create_autocmd(
   "TextYankPost",
   {
      desc = "Highlight selection on yank",
      group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
      callback = function()
         vim.highlight.on_yank({higroup="IncSearch", timeout = 300})
      end,
   }
)
