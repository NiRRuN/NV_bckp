vim.cmd [[packadd packer.nvim]]
vim.cmd("colorscheme carbonfox")
require("symbols-outline").setup()
return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use "EdenEast/nightfox.nvim"
  use 'nvim-tree/nvim-web-devicons' 
  use 'lewis6991/gitsigns.nvim'
  use 'romgrk/barbar.nvim'
  use 'rcarriga/nvim-notify'
  use 'simrat39/symbols-outline.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'
  use 'dense-analysis/ale'
  use 'powerman/vim-plugin-ruscmd'
  use 'L3MON4D3/LuaSnip'
	
  use { 'nvim-lualine/lualine.nvim',
      requires = {'nvim-tree/nvim-web-devicons', opt = true},
      config = function()
      require('lualine').setup()
  end, }

  use {'akinsho/bufferline.nvim',
      requires = 'nvim-tree/nvim-web-devicons',
      config = function()
      require("bufferline").setup{}
  end, }
  -- Структура классов и функций в файле
  use 'majutsushi/tagbar'
  -- Файловый менеджер
  use {'nvim-tree/nvim-tree.lua',
  	requires = {
       'nvim-tree/nvim-web-devicons', },}
  use { 'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} },
      config = function() 
      require'telescope'.setup {}
  end, }
end)

