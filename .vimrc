call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'jparise/vim-graphql'
Plug 'ryanoasis/vim-devicons'
Plug 'szymonmaszke/vimpyter'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ryanolsonx/vim-lsp-javascript'

call plug#end()

" ----- NERDTree settings -----
let g:NERDTreeWinSize=60
let NERDTreeShowHidden=1
" Open NERDTree automattically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeIgnore = ['\.pyc$', '\.swp$']

" ----- Ale Settings -----
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['eslint']}
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

" ----- CtrlP Settings -----
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|node_modules|target$'

" Use `tab` key to select completions.  Default is arrow keys.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use tab to trigger auto completion.  Default suggests completions as you type.
let g:completor_auto_trigger = 0
inoremap <expr> <Tab> Tab_Or_Complete()

" ----- Asynccomplete Settings -----
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
let g:asyncomplete_remove_duplicates = 1
let g:asyncomplete_smart_completion = 0

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set expandtab
set shiftwidth=2
set autoindent
set smartindent
set tabstop=2
set encoding=UTF-8

" More natural split navigation controls
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More natural split opening
set splitbelow
set splitright

" Set line numbers relatively
set number relativenumber
