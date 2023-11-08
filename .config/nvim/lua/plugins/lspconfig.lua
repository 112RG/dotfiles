local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup {}
lspconfig.clangd.setup {}
lspconfig.zls.setup {}
lspconfig.tsserver.setup {}
lspconfig.eslint.setup({
    capabilities = capabilities,
    flags = { debounce_text_changes = 500 },
    on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = true
      if client.resolved_capabilities.document_formatting then
        local au_lsp = vim.api.nvim_create_augroup("eslint_lsp", { clear = true })
        vim.api.nvim_create_autocmd("BufWritePre", {
          pattern = "*",
          callback = function()
            vim.lsp.buf.formatting_sync()
          end,
          group = au_lsp,
        })
      end
    end,
  })
require('rust-tools').setup {
    tools = {
        autoSetHints = true,
        inlay_hints = {
            only_current_line = false,
            only_current_line_autocmd = "CursorHold",
            show_parameter_hints = true,
            show_variable_name = true,
            parameter_hints_prefix = "<- ",
            other_hints_prefix = "=> ",
            max_len_align = false,
            max_len_align_padding = 1,
            right_align = false,
            right_align_padding = 7,
            highlight = "Comment"
        }
    },
    server = {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150
        },
        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        settings = {
            ["rust-analyzer"] = {
                cargo = {
                    allFeatures = true,
                    autoreload = true,
                    runBuildScripts = true
                },
                checkOnSave = {
                    command = "clippy",
                    enable = true
                },
                completion = {
                    autoimport = {
                        enable = true
                    },
                    postfix = {
                        enable = false
                    }
                },
                diagnostics = {
                    disabled = {"macro-error"}
                },
                procMacro = {
                    enable = true
                },
                rustcSource = "discover",
                updates = {
                    channel = "nightly"
                }
            }
        }
    }
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    underline = true,
    signs = true
})

-- Format file on save
vim.api.nvim_create_autocmd("BufWritePost", {
    callback = function()
        vim.lsp.buf.format() 
    end
})