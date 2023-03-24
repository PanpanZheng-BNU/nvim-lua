require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nord',
  },
  sections = {
    lualine_c = {
      'filename',
      "require'lsp-status'.status()"
    }
  }
}

