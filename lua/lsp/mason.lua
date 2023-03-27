 require("mason").setup({
 ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "clangd","pyright", "julials", "marksman", "r_language_server"},
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup{
  capabilities = capabilities,
}
require('lspconfig').julials.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').marksman.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').r_language_server.setup{}
require('cmp').setup()






