-- [[ Setting options ]]
-- See `:help vim.opt`
--  For more options, you can see `:help option-list`

-- Option Syntax:
-- vim.opt.option_name = value

-- Search about option using :help 'option_name'

-- [Good settings to have]
-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode with a, can be useful for resizing splits.
vim.opt.mouse = ''

-- [Searching Options]
vim.opt.ignorecase = true
vim.opt.smartcase = true -- Ignore uppercase unless it's in search term.
vim.opt.hlsearch = false -- Highlights the previous search. disabled!

-- [Wrap]
vim.opt.wrap = true -- default = true
vim.opt.breakindent = true

-- [Indentations]
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2 -- For keybind <<, >>; same value as tab is good.
-- vim.opt.expandtab = true -- converts Tab character to spaces.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- [Split windows]
vim.opt.splitright = true
vim.opt.splitbelow = true
-- vim.opt.laststatus = 3

-- [Other]
-- Sync clipboard between OS and Neovim.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Save undo history
vim.opt.undofile = true

-- Write swap file to disk for recovery. Default 4000 ms
vim.opt.updatetime = 250
