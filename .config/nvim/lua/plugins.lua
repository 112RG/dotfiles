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
    {"simrat39/rust-tools.nvim"},
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
      build = ":TSUpdate",
      event = { "BufReadPre" },
      cmd = { "TSInstall", "TSUpdate" },
      config = function()
        require("plugins.treesitter")
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
    {
      {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        init = function()
          -- Disable automatic setup, we are doing it manually
          vim.g.lsp_zero_extend_cmp = 0
          vim.g.lsp_zero_extend_lspconfig = 0
        end,
      },
      {
        'williamboman/mason.nvim',
        lazy = false,
        config = true,
      },
    
      -- Autocompletion
      {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
          {'L3MON4D3/LuaSnip'},
        }
      },
    
      -- LSP
      {
        'neovim/nvim-lspconfig',
        cmd = {'LspInfo', 'LspInstall', 'LspStart'},
        event = {'BufReadPre', 'BufNewFile'},
        dependencies = {
          {'hrsh7th/cmp-nvim-lsp'},
          {'williamboman/mason-lspconfig.nvim'},
        }
      }
    },
    {
      'boltlessengineer/bufterm.nvim',
      lazy = false,
      config = function()
        require('bufterm').setup()
      end,
    },
    {
      'voldikss/vim-floaterm',
       lazy = false,
    }
}

require("lazy").setup(plugins, lazy_config)
