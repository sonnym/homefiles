set nocompatible

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set bg=dark
set showfulltag
set laststatus=2

" filetypes
autocmd BufNewFile,BufRead *.scss set ft=sass
autocmd BufNewFile,BufRead *.haml set ft=haml
autocmd BufNewFile,BufRead *.{prawn,rabl},{Cap,Guard,Gem,Vagrant}file set ft=ruby
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.{install,module,inc,test,profile,drush} set ft=php
autocmd BufNewFile,BufRead *.{vb,aspx.vb} set ft=vb
autocmd BufNewFile,BufRead *.{cs,ascx,asmx,asax} set ft=cs
autocmd BufNewFile,BufRead *.{aspx,master,ascx,ejs,handlebars} set ft=html

autocmd BufNewFile,BufRead *.cfm,*.cfc set ff=dos

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

set noea
set wrap!
set title
set mouse=

" coerce filename completion to shell-like behavior
set wildmenu
set wildmode=longest,list

" disable help and ex-mode
nnoremap <F1> <nop>
nnoremap Q <nop>

" configure syntastic
let g:syntastic_enable_highlighting = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers = ['rustc']
let g:syntastic_elm_checkers = ['elm_make']

function! SyntasticCheckHook(errors)
    set statusline=

    if !empty(a:errors)
        let g:syntastic_loc_list_height = len(a:errors)

				set statusline+=%#warningmsg#
				set statusline+=%{SyntasticStatuslineFlag()}
				set statusline+=%*
    endif
endfunction

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

set exrc
