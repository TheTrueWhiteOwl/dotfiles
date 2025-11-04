return {
   {
      "lukas-reineke/indent-blankline.nvim",
      version = "^3.5.4",
      dependencies = {
         "nvim-treesitter/nvim-treesitter",
         -- ensures I can use its highlight groups for highlighting
         "HiPhish/rainbow-delimiters.nvim",
      },

      lazy = true,
      event = "BufRead",

      main = "ibl",
      opts = {
         indent = {
            highlight = {
               "NonText",
            },
         },
         -- Requires treesitter
         scope = {
            show_start = true,
            -- TODO: use custom hl groups
            highlight = {
               "RainbowDelimiterViolet",
               "RainbowDelimiterYellow",
               "RainbowDelimiterBlue",
            },
         },
      },
      init = function()
         local hooks = require("ibl.hooks")

         -- use highlight colour from the 
         hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
      end,
   },
   {
      "https://gitlab.com/HiPhish/rainbow-delimiters.nvim.git",
      --version = "^0.4.0",
      --require = "nvim-treesitter/nvim-treesitter",

      lazy = true,
      event = "BufRead",

      main = "rainbow-delimiters.setup",
      opts = {
         query = {
            [""] = "rainbow-delimiters",
            lua = "rainbow-blocks",
         },
         -- TODO: use custom hl groups
         highlight = {
            "RainbowDelimiterViolet",
            "RainbowDelimiterYellow",
            "RainbowDelimiterBlue",
         },
      },
   },
}
