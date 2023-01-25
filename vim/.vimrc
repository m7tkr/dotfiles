set shell=/usr/local/bin/bash
set encoding=utf-8
set arabicshape
set listchars=space:*,extends:>,precedes:<,tab:\|>,eol:$
" set keymap=russian-jcukenwin
" set keymap=arabic_utf-8

set iminsert=0
set imsearch=0
set autochdir " changes default dir to currentfile dir
set noshowmatch " Show matching brackets

set wrap " Wrap text that goes beyond screen length
set colorcolumn=80 " colors column
hi ColorColumn ctermbg=darkgrey
hi ExtraWhitespace ctermbg=darkgrey
match ExtraWhitespace /\s\+$/
set textwidth=80 " line break at 80col

set nonumber " Show line numbers
set noerrorbells " Stop system vim sounds
" set guioptions=  " no scrollbars

" search-centricity
set nohlsearch " highlight search
set ignorecase " ignorecase
set incsearch " highlight while typing
set ttyfast
set scrolloff=5 " 5 lines before/after cursor preserved
" set showcmd " show commands written
set clipboard=unnamed " use systems clipboard
set formatoptions+=t
set background=dark
set foldmethod=indent " Enable folding
set foldlevel=99 " Enable folding
filetype plugin indent on
set softtabstop=4 " amount of whitespaces inserted on each <tab> press
set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " converts \t into <tabstop> amount of spaces

" no backup files
set nobackup
set noswapfile
set nowritebackup

" autocmd BufWritePost vimrc source % " source on save

" Vim-Plugin
call plug#begin('~/.vim/plugged')

   Plug 'preservim/nerdtree'
   Plug 'tpope/vim-surround'
   Plug 'tpope/vim-commentary'
   Plug 'tpope/vim-fugitive'
   Plug 'prettier/vim-prettier'
   Plug 'rrethy/vim-illuminate'  " highlightes words under cursor
   " Plug 'loremipsum' "don't work w/ Vim-Plugin
   Plug 'mattn/emmet-vim' " html&css
   Plug 'AndrewRadev/tagalong.vim'
   Plug 'morhetz/gruvbox'

call plug#end()

" --------------------------------
" Plugin Customization Begins Here
" --------------------------------


" vim-surround
let g:surround_45 = "{% \r %}"  " replace yss-
let g:surround_95 = "{{ \r }}"  " replace yss_
" https://ascii.cl/  : ascii character codes
" https://github.com/tpope/vim-surround/blob/master/doc/surround.txt

" nerd tree
let g:NERDTreeWinSize=23

" --------------------------------
" remapping-----------------------
" --------------------------------

" inserting one line below/above the current
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" remove search highlight (not needed in Vim9)
" nnoremap <C-L> :nohl<CR><C-L>

" ----------------------
" statusline setup------
" ----------------------

set ruler
set ruf=%30(%=%#LineNr#%.50F\ [%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %p%%%)
