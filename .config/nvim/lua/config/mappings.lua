vim.opt.timeout = true
vim.opt.timeoutlen = 1000

vim.opt.ttimeout = false


local cmd = vim.cmd

-- Search highlights
vim.keymap.set('n', '/<Esc>', cmd.nohlsearch)

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)

-- Diagnostics
vim.keymap.set("n", "gl", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

-- LSPs
vim.api.nvim_create_autocmd("LspAttach", {
   desc = "LSP actions",
   callback = function(event)
      local buf = vim.lsp.buf
      local opts = {buffer = event.buf}

      -- these will be buffer-local keybindings
      -- because they only work if you have an active language server

      vim.keymap.set("n", "K", buf.hover, opts)
      vim.keymap.set("n", "gd", buf.definition, opts)
      vim.keymap.set("n", "gD", buf.declaration, opts)
      vim.keymap.set("n", "gi", buf.implementation, opts)
      vim.keymap.set("n", "go", buf.type_definition, opts)
      vim.keymap.set("n", "gr", buf.references, opts)
      vim.keymap.set("n", "gs", buf.signature_help, opts)
      vim.keymap.set("n", "<F2>", buf.rename, opts)
      vim.keymap.set({"n", "x"}, "<F3>", function() buf.format({async = true}) end, opts)
      vim.keymap.set("n", "<F4>", buf.code_action, opts)
   end
})

-- UndoTree
vim.keymap.set("n", "<leader>ut", cmd.UndotreeToggle)
