" Plugins "
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'derekwyatt/vim-scala'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
" Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}

call plug#end()

" Config for vim-scala "
au BufRead,BufNewFile *.sbt set filetype=scala
autocmd FileType json syntax match Comment +\/\/.\+$+

colorscheme nord
set laststatus=2
set noshowmode

let g:lightline = {
    \   'colorscheme': 'nord',
    \ }

set et 		"expand tabs to spaces"

set number

" enable filetype detection: "
filetype on
filetype plugin on
au! BufRead,BufNewFile *.markdown set filetype=markdown
au! BufRead,BufNewFile *.md       set filetype=markdown

autocmd FileType cpp       setlocal shiftwidth=4 tabstop=4
autocmd FileType html      setlocal shiftwidth=2 tabstop=2
autocmd FileType mk        setlocal noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType markdown  setlocal shiftwidth=4 tabstop=4
autocmd FileType scala     setlocal shiftwidth=4 tabstop=4
autocmd FileType c         setlocal shiftwidth=4 tabstop=4
