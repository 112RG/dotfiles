--[[ 
local nvim_lsp = require("lspconfig")    
local servers = {'gopls', 'eslint', 'jsonls', 'clangd', 'bashls', 'rust_analyzer', 'volar' }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        -- on_attach = require("plugins.on_attach").on_attach(),
        require'nlspsettings'.setup()
    }
end ]] require('lsp/rust')

