" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

set encoding=utf-8

set autoindent

set shiftwidth=2

set expandtab

set tabstop=2

nnoremap qr :QuickRun

set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#end()
endif 

call neobundle#begin(expand('~/.vim/bundle'))
  NeoBundle 'Shougo/neocomplcache'
  NeoBundle 'Shougo/neosnippet'
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'thinca/vim-quickrun'
  NeoBundle 'altercation/vim-colors-solarized'
  NeoBundle 'w0ng/vim-hybrid'
  NeoBundle 'surround.vim'
  NeoBundle 'bling/vim-airline'
call neobundle#end()

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

set laststatus=2

" vim-hybrid
colorscheme hybrid
syntax on

