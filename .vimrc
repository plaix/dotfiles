call pathogen#infect()
syntax on
filetype plugin indent on
" set showcmd
set showcmd
" set mapleader
"let mapleader=","
" auto set dir to current working file
autocmd BufEnter * silent! lcd %:p:h
" Python mode settings
"let g:pymode_lint_write = 0
" run python code
let g:pymode_run_key = 'R'
let g:pymode_lint_checker = "pyflakes"
" Python jedi-vim settings
" let g:jedi#use_tabs_not_buffers = 0
" set location of ctags for taglist.vim
let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Use_Horiz_Window = 1
colors Monokai
set relativenumber
" hide buffers instead of closing them
set hidden

" Mappings
map <F3> :s/^/#/<CR> 
map <F4> :s/#//<CR>
map <F2> :NERDTree
" Search word under cursor in current dir || grep.vim plugin
map <F1> <esc>:CtrlPMixed<CR>
" Set number toggle button for copy pasta
map <silent> <F7> :set invnumber<cr>
let Grep_Xargs_Options = '-0'

" map t :NERDTreeToggle \| :silent NERDTreeMirror<CR>

map t :NERDTreeToggle<CR>

nnoremap <silent> <F8> :TlistToggle<CR>
map <C-l> :bn<CR>
map <C-h> :bp<CR>

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

" default the statusline to green when entering Vim
hi statusline ctermfg=8 guifg=White ctermbg=15

" set popup menu color settings
hi Pmenu guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
hi PmenuSbar guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
hi PmenuThumb guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE
"
" When searching in vim, make sure the search hit is never at the bottom
set scrolloff=5

" VCL stuff, for editing Varnish files
au BufRead,BufNewFile *.vcl :set ft=vcl
au! Syntax vcl source ~/.vim/bundle/vcl-vim-plugin/syntax/vcl.vim

let php_folding = 1       
"Set PHP folding of classes and functions. Makes loading large php files slower

" Set autoreload, makes it so switching branches in git will reload the file
set autoread
" crtl p finder settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" set the default working directory
let g:ctrlp_working_path_mode = 'ra'
" force pyflakes to stay away from the quickfix window
let g:pyflakes_use_quickfix = 0
" auto set nose as compile for python file
autocmd BufNewFile,BufRead *.py compiler nose
" set makegreen hook for the green bar on nose test
map <leader>t :call MakeGreen()<CR>
"let g:makegreen_stay_on_file = 1
"
"Fugitive vim keybinds
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>ga :Gwrite<cr>
nmap <leader>gl :Glog<cr>
nmap <leader>gd :Gdiff<cr>

"fugitive git push
map <F6> :Git push<CR>
" airline vim buffer line
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_c = airline#section#create(['%F'])
" JSHINT
let jshint2_save = 1
nnoremap <silent><F9> :JSHint<CR>
" syntastic disable on javascript
let g:syntastic_javascript_checkers = []
" Search for selected text
vnorem // y/<c-r>"<cr>

