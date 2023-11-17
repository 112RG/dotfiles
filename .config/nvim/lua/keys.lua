local g = vim.g

local function map(mode, lhs, rhs, opts)
    local options = {
        noremap = true,
        silent = true
    }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- ============== Leader Key =========================

g.mapleader = "\\"

-- ============== Trouble Key =========================

vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
vim.keymap.set('n', '<S-T>', function () vim.cmd('FloatermToggle') end)
vim.keymap.set('t', '<S-T>', function () vim.cmd('FloatermToggle') end)
-- ============== Lsp Server KeyBindings ===================

map("n", "<leader>lf", "<cmd>:lua vim.lsp.buf.format()<cr>", {
    noremap = true
})

-- ============== Telescope ===================

map("n", "<leader>ff", "<cmd>:Telescope find_files<cr>", {
    noremap = true
}) 
map("n", "<leader>fg", "<cmd>:Telescope live_grep<cr>", {
    noremap = true
})
map("n", "<leader>fb", "<cmd>:Telescope buffers<cr>", {
    noremap = true
})
map("n", "<leader>fh", "<cmd>:Telescope help_tags<cr>", {
    noremap = true
})
map("n", "<leader>fm", "<cmd>:Telescope marks<cr>", {
    noremap = true
})
map("n", "<leader>fl", "<cmd>:Telescope old_files<cr>", {
    noremap = true
})
map("n", "<leader>fc", "<cmd>:Telescope command_history<cr>", {
    noremap = true
})
map("n", "<leader>fa", "<cmd>:Telescope man_pages<cr>", {
    noremap = true
})
map("n", "<leader>fr", "<cmd>:Telescope registers<cr>", {
    noremap = true
})
map("n", "<leader>gg", "<cmd>:Telescope git_commits<cr>", {
    noremap = true
})
map("n", "<leader>Gs", "<cmd>:Telescope git_status<cr>", {
    noremap = true
})

-- ============== Neotree ===================

map("n", "<leader>ft", "<cmd>:Neotree<cr>", {
    noremap = true
})
map("n", "<leader>cft", "<cmd>:Neotree close<cr>", {
    noremap = true
})

-- ==============  General ===================

map("n", "<A-,>", "<cmd>:BufferPrevious<cr>", {
    noremap = true
})
map("n", "<A-.>", "<cmd>:BufferNext<cr>", {
    noremap = true
})
g.rustfmt_command = "rustfmt"
g.rustfmt_autosave = 1
