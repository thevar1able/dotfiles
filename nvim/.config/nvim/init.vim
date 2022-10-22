call plug#begin(stdpath('data') . '/plugged')

" Visual stuff
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'

" Input modification stuff
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'

" fzf
Plug 'junegunn/fzf.vim'

" Rust
Plug 'rust-lang/rust.vim'

" Language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

:colorscheme nord
let g:lightline = { 'colorscheme': 'darcula' }

" Coc configuration
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Comment on Ctrl+/
:vmap  <Plug>Commentary
:nmap  gcc

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" Tab configuration
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
:autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" turn off `-- INSERT --`
:set noshowmode

" always show sign column
:set signcolumn=yes

" Unindent in Insert with Shift-Tab
:inoremap <S-Tab> <C-d>

" Ctrl-Z to undo
:inoremap <C-z> <Esc>ui

" Use system clipboard
:set clipboard=unnamed
:vnoremap <C-c> y 
:vnoremap <LeftRelease> ygv

" Enable mouse support
:set mouse=a
