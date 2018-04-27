" ----------------------------------------------------------------------------
" KEY MAPS
" ----------------------------------------------------------------------------

nmap ; :Buffers<CR>
nmap <Leader>t :Files <CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>a :Ag<CR>

set pastetoggle=<Leader>p

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab


" ----------------------------------------------------------------------------
" Plugs
" ----------------------------------------------------------------------------


call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'https://github.com/skielbasa/vim-material-monokai'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'https://github.com/HerringtonDarkholme/yats.vim'
Plug 'https://github.com/quramy/tsuquyomi'
Plug 'https://github.com/rakr/vim-one'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'https://github.com/drewtempelmeyer/palenight.vim'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

" ----------------------------------------------------------------------------
" Syntax Highlighting Options
" ----------------------------------------------------------------------------

let g:javascript_plugin_jsdoc = 0
" let g:typescript_indent_disable = 1

" ----------------------------------------------------------------------------
" ALE 
" ----------------------------------------------------------------------------

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['html'] = ['prettier']
let g:ale_fixers['css'] = ['prettier']
let g:ale_fixers['typescript'] = ['prettier']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'

" ----------------------------------------------------------------------------
" Theme
" ----------------------------------------------------------------------------
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
" set termguicolors
syntax on
" colorscheme onedark
" colorscheme material-monokai
set background=dark
colorscheme palenight
" let g:nord_italic = 1
" let g:nord_italic_comments = 1
" let g:nord_uniform_status_lines = 1


hi Normal ctermbg=none
highlight NonText ctermbg=none
" 
" let g:materialmonokai_italic=1
" let g:materialmonokai_subtle_spell=1


" ----------------------------------------------------------------------------
" Powerline
" ----------------------------------------------------------------------------

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup


" ----------------------------------------------------------------------------
" Misc
" ----------------------------------------------------------------------------

set noswapfile
