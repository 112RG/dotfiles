require('general')
require('plugins')
require('settings')
require('keys')
require('lsp')

require('plugins/tree')
require('plugins/cmp')



--[[ vim.api.nvim_command("highlight TSInclude cterm=NONE ctermbg=NONE gui=NONE guibg=NONE guifg=#FF6C60")
vim.api.nvim_command("highlight TSNamespace cterm=NONE ctermbg=NONE gui=NONE guibg=NONE guifg=#C6C5FE")
vim.api.nvim_command("highlight TSVariable cterm=NONE ctermbg=NONE gui=NONE guibg=NONE guifg=#CCCCCC")
 ]]