return {
   {
      "mason-org/mason.nvim",
      version = "^2.0.1",

      opts = {
         ui = {
            border = "rounded",
            width = 0.8,
            height = 0.9,

            icons = {
               package_installed = "✓",
               package_pending = "➜",
               package_uninstalled = "✗",
            },
         },
      },
   },
   {
      "mason-org/mason-lspconfig.nvim",
      version = "^2.1.0",
      dependencies = {
         { "mason-org/mason.nvim", version = "^2.0.0" },
         { "neovim/nvim-lspconfig", version = "^2.0.0" },
      },

      opts = {
         ensure_installed = {
            "pyright",
            "rust_analyzer",
            "lua_ls",
            "html",
            "cssls",
         },
      },
      init = function()
         vim.lsp.config(
            "lua_ls",
            {
               settings = {
                  Lua = {
                     diagnostics = {
                        globals = { "vim" }
                     }
                  }
               }
            }
         )
      end,
   },
}
