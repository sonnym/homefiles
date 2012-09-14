set bg=light
set showfulltag
set laststatus=1

autocmd BufNewFile,BufRead *.vb, *aspx.vb set ft=vb

autocmd BufNewFile,BufRead *.cs, *ascx, *.asmx, *.asax set ft=cs

autocmd BufNewFile,BufRead *.aspx,*.master,*.ascx set ft=html

autocmd BufNewFile,BufRead *.scss set ft=sass
autocmd BufNewFile,BufRead *.haml set ft=haml

autocmd BufNewFile,BufRead *.rb,*.rake,*.prawn,*.scss,*.js,*.json set tabstop=2
autocmd BufNewFile,BufRead *.rb,*.rake,*.prawn,*.scss,*.js,*.json set expandtab
autocmd BufNewFile,BufRead *.rb,*.rake,*.prawn,*.scss,*.js,*.json set softtabstop=2
autocmd BufNewFile,BufRead *.rb,*.rake,*.prawn,*.scss,*.js,*.json set shiftwidth=2
autocmd BufNewFile,BufRead *.prawn set ft=ruby

autocmd BufNewFile,BufRead *.md set filetype=markdown

autocmd BufNewFile,BufRead *.cfm,*.cfc set ff=dos

set noea
set autoindent
set copyindent
set incsearch
set wrap!
set smartcase
set hlsearch
set title
set mouse=

set cindent
set tabstop=4
"set softtabstop=4
set indentexpr=
set indentkeys=

filetype plugin on

" display extra whitespace at the end of the line except when typing
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+\%#\@<!$/

colorscheme asmdev
