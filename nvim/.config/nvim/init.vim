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
Plug 'jiangmiao/auto-pairs'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tab autocompletion remap
Plug 'ervandew/supertab'

call plug#end()

:colorscheme nord
let g:lightline = { 'colorscheme': 'darcula' }

" let g:deoplete#enable_at_startup = 1

" let g:airline_powerline_fonts = 1
" 
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
 
" Comment on Ctrl+/
:vmap  <Plug>Commentary
:nmap  gcc

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" Tab configuration
:set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
:autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Unimpared configuration
" Move lines with Ctrl+Shift+<arrow>
:nmap <C-S-Up> <Plug>unimpairedMoveUp
:nmap <C-S-Down> <Plug>unimpairedMoveDown

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

" Remap visual block like in Sublime Text
:noremap <S-Up> <S-v>
:noremap <S-Down> <S-v>
:vmap <S-Up> <Up>
:vmap <S-Down> <Down>

" Use Tab for autocompletion
" Reverse Tab completion order
" tpope 
let g:SuperTabDefaultCompletionType = "<c-n>"

" Enable mouse support
:set mouse=a
