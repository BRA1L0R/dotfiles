" General VIM behaviour configuration
syntax on
set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off                  " required

set updatetime=100
set tabstop=2
set expandtab
set autoindent
set shiftwidth=2
set autowrite
set number

" Keybinds
nnoremap <F6> :tabp<CR>
nnoremap <F7> :tabn<CR>
nnoremap <F8> :tabe 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
" Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'leafgarland/typescript-vim'
Plugin 'neoclide/coc.nvim'
Plugin 'airblade/vim-gitgutter'
Plugin 'prettier/vim-prettier'

call vundle#end()
filetype plugin indent on

" PaperColor theme
set t_Co=256

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }

colorscheme PaperColor

" Powerline (airline)
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'

" Typescript configuration
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

" Gitgutter
let g:gitgutter_enabled = 1
let g:gitgutter_set_sign_backgrounds = 1
highlight clear SignColumn
set signcolumn=number

" Prettier configuration
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1
