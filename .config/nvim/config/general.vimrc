syntax enable                     " Enable syntax highlighting
colorscheme moonfly
set termguicolors
set smartindent
set number                        " Don't show line numbers
set numberwidth=3                 " The width of the number column
set visualbell                    " Disable annoying beep
set wildmenu   
set mouse=a  
autocmd CursorHold,CursorHoldI * lua require('nvim-lightbulb').update_lightbulb()

