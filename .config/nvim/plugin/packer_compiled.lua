-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\rylee\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\rylee\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\rylee\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\rylee\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\rylee\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["base16-vim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\base16-vim",
    url = "https://github.com/chriskempson/base16-vim"
  },
  catppuccin = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  dracula = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dracula",
    url = "https://github.com/dracula/vim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["hlargs.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\hlargs.nvim",
    url = "https://github.com/m-demare/hlargs.nvim"
  },
  ["jellybeans.vim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\jellybeans.vim",
    url = "https://github.com/nanotech/jellybeans.vim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neon = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neon",
    url = "https://github.com/rafamadriz/neon"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["one_monokai.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\one_monokai.nvim",
    url = "https://github.com/cpea2506/one_monokai.nvim"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
  },
  ["onedarkpro.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  rainbow = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  sonokai = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-mistfly-statusline"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-mistfly-statusline",
    url = "https://github.com/bluz71/vim-mistfly-statusline"
  },
  ["vim-moonfly-colors"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-moonfly-colors",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "C:\\Users\\rylee\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
