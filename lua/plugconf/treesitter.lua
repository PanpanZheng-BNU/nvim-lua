require'nvim-treesitter.configs'.setup {
  ensure_installed = {'vim', 'python','bash','c','javascript','lua','julia','json'},
  highlight = { enable = true },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_line = nil,
  }
}
