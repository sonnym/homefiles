set nocompatible

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on

" core
set bg=dark
set ruler
set showfulltag
set showmode
set laststatus=2
set noea
set wrap!
set title
set mouse=

" indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set cindent
set autoindent
set copyindent
set indentexpr=
set indentkeys=

" search
set incsearch
set smartcase
set hlsearch

" coerce filename completion to shell-like behavior
set wildmenu
set wildmode=longest,list

" disable help and ex-mode
nnoremap <F1> <nop>
nnoremap Q <nop>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" filetypes
autocmd BufNewFile,BufRead *.scss set ft=sass
autocmd BufNewFile,BufRead *.{jbuilder},{Gem,Vagrant}file set ft=ruby
autocmd BufNewFile,BufRead *.md set filetype=markdown

" ale configuration
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1

let g:ale_set_highlights = 0
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {'vue': ['eslint', 'vls']}

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

" syntastic highlighting overrides
highlight SyntasticWarningLine ctermbg=233 guibg=#121212
highlight SyntasticErrorLine ctermbg=233 guibg=#121212

highlight SyntasticWarningSign ctermfg=226 ctermbg=234 guifg=#ffff00 guibg=#1c1c1c
highlight SyntasticErrorSign ctermfg=196 ctermbg=234 guifg=#ff0000 guibg=#1c1c1c

highlight SignColumn ctermbg=234 guibg=#1c1c1c

highlight IncSearch ctermfg=255 ctermbg=028 guifg=#ffffff guibg=#008700
highlight Search ctermfg=255 ctermbg=028 guifg=#ffffff guibg=#008700

"Remember the positions in files with some git-specific exceptions"
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$")
  \           && expand("%") !~ "COMMIT_EDITMSG"
  \           && expand("%") !~ "ADD_EDIT.patch"
  \           && expand("%") !~ "addp-hunk-edit.diff"
  \           && expand("%") !~ "git-rebase-todo" |
  \   exe "normal g`\"" |
  \ endif

set exrc

" custom directories
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//
