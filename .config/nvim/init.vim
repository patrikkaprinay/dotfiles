"iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"|`
"    ni $HOME/AppData/Local/nvim/autoload/plug.vim -Force

set relativenumber
set number
:set tabstop=3
:set shiftwidth=3
:set expandtab
set nobackup
let mapleader=" "
set nowritebackup
filetype plugin indent on

let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript']

set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

Plug 'tomasiser/vim-code-dark'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'
Plug 'szw/vim-maximizer'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kassio/neoterm'
Plug 'tpope/vim-commentary'
Plug 'sbdchd/neoformat'

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'max-0406/autoclose.nvim'

call plug#end()

map <silent> <C-n> :NERDTreeFocus<CR>


filetype on

" colorscheme gruvbox
colorscheme codedark

inoremap jk <ESC>

language en_US

" szw/vim-maximizer
nnoremap <leader>m :MaximizerTogle!<CR>

" kassio/neoterm
let g:neoterm_default_mod = 'vertical'
let g:neoterm_size = 60
let g:neoterm_autoinsert = 1
nnoremap <c-q> :Ttoggle<CR>
inoremap <c-q> <Esc>:Ttoggle<CR>
tnoremap <c-q> <c-\><c-n>:Ttoggle<CR>

" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>
let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.js Neoformat

" Prettier
autocmd FileType javascript setlocal formatprg=prettier\ --single-quote\ --no-semi\ es5
" Use formatprg when available
let g:neoformat_try_formatprg = 1
