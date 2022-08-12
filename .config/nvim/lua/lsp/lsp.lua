local nvim_lsp = require("lspconfig")

local servers = {'gopls', 'tsserver', 'jsonls', 'clangd', 'bashls', 'rust_analyzer'}
for _, lsp in ipairs(servers) do

    --[[     if server == "rust_analyzer" then
        require("rust-tools").setup {}
        goto continue ]]
    nvim_lsp[lsp].setup { -- on_attach = require("plugins.on_attach").on_attach(),
    require'nlspsettings'.setup()}
end
