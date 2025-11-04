return {
   {
      "L3MON4D3/LuaSnip",
      version = "^2.4.0",
      build = "make install_jsregexp",
      dependencies = { "rafamadriz/friendly-snippets" },
      lazy = true,

      config = function()
         require("luasnip.loaders.from_vscode").lazy_load()
      end,
   },

   {
      "hrsh7th/nvim-cmp",
      version = "^0.2.0",
      dependencies = {
         {
            "saadparwaiz1/cmp_luasnip",
            -- dependencies = "L3MON4D3/LuaSnip",
         },
         "hrsh7th/cmp-nvim-lsp",
      },
      lazy = true,
      event = "BufEnter",

      config = function()
         local cmp = require('cmp')
         cmp.setup({
            snippet = {
               -- REQUIRED - you must specify a snippet engine
               expand = function(args)
                  -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                  require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                  -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
                  -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                  -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

                  -- For `mini.snippets` users:
                  -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
                  -- insert({ body = args.body }) -- Insert at cursor
                  -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
                  -- require("cmp.config").set_onetime({ sources = {} })
               end,
            },
            window = {
               completion = require("cmp").config.window.bordered(),
               documentation = require("cmp").config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
               ['<C-b>'] = cmp.mapping.scroll_docs(-4),
               ['<C-f>'] = cmp.mapping.scroll_docs(4),
               ['<C-Space>'] = cmp.mapping.complete(),
               ['<C-e>'] = cmp.mapping.abort(),
               -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
               ['<C-CR>'] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources(
               {
                  { name = 'luasnip' }, -- For luasnip users.
                  { name = 'nvim_lsp' },
                  -- { name = 'vsnip' }, -- For vsnip users.
                  -- { name = 'ultisnips' }, -- For ultisnips users.
                  -- { name = 'snippy' }, -- For snippy users.
               }, {
                  { name = 'buffer' },
               }
            ),
         })
      end
   },
}
