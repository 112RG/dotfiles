local lsp_status = require('lsp-status')
lsp_status.register_progress()
--[[ 
require('lspconfig').rust_analyzer.setup {
  -- rust-tools options
  tools = {
    autoSetHints = true,
    inlay_hints = {
      show_parameter_hints = true,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
      },
    },

  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by rust-tools.nvim
  -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
  -- https://rust-analyzer.github.io/manual.html#features
  server = {
    on_attach = lsp_status.on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    settings = {
      ["rust-analyzer"] = {
        assist = {
          importEnforceGranularity = true,
          importPrefix = "crate"
          },
        cargo = {
          allFeatures = true,
          autoreload = true,
      runBuildScripts = true,
      },
        checkOnSave = {
          -- default: `cargo check`
          command = "clippy"
          },
        },
        inlayHints = {
          lifetimeElisionHints = {
            enable = true,
            useParameterNames = true
          },
        },
      }
    },
} ]]

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
