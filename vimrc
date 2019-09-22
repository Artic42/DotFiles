"Setting for the powerline status
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256

"Setting line numbers to on
set number
set relativenumber

"Syntax
syntax on

"Color scheme (Molokai)
colorscheme molokai
let g:molokai_original = 1

"Change tabs size and show tabs as characthers
set tabstop=4
set list
set lcs=tab:<->

set wrap

"Remaps for navigation in general
imap <space><space> <ESC>/<++><cr>4xi

