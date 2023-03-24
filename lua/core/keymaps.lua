local keymap = vim.keymap

--Normal Mode
keymap.set("n",'<space>h','<C-w>h',{desc = "map windows swap"})
keymap.set("n",'<space>j','<C-w>j',{desc = "map windows swap"})
keymap.set("n",'<space>k','<C-w>k',{desc = "map windows swap"})
keymap.set("n",'<space>l','<C-w>l',{desc = "map windows swap"})
keymap.set("n",'<space>e',':NvimTreeToggle<CR>',{desc = "open coc-explorer"})
keymap.set("n", ';q', ':q<CR>', {desc="quick quit"})
keymap.set("n", ';wq', ':wq<CR>:', {desc="quick write and quit"})
keymap.set("n", 'Y', '"+y', {desc = "quick Yank to systems clipboard"})
keymap.set("n", '<space>p', ':Telescope neoclip<CR>', {desc = "quick use coc-yank", silent=true})
keymap.set("n", ',f','<Esc>/<++><CR>:nohlsearch<CR>v3l<c-g>', {desc = "find next label position"})
keymap.set("n", ',F','<Esc>?<++><CR>n:nohlsearch<CR>v3l<c-g>', {desc = "find next label position"})
keymap.set("n",'<space>s','<C-w>s',{desc = "split windows horizontally"})
keymap.set("n",'<space>v','<C-w>v',{desc = "split windows vertically"})
keymap.set("n",'<space>nh',':nohl<CR>',{desc = "Cancel the highlight"})
keymap.set("n",'<space>jf',':JuliaFormatterFormat<CR>',{desc = "Format Julia code"})
keymap.set("n",'<C-i>',':BufferLineCyclePrev<CR>',{desc = "Format Julia code"})
keymap.set("n",'<C-Super-o>',':BufferLineCycleNext<CR>',{desc = "Format Julia code"})


--Visual Mode
keymap.set("v", "J",":m '>+1<CR>gv=gv")
keymap.set("v", "K",":m '<-2<CR>gv=gv")

--Insert Mode
--keymap.set("i", "<c-space>","coc#refresh()", {silent = true, expr=true})

local augroup = vim.api.nvim_create_augroup('user_cmds', {clear = true})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {'markdown'},
  group = augroup,
  desc = 'Create label',
  command = 'inoremap <buffer> <silent> ,, <++>'
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = {'markdown'},
  group = augroup,
  desc = 'Find next label',
  command = 'inoremap <buffer> <silent> ,f <Esc>/<++><CR>:nohlsearch<CR>v3l<c-g>'
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = {'markdown'},
  group = augroup,
  desc = 'Find last label',
  command = 'inoremap <buffer> <silent> ,F <Esc>?<++><CR>:nohlsearch<CR>v3l<c-g>'
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = {'markdown'},
  group = augroup,
  desc = 'Create a block math demo',
  command = 'inoremap <buffer> <silent> ,m $$<++>$$<++><Esc>9hv3l<c-g>'
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = {'markdown'},
  group = augroup,
  desc = 'Paste Image',
  command = 'nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>F%i'
})



