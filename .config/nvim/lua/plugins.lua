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
    use 'nvim-neo-tree/neo-tree.nvim'
    use 'hrsh7th/vim-vsnip-integ'
    use 'kosayoda/nvim-lightbulb'
    use 'm-demare/hlargs.nvim'
    use 'neovim/nvim-lspconfig'
    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'
    use 'weilbith/nvim-code-action-menu'
    use 'williamboman/nvim-lsp-installer'
    use 'kyazdani42/nvim-web-devicons'
    use "cpea2506/one_monokai.nvim"
    use "nanotech/jellybeans.vim"
    use 'kyazdani42/nvim-tree.lua'
    use 'marko-cerovac/material.nvim'
    use 'sainnhe/sonokai'
    use 'rafamadriz/neon'
    use { "catppuccin/nvim", as = "catppuccin" }
    use "EdenEast/nightfox.nvim" 
    use 'folke/tokyonight.nvim'
    use 'luochen1990/rainbow'
    use 'nvim-treesitter/playground'
    use 'joshdick/onedark.vim'
    use {'dracula/vim', as = "dracula"}
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    --[[ use 'nvim-lualine/lualine.nvim' ]]
    use 'bluz71/vim-mistfly-statusline'
    use {
        "nvim-lua/lsp-status.nvim",
        require = function()
            require("plugins.lsp-status")
        end
    }
    use({"olimorris/onedarkpro.nvim", require("onedarkpro").setup {
        theme = "onedark_dark",
        colors = {
            onedark_dark = {
                bg = "#121212" -- yellow
            }
        },
        hlgroups = { -- Overriding the Comment highlight group
            Comment = {
                fg = "#5c6370"
            }, -- 1
            DiagnosticError = {
                bg = "#5c6370"
            },
            DiagnosticWarn = {
                bg = "#5c6370"
            },
            DiagnosticInfo = {
                bg = "#5c6370"
            },
            DiagnosticHint = {
                bg = "#5c6370"
            },

            DiagnosticSignError = {
                bg = "#5c6370"
            },
            DiagnosticSignWarn = {
                bg = "#5c6370"
            },
            DiagnosticSignInfo = {
                bg = "#5c6370"
            },
            DiagnosticSignHint = {
                bg = "#5c6370"
            },

            DiagnosticVirtualTextError = {
                bg = "#5c6370"
            },
            DiagnosticVirtualTextWarn = {
                bg = "#5c6370"
            },
            DiagnosticVirtualTextInfo = {
                bg = "#5c6370"
            },
            DiagnosticVirtualTextHint = {
                bg = "#5c6370"
            }

        }
    }})
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
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
    use {'j-hui/fidget.nvim'}

end)

