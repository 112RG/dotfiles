local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('general')
require('plugins')
require('settings')
require('keys')

require('plugins/cmp')



--[[ vim.api.nvim_command("highlight TSInclude cterm=NONE ctermbg=NONE gui=NONE guibg=NONE guifg=#FF6C60")
vim.api.nvim_command("highlight TSNamespace cterm=NONE ctermbg=NONE gui=NONE guibg=NONE guifg=#C6C5FE")
vim.api.nvim_command("highlight TSVariable cterm=NONE ctermbg=NONE gui=NONE guibg=NONE guifg=#CCCCCC")
 ]]