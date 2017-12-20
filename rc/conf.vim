" ##### neovim configuration #####

" set English mode
language C

set encoding=utf-8
set fenc=utf-8
" set ambiwidth=double
" set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
" set fileformats=unix,dos,mac

" no .swp file
set noswapfile

" .swp file directory
" set directory=~/.vim/swp

" link clipboard
set clipboard=unnamedplus

" piyopiyo bell off
set visualbell t_vb=
set noerrorbells

" filetype auto detect
filetype plugin indent on

" regard .launch as xml file
augroup AutoLaunchAsXml
	autocmd!
	autocmd BufRead,BufNewFile *.launch setfiletype xml
augroup END

" exclude files when findinf
set wildignore+=*.o,*.zip,*.png,*.jpg,*.mp3.*.mp4,*.wav


" set mapleader
let mapleader = "\<Space>"
