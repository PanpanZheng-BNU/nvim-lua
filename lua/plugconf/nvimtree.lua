vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--require("nvim-tree").setup()

require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  hijack_directories = {
        enable = true,
        auto_open = true,
  },
})


