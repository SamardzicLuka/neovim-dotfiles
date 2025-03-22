-- Set tab and indentation preferences (merged from init.vim and init.lua)
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=4")
vim.cmd("set cc=100")

-- Set other Vim options (from init.vim)
vim.opt.mouse = "a"              -- enable mouse support
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.showmatch = true         -- show matching parenthesis
vim.opt.ignorecase = true        -- case insensitive search
vim.opt.hlsearch = true          -- highlight search
vim.opt.incsearch = true         -- incremental search
vim.opt.cursorline = true        -- highlight current line
vim.opt.ttyfast = true           -- improve scrolling speed
vim.opt.number = true

-- Set the leader key
vim.g.mapleader = " "
