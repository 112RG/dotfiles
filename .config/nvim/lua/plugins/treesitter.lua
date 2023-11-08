local options = {
    ensure_installed = {"bash", "c", "cmake", "css", "dockerfile", "go", "gomod", "gowork", "hcl", "html",
                        "http", "javascript", "json", "lua", "make", "markdown", "python", "regex", "rust", "toml",
                        "vim", "yaml", "zig"},  
    highlight = {
      highlight = {
        enable = true, -- false will disable the whole extension
        disable = { },
        additional_vim_regex_highlighting = false,
    },
    },
  
    indent = { enable = true },
  }
  
  return options