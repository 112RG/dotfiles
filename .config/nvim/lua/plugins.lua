local lazy_config = require("plugins.lazy_nvim")
local plugins = {{
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
        require("kanagawa").setup {
            transparent = false,
            terminalColors = false,
            undercurl = true,
            overrides = function(colors)
                local theme = colors.theme
                return {
                    Normal = {
                        bg = "#0e0d0d"
                    }
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
            end
        }
    end
}, {
    "kvrohit/mellow.nvim",
    lazy = false
}, {"MunifTanjim/nui.nvim"}, {"nvim-lua/plenary.nvim"}, {"bluz71/vim-moonfly-colors"}, {
    "bluz71/nvim-linefly",
    lazy = false
}, {"chriskempson/base16-vim"}, {"romgrk/barbar.nvim"}, {"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-nvim-lsp-signature-help"},
                 {"tamago324/nlsp-settings.nvim"}, {"hrsh7th/cmp-path"}, {"hrsh7th/cmp-vsnip"}, {"hrsh7th/vim-vsnip"},
                 {"hrsh7th/vim-vsnip-integ"}, {"m-demare/hlargs.nvim"}, {"rust-lang/rust.vim"},
                 {"simrat39/rust-tools.nvim"}, {"weilbith/nvim-code-action-menu"}, {"nanotech/jellybeans.vim"},
                 {"rafamadriz/neon"}, {"luochen1990/rainbow"}, {"simrat39/rust-tools.nvim"}, {
    'j-hui/fidget.nvim',
    tag = 'legacy'
}, {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            -- config
        }
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
}, {
    "windwp/nvim-autopairs",
    config = function()
        require("nvim-autopairs").setup {}
    end
}, {
    "nvim-lua/lsp-status.nvim",
    lazy = false,
    require = function()
        require("plugins.lsp-status")
    end
}, {
    'nvim-telescope/telescope.nvim',
    lazy = false
}, {
    "lukas-reineke/indent-blankline.nvim",
    init = function()
        require("utils").lazy_load "indent-blankline.nvim"
    end,
    version = "2.20.7",
    opts = function()
        return require("plugins.blankline")
    end
}, {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = {"BufReadPre"},
    cmd = {"TSInstall", "TSUpdate"},
    config = function()
        require("plugins.treesitter")
    end
}, {
    "folke/trouble.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require("trouble").setup {}
    end
}, {{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    init = function()
        -- Disable automatic setup, we are doing it manually
        vim.g.lsp_zero_extend_cmp = 0
        vim.g.lsp_zero_extend_lspconfig = 0
    end
}, {
    'williamboman/mason.nvim',
    lazy = false,
    config = true
}}, {
    'neovim/nvim-lspconfig',
    cmd = {'LspInfo', 'LspInstall', 'LspStart'},
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {{'hrsh7th/cmp-nvim-lsp'}, {'williamboman/mason-lspconfig.nvim'}}
}, {
    'boltlessengineer/bufterm.nvim',
    lazy = false,
    config = function()
        require('bufterm').setup()
    end
}, {
    'voldikss/vim-floaterm',
    lazy = false
}, {
    'saecki/crates.nvim',
    event = {"BufRead Cargo.toml"},
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
        require('crates').setup()
    end
}, {
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    opts = {},
    keys = {{
        "<leader>up",
        function()
            local Util = require("lazy.core.util")
            vim.g.minipairs_disable = not vim.g.minipairs_disable
            if vim.g.minipairs_disable then
                Util.warn("Disabled auto pairs", {
                    title = "Option"
                })
            else
                Util.info("Enabled auto pairs", {
                    title = "Option"
                })
            end
        end,
        desc = "Toggle auto pairs"
    }}
}, {
    "echasnovski/mini.surround",
    keys = function(_, keys)
        -- Populate the keys based on the user's options
        local plugin = require("lazy.core.config").spec.plugins["mini.surround"]
        local opts = require("lazy.core.plugin").values(plugin, "opts", false)
        local mappings = {{
            opts.mappings.add,
            desc = "Add surrounding",
            mode = {"n", "v"}
        }, {
            opts.mappings.delete,
            desc = "Delete surrounding"
        }, {
            opts.mappings.find,
            desc = "Find right surrounding"
        }, {
            opts.mappings.find_left,
            desc = "Find left surrounding"
        }, {
            opts.mappings.highlight,
            desc = "Highlight surrounding"
        }, {
            opts.mappings.replace,
            desc = "Replace surrounding"
        }, {
            opts.mappings.update_n_lines,
            desc = "Update `MiniSurround.config.n_lines`"
        }}
        mappings = vim.tbl_filter(function(m)
            return m[1] and #m[1] > 0
        end, mappings)
        return vim.list_extend(mappings, keys)
    end,
    opts = {
        mappings = {
            add = "gsa", -- Add surrounding in Normal and Visual modes
            delete = "gsd", -- Delete surrounding
            find = "gsf", -- Find surrounding (to the right)
            find_left = "gsF", -- Find surrounding (to the left)
            highlight = "gsh", -- Highlight surrounding
            replace = "gsr", -- Replace surrounding
            update_n_lines = "gsn" -- Update `n_lines`
        }
    }
}, {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {"hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path"},
    opts = function()
        vim.api.nvim_set_hl(0, "CmpGhostText", {
            link = "Comment",
            default = true
        })

        local cmp = require("cmp")
        local lsp_zero = require('lsp-zero')
        lsp_zero.extend_cmp()
        local defaults = require("cmp.config.default")()
        return {
            completion = {
                completeopt = "menu,menuone,noinsert"
            },
            formatting = lsp_zero.cmp_format(),
            mapping = cmp.mapping.preset.insert({
                ["<C-n>"] = cmp.mapping.select_next_item({
                    behavior = cmp.SelectBehavior.Insert
                }),
                ["<C-p>"] = cmp.mapping.select_prev_item({
                    behavior = cmp.SelectBehavior.Insert
                }),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({
                    select = true
                }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                ["<S-CR>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true
                }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                ["<C-CR>"] = function(fallback)
                    cmp.abort()
                    fallback()
                end
            }),
            sources = cmp.config.sources({{
                name = "nvim_lsp"
            }, {
                name = "path"
            }}, {{
                name = "buffer"
            }}),

            experimental = {
                ghost_text = {
                    hl_group = "CmpGhostText"
                }
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered()
            },
            sorting = defaults.sorting
        }
    end,
    config = function(_, opts)
        for _, source in ipairs(opts.sources) do
            source.group_index = source.group_index or 1
        end
        require("cmp").setup(opts)
    end
}, {
    "L3MON4D3/LuaSnip",
    build = (not jit.os:find("Windows")) and
        "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp" or nil,
    dependencies = {{
        "rafamadriz/friendly-snippets",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    }, {
        "nvim-cmp",
        dependencies = {"saadparwaiz1/cmp_luasnip"},
        opts = function(_, opts)
            opts.snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end
            }
            table.insert(opts.sources, {
                name = "luasnip"
            })
        end
    }},
    opts = {
        history = true,
        delete_check_events = "TextChanged"
    },
    -- stylua: ignore
    keys = {{
        "<Tab>",
        function()
            return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
        end,
        expr = true,
        silent = true,
        mode = "i"
    }, {
        "<Tab>",
        function()
            require("luasnip").jump(1)
        end,
        mode = "s"
    }, {
        "<s-Tab>",
        function()
            require("luasnip").jump(-1)
        end,
        mode = {"i", "s"}
    }}
}, {
    "nvim-cmp",
    dependencies = {"saadparwaiz1/cmp_luasnip"},
    opts = function(_, opts)
        opts.snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end
        }
        table.insert(opts.sources, {
            name = "luasnip"
        })
    end
}}

require("lazy").setup(plugins, lazy_config)
