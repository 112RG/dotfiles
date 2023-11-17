require("nvim-treesitter.configs").setup({
  ensure_installed = "all", --  "all", "maintained" or a list
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
      enable = true, -- false will disable the whole extension
      disable = { },
      additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
      enable = true,
      keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          node_decremental = "grN",
          scope_incremental = "grc",
      },
  },
  indent = {
      enable = false,
  },
  matchup = {
      enable = true,
  }
})