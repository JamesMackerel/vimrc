" Include bundle
source ~/.vim/vimrc.bundle

" vim settings
set encoding=utf-8
set shell=/bin/bash
set nu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set nowrap
set autoread
set hlsearch
set scrolloff=7
set pastetoggle=<f10>
set clipboard=unnamedplus
let g:mapleader=","

set wildmenu wildmode=full
set wildchar=<TAB> wildcharm=<C-Z>

" place cursor to last edit position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](\.(git|hg|svn)|vendor)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ }

set wildignore+=*/node_modules/*
set wildignore+=*/venv/*
autocmd FileType vue syntax sync fromstart

" color scheme
set t_Co=256
syntax enable
set background=dark
colorscheme tender
let g:airline_theme = 'tender'
if (has("termguicolors"))
    set termguicolors
endif

" tab settings
nnoremap <leader>n :tabn<CR>
nnoremap <leader>p :tabp<CR>

" maps
noremap <C-e> :NERDTreeToggle<CR>
nnoremap <leader>te :tabe<cr>
noremap <f8> :tabp<cr>
noremap <leader>tp :tabp<cr>
noremap <f9> :tabn<cr>
noremap <leader>tn :tabn<cr>
noremap <leader>tc :tabclose<cr>
noremap <f2> :TagbarToggle<cr>
nnoremap <leader>evv :vsplit $MYVIMRC<cr>
nnoremap <leader>evb :vsplit ~/.vim/vimrc.bundle<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>idl :IndentLinesToggle<cr>
nnoremap <leader>nu :set nu!<cr>
inoremap jk <esc>

" auto format
noremap <F4> :Autoformat<CR>
noremap <leader>ff :Autoformat<CR>
autocmd FileType yaml,yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType javascript,html,vue setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType htmldjango setlocal ts=4 sts=4 sw=4 expandtab
let g:formatters_htmldjango = ['htmlbeautify']

set cursorline

" YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_python_binary_path = 'python3'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
nnoremap gd :YcmCompleter GoTo<CR>

" nerdtree
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']

" vim-go
autocmd FileType go nnoremap <buffer> <leader>gb :GoBuild<cr>
autocmd FileType go nnoremap <buffer> <leader>gr :GoRun<cr>
autocmd FileType go nnoremap <buffer> <leader>gt :GoTest<cr>
au BufRead,BufNewFile *.gohtml set filetype=gohtmltmpl

" ultisnips
let g:UltiSnipsExpandTrigger='<c-f>'
