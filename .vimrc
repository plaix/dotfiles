" Install all plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'walm/jshint.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'msanders/snipmate.vim'
Plugin 'bling/vim-airline'
Plugin 'sickill/vim-monokai'
call vundle#end()

syntax on
filetype plugin indent on
" set python tab complete
" let g:pydiction_location='~/.vim/bundle/PyDiction/complete-dict'
" set location of ctags for taglist.vim
" let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8/bin/ctags'
" let Tlist_GainFocus_On_ToggleOpen = 1
" colors monokai
colors molokai-transparent
" https://raw.githubusercontent.com/hugoroy/.vim/master/colors/molokai-transparent.vim
set relativenumber
" hide buffers instead of closing them
set hidden
"
" Mappings
set pastetoggle=<F2>
map <F2> :NERDTree
" fuzzy finder search in current directory, using CD command in NerdTree to
" set the working directory
map <F5> :FufFileWithFullCwd<CR>
" Search word under cursor in current dir || grep.vim plugin
map <F1> <esc>:Grep<CR>
"
" JSHINT nodejs Linter
map <F9> <esc> :JSHint<CR>

map t :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TlistToggle<CR>
map <C-l> :bn<CR>
map <C-h> :bp<CR>
"
" statusline build
set laststatus=2
set statusline=
set statusline+=%#todo#  "switch to todo highlight
set statusline+=%F       "full filename
set statusline+=%*
set statusline+=%#todo#
set statusline+=%{fugitive#statusline()} "show git branch
set statusline+=%*       "switch back to normal statusline highlight
set statusline+=%l       "line number
"
" " default the statusline to green when entering Vim
" hi statusline ctermfg=8 guifg=White ctermbg=15
"
" set popup menu color settings
hi Pmenu guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
hi PmenuSbar guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
hi PmenuThumb guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE
" "
" When searching in vim, make sure the search hit is never at the bottom
set scrolloff=5
"
" " VCL stuff, for editing Varnish files
au BufRead,BufNewFile *.vcl :set ft=vcl
au! Syntax vcl source ~/.vim/bundle/vcl-vim-plugin/syntax/vcl.vim
"
let php_folding = 1        
"Set PHP folding of classes and functions.
" This makes loading large php files slower then normal
"
" Airline functionality
" Set buffer line on top when only 1 tab is open
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'badwolf'
