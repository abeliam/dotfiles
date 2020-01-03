if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible

filetype plugin on

set number

set laststatus=2

set encoding=utf-8
set fileencoding=utf-8

syntax on

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'chriskempson/base16-vim'
call plug#end()

let base16colorspace=256
colorscheme base16-classic-dark
