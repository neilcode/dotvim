set nocompatible
filetype off

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
  !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/vundle'

" Files
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'

" Text
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'

" Utilities
Plugin 'bling/vim-airline'
Plugin '907th/vim-auto-save'
Plugin 'kien/ctrlp.vim'
Plugin 'rgarver/Kwbd.vim'
Plugin 'embear/vim-localvimrc'
Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'ZoomWin'

" Git
Plugin 'tpope/vim-fugitive'

" Syntax
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'jelera/vim-javascript-syntax'

" Ruby
Plugin 'tpope/vim-rails'
Plugin 'skalnik/vim-vroom'
Plugin 'jgdavey/vim-blockle'
Plugin 'ruby-matchit'

" Javascript
Plugin 'pangloss/vim-javascript'

source ~/.vim/bundles-clojure.vimrc

call vundle#end()
filetype plugin indent on
