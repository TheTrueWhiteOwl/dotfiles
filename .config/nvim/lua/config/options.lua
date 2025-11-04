-- mouse behaviour
vim.opt.mouse = "" -- disable mouse mode

-- cursor behaviour
--vim.opt.guicursor = ""
vim.opt.cursorline = true
vim.opt.scrolloff = 5

-- folding
vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldenable = false
vim.o.foldnestmax = 10

-- window splitting
vim.opt.splitright = false
vim.opt.splitbelow = false

-- visuals
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'number'
vim.opt.showmode = true

vim.opt.termguicolors = true

vim.opt.list = true
vim.opt.listchars = {
   tab = "» ",
   trail = "·",
   nbsp = "⍽",
   extends = "…",
   precedes = "…",
}
--[[
vim.opt.listchars = {
   eol = "␤",
   tab = "␉ ",
   trail = "␠",
 }
--]]


-- text wrapping
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
--[[ NOTE: Hopefully neovim fixes this someday
vim.opt.breakindentopt:append({
   min = 40,
   shift = 8,
})
--]]
vim.opt.breakindentopt = "min:40,shift:8"
vim.opt.showbreak = ""

-- indentation
vim.opt.tabstop = 8        -- width of tab characters (do not change)
vim.opt.shiftwidth = 0     -- width used for auto indentation (0 -> shiftwidth = tabstop)
vim.opt.softtabstop = 0    -- tabs of given width will be emulated using spaces and tabs (0 -> disabled)
vim.opt.smarttab = true    -- at beginning of line insert tabs according to shiftwidth
vim.opt.expandtab = false  -- use spaces for indentation
vim.opt.autoindent = true  -- auto indent when entering new line to remain at current level
vim.opt.smartindent = true -- auto indent inside code blocks (e.g. {...})

-- file settings
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.updatetime = 250

vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

-- searching
vim.opt.ignorecase = true
vim.opt.smartcase = true -- case sensitive when search term contains Capital letters
vim.opt.hlsearch = true
vim.opt.incsearch = true
