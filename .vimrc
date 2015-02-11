runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set bg=dark
set showfulltag
set laststatus=1

" filetypes
autocmd BufNewFile,BufRead *.scss set ft=sass
autocmd BufNewFile,BufRead *.haml set ft=haml
autocmd BufNewFile,BufRead *.prawn,{Cap,Guard,Gem,Vagrant}file set ft=ruby
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.{install,module,inc,test,profile,drush} set ft=php
autocmd BufNewFile,BufRead *.{vb,aspx.vb} set ft=vb
autocmd BufNewFile,BufRead *.{cs,ascx,asmx,asax} set ft=cs
autocmd BufNewFile,BufRead *.{aspx,master,ascx,ejs,handlebars} set ft=html

autocmd BufNewFile,BufRead *.cfm,*.cfc set ff=dos

" indentation
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

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
set indentexpr=
set indentkeys=

" coerce filename completion to shell-like behavior
set wildmenu
set wildmode=longest,list

filetype plugin on

" display extra whitespace at the end of the line except when typing
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

colorscheme asmdev

if &diff
  highlight DiffAdd ctermbg=black
  highlight DiffText ctermbg=black
  highlight DiffDelete ctermbg=black
  highlight DiffChange ctermbg=black
endif

set exrc
