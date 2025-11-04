return {
   "rose-pine/neovim",
   name = "rose-pine",
   version = "^3.0.1",

   lazy = false,
   priority = 100,

   opts = {
      variant = "main", -- auto, main, moon, or dawn
      dark_variant = "main", -- main, moon, or dawn
      dim_inactive_windows = true,
      extend_background_behind_borders = false,

      styles = {
         bold = true,
         italic = true,
         transparency = true,
      },

      highlight_groups = {
         -- Rainbow Delimiters
         RainbowDelimiterViolet = { fg = "iris" },
         RainbowDelimiterYellow = { fg = "gold" },
         RainbowDelimiterBlue = { fg = "foam" },

         StatusLine = { fg = "subtle", bg = "surface" },
         StatusLineNC = { fg = "muted", bg = "surface", blend = 60 },
      },
   },
   config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
   end,
}
