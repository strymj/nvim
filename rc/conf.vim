" ##### neovim configuration #####

" set English mode
language C

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" no .swp file
set noswapfile

" link clipboard
set clipboard=unnamedplus

" piyopiyo bell off
set visualbell t_vb=
set noerrorbells

" .swp file directory
" set directory=~/.vim/swp

" filetype auto detect
filetype plugin indent on

" New Buffer settings
augroup AutoBufRead
	autocmd!
	" regard .launch as xml file
	autocmd BufRead,BufNewFile *.launch setfiletype xml
	" auto commentout off
	" autocmd BufRead,BufNewFile * set formatoptions-=ro
augroup END

" exclude files when findinf
set wildignore+=*.git,*.zip,*.png,*.jpg,*/Trash


" set mapleader
let mapleader = "\<Space>"

