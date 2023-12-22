local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setting.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },}
  use {'nvim-treesitter/nvim-treesitter'}
	use {'github/copilot.vim'}
  use {'nordtheme/vim'}
  use {'ferrine/md-img-paste.vim'}
  use {'majutsushi/tagbar'}
  use {'iamcco/markdown-preview.nvim'}
  use {'tpope/vim-surround'}
  use {'godlygeek/tabular'}
  use {'elzr/vim-json'}
  use {'plasticboy/vim-markdown'}
  --use {'ixru/nvim-markdown'}
  use {'machakann/vim-highlightedyank'}
  use {'SirVer/ultisnips'}
  use {'honza/vim-snippets'}
  --use {'ryanoasis/vim-devicons'}
  use {'JuliaEditorSupport/julia-vim'}
  use {'kdheepak/JuliaFormatter.vim'}
  use {'gcmt/wildfire.vim'}
  --use {
    --'goolord/alpha-nvim',
    --requires = { 'nvim-tree/nvim-web-devicons' },
    --config = function ()
        --require'alpha'.setup(require'alpha.themes.startify'.config)
    --end
--}
  use {
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
  }
  use {'preservim/nerdcommenter'}
  use {'motemen/git-vim'}
  use {'907th/vim-auto-save'}
  --use {'itchyny/lightline.vim'}
  use {'jpalardy/vim-slime'}
  use {'ray-x/guihua.lua'}
  --use {"andrejlevkovitch/vim-lua-format"}
  use { 'mhartington/formatter.nvim' }
  use {'nvim-lualine/lualine.nvim'}
  use {'RRethy/nvim-base16'}
  use {'christoomey/vim-tmux-navigator'}
  --use {'p00f/nvim-ts-rainbow'}
  use {"HiPhish/nvim-ts-rainbow2"}
  use "nvim-lua/plenary.nvim"
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  }
  use {'kkharji/sqlite.lua'}
  use {
    "AckslD/nvim-neoclip.lua",
      -- you'll need at least one of these
    requires = {
      {'nvim-telescope/telescope.nvim'},
      {'kkharji/sqlite.lua', module = 'sqlite'}
    },
  }

  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
  }
  use {
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip'
  }
  use {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  }
  use {'lervag/vimtex'}
  use {'xuhdev/vim-latex-live-preview'}
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  if packer_bootstrap then
    require('packer').sync()
  end
end)
