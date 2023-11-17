local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()
require "plugins.cmp"
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lspconfig.zls.setup {}
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
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      -- (Optional) Configure lua language server for neovim
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
    rust_analyzer = function()
      local rust_tools = require('rust-tools')
      rust_tools.setup({
        server = {
          on_attach = function(client, bufnr)
            vim.keymap.set('n', '<leader>ca', rust_tools.hover_actions.hover_actions, {buffer = bufnr})
          end
        }
      })
    end,
  }
})
