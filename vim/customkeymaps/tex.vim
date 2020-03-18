
"Tex remap

"Doc Structure
autocmd FileType tex nmap ;P i/part(<++>)<cr><tab><++><ESC>k0i<space><space>
autocmd FileType tex nmap ;C i/chapter(<++>)<cr><tab><++><ESC>k0i<space><space>
autocmd FileType tex nmap ;S i/section(<++>)<cr><tab><++><ESC>k0i<space><space>
autocmd FileType tex nmap ;sS i/subsection(<++>)<cr><tab><++><ESC>k0i<space><space>
autocmd FileType tex nmap ;ssS i/subsubsection(<++>)<cr><tab><++><ESC>k0i<space><space>
autocmd FileType tex nmap ;P i/paragraph(<++>)<cr><tab><++><ESC>k0i<space><space>
autocmd FileType tex nmap ;sP i/subparagraph(<++>)<cr><tab><++><ESC>k0i<space><space>

"Lists
autocmd FileType tex nmap ;nL i/begin(enumerate)<cr><tab>
autocmd FileType tex nmap ;bL i/begin(itemize)<cr><tab>
autocmd FileType tex nmap ;dL i/begin(description)<cr><tab>

autocmd FileType tex nmap ;i i/item<space>
