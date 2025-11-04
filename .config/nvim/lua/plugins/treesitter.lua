return {
   {
      "nvim-treesitter/nvim-treesitter",
      version = "^0.10.0",

      lazy = false,

      opts = {
         ensure_installed = { "c", "cpp", "rust", "lua", "python", "html", "css", "json", "markdown", "markdown_inline", "c_sharp", "vimdoc" },

         -- Install parsers synchronously (only applied to `ensure_installed`)
         sync_install = true,
         auto_install = true,


         highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
         },

         indent = {
            enable = true,
         },
      },
   },

}
