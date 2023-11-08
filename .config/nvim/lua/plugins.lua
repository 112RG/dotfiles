local execute = vim.api.nvim_command
local fn = vim.fn

local packer = require 'packer'

packer.startup {
    function()

    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({
                    border = 'single'
                })
            end
        }
    }
}
-- packer.init {opt_default = false}

local use = packer.use
packer.reset()

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'MunifTanjim/nui.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'bluz71/vim-moonfly-colors'
    use 'bluz71/nvim-linefly'
    use 'chriskempson/base16-vim'
    use 'romgrk/barbar.nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'tamago324/nlsp-settings.nvim'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'm-demare/hlargs.nvim'
    use 'neovim/nvim-lspconfig'
    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'
    use 'weilbith/nvim-code-action-menu'
    use 'williamboman/nvim-lsp-installer'
    use 'kyazdani42/nvim-web-devicons'
    use "nanotech/jellybeans.vim"
    use 'rafamadriz/neon'
    use 'luochen1990/rainbow'
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
          require('dashboard').setup {
            -- config
          }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
      }
    use 'nvim-treesitter/playground'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
--[[     use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() require("lualine").setup {} end
    } ]]
    use {
        "nvim-lua/lsp-status.nvim",
        require = function()
            require("plugins.lsp-status")
        end
    }
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        ignore_install = { "help" }
    }
    use "rebelot/kanagawa.nvim"
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use {'j-hui/fidget.nvim', tag = 'legacy'}

end)

