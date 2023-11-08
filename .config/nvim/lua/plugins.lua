--[[ local execute = vim.api.nvim_command
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
    use 'MunifTanjim/nui.nvim'
    use 'wbthomason/packer.nvim'
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
     use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() require("lualine").setup {} end
    } 
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
    use {"lukas-reineke/indent-blankline.nvim", config = function()
            require("ibl").setup {
                indentLine_enabled = 'test',
                filetype_exclude = {
                  "help",
                  "terminal",
                  "lazy",
                  "lspinfo",
                  "TelescopePrompt",
                  "TelescopeResults",
                  "mason",
                  "nvdash",
                  "nvcheatsheet",
                  "",
                },
                buftype_exclude = { "terminal" },
                show_trailing_blankline_indent = false,
                show_first_indent_level = false,
                show_current_context = true,
                show_current_context_start = true,
              }
        end
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

            }
        end
    }
    use {'j-hui/fidget.nvim', tag = 'legacy'}

end) ]]


local lazy_config = require("plugins.lazy_nvim")
local plugins = {
    {"rebelot/kanagawa.nvim", lazy = false,
    config = function() require("kanagawa").setup {
        transparent = false,
        terminalColors = false,
        undercurl = true,
        overrides = function(colors)
            local theme = colors.theme
            return {
                Normal = {bg = "#0e0d0d"}
--[[                 TelescopeTitle = { fg = theme.ui.special, bold = true },
                TelescopePromptNormal = { bg = theme.ui.bg_p1 },
                TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
                TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
                TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
                TelescopePreviewNormal = { bg = theme.ui.bg_dim },
                TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
                Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },  -- add `blend = vim.o.pumblend` to enable transparency
                PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                PmenuSbar = { bg = theme.ui.bg_m1 },
                PmenuThumb = { bg = theme.ui.bg_p2 }, ]]
            }
        end,
    } end
    },

    {"kvrohit/mellow.nvim", lazy = false},
    {"MunifTanjim/nui.nvim"},
    {"nvim-lua/plenary.nvim"},
    {"bluz71/vim-moonfly-colors"},
    {"bluz71/nvim-linefly", lazy = false},
    {"chriskempson/base16-vim"},
    {"romgrk/barbar.nvim"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-nvim-lsp-signature-help"},
    {"tamago324/nlsp-settings.nvim"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/cmp-vsnip"},
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/vim-vsnip"},
    {"hrsh7th/vim-vsnip-integ"},
    {"m-demare/hlargs.nvim"},
    {"rust-lang/rust.vim"},
    {"simrat39/rust-tools.nvim"},
    {"weilbith/nvim-code-action-menu"},
    {"kyazdani42/nvim-web-devicons"},
    {"nanotech/jellybeans.vim"},
    {"rafamadriz/neon"},
    {"luochen1990/rainbow"},
    {'j-hui/fidget.nvim', tag = 'legacy'},
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
          require('dashboard').setup {
            -- config
          }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    },
    {"nvim-treesitter/playground"},
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    {
        "nvim-lua/lsp-status.nvim",
        lazy = false,
        require = function()
            require("plugins.lsp-status")
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
    },
    { "lukas-reineke/indent-blankline.nvim",
        init = function()
            require("utils").lazy_load "indent-blankline.nvim"
        end,
        version = "2.20.7", opts = function()
            return require("plugins.blankline")
        end 
    },
    {
        'nvim-treesitter/nvim-treesitter',
        init = function()
            require("utils").lazy_load "nvim-treesitter"
        end,
        cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
        build = ":TSUpdate",
        ignore_install = { "help" },
        opts = function()
            return require "plugins.treesitter"
        end,
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("trouble").setup {

            }
        end
    },
    {"simrat39/rust-tools.nvim"},
    {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
--[[         opts = function()
          return require "plugins.configs.mason"
        end, ]]
        config = function(_, opts)
          require("mason").setup {
            ensure_installed = { "lua_ls", "rust_analyzer" }
          }
        end,
    },
    {"williamboman/mason-lspconfig", lazy = false, config = function(_, opts)
        require("mason-lspconfig").setup {}
      end,},
    {
      "neovim/nvim-lspconfig",
      init = function()
        require("utils").lazy_load "nvim-lspconfig"
      end,
      config = function()
        require "plugins.lspconfig"
      end, 
    },

}

require("lazy").setup(plugins, lazy_config)