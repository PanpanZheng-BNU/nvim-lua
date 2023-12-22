local opt = vim.opt

--Line Number
opt.relativenumber = true
opt.nu = true

--indent
opt.tabstop = 2	
opt.shiftwidth = 2
--opt.expandtab = true
--opt.autoindent = true

opt.termguicolors = true
opt.cursorline = true

--split
opt.splitright = true
opt.splitbelow = true

--search
opt.ignorecase = true
opt.smartcase = true


vim.cmd[[colorscheme nord]]
