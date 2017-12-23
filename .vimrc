set number
set relativenumber
set clipboard=unnamed

nmap <CR> :
inoremap jk <ESC>

let mapleader = ","
nmap <leader>v :tabe $MYVIMRC<CR>

colors desert
set ts=4
set shiftwidth=4
set expandtab

" Reload vimrc after writing
if has("autocmd")
    autocmd BufWritePost /home/jonas/.vimrc source $MYVIMRC
endif

" Lilypond Stuff
filetype off
set runtimepath+=/usr/share/lilypond/2.18.2/vim/
filetype on
syntax on
syntax sync minlines=256

" Autocommand to compile after writing
if has("autocmd")
    autocmd BufWritePost *.ly !lilypond %
    autocmd BufWritePost *.tex !pdflatex %
    autocmd BufWritePost *.py !python %
endif
