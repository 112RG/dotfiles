require('nvim-treesitter.configs').setup {
    ensure_installed = {"bash", "c", "cmake", "css", "dockerfile", "go", "gomod", "gowork", "hcl", "help", "html",
                        "http", "javascript", "json", "lua", "make", "markdown", "python", "regex", "rust", "toml",
                        "vim", "yaml", "zig"},
    highlight = {
        enable = true
    }
}
require('hlargs').setup()
