"Airline configuration
set background=dark 
let g:airline_theme='gruvbox'
let g:gruvbox_bold='1'
let g:gruvbox_italic='1'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italicize_comments='1'
set termguicolors

"Color scheme (Gruvbox)
colorscheme gruvbox

"Set everything for airline to work properly
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"Setting line numbers to on
set number
set relativenumber

"Syntax and filetype
syntax on
filetype indent on

"Change tabs size and show tabs as characthers
set tabstop=4
set list
set lcs=tab:<->

set wrap

"Remaps for navigation in general
imap <space><space> <ESC>/<++><cr>4xi


"Add remap files
runtime customkeymaps/tex.vim
