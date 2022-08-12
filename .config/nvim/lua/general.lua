-- ================== Aliases ========================
-- local g = vim.g
local o = vim.o
local b = vim.bo
local w = vim.wo
local cmd = vim.api.nvim_command

-- ============== Commands =====================

cmd("syntax enable")
cmd("filetype plugin on")
cmd("filetype plugin indent on")

-- ============== Basic   ==========================


o.termguicolors = true -- Allows coloring support and themes colors
o.compatible = false -- ompromising compatibilty
o.fileencoding = "utf-8" -- The encoding written to file
o.undolevels = 1000 -- use many muchos levels of undo
o.title = true -- change the terminal's title
o.visualbell = true -- don't beep
o.backup = false -- Some servers shave issues with backups
o.cmdheight = 1 -- Bigger messages display. command line height
o.updatetime = 200 -- Faster diagnostic messages (defaults 4000)
o.mouse = 'a' -- Enable mouse support
o.wildignore = '*.swp,*.bak,*.pyc,*.class'
o.backspace = 'indent,eol,start' -- allow back spacing over everything in insert mode
w.wrap = true -- wrap lines
w.list = true
w.number = true -- Setting up number line
w.relativenumber = false -- Setting relative number line
w.listchars = 'tab:>.,trail:.,extends:#,nbsp:.'
o.showmatch = true -- set show matching parenthesis
o.history = 1000 -- remember more commands and search history
o.lazyredraw = true -- Don't redraw while executing macros (good performance config)
o.magic = true -- For regular expressions turn magic on

o.conceallevel = 0 -- So that I can see `` in markdown files
o.shiftround = true -- use multiple of shiftwidth when indenting with '<' and '>'
o.whichwrap = '<,>,h,l' -- Allows moving between lines by hitting the end and start
b.undofile = true -- Maintain undo history between sessions
o.shortmess = o.shortmess .. "c" -- Don't pass messages to |ins-completion-menu|.
o.expandtab = true -- Converts tabs to spaces
o.ttyfast = true -- fast scrolling
o.pastetoggle = "<F2>"
o.completeopt = 'menuone,noselect'