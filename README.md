# nvim-lua
The repository consists of the script of neovim in lua

## The configure tree
- **/lua/core**: be consisted of the core configuration such as keymaps and options
    - *keymaps.lua*: the keymaps configuration
    - *options.lua*: the basic configuration such as theme, relative linenumber, indent ...

- **./lua/lsp**: be consisted of the configuration about Language Support Protocal
    - *cmpconf.lua*: the configuration about autocompletion.
    - *mason.lua*: the configuration about the mason, which is used to manage language autocompletion and language formatter.
- **./lua/plugconf**: be consisted of the configuration about other plugins
    - *alpha.lua*: the configuration about plugin `alpha` which is used to setting the greeter of neovim
    - *bufferline.lua*: the configuration used to show the status of lsp server
    - *lualine.lua*: used to setting the lauline
    - *neoclip.lua*: the configuration about hte clipboard of neovim
    - *nvimtree.lua*: the configuration about the file viewer
    - *snippet.lua*: the configuration about hte UltiSnips
    - *treesitter.lua*: the configuration about the treesitter which is used make code highlight.

- **plugins-setting.lua**: the profile about `Packer` which is used to control the plugin of neovim

