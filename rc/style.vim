" ##### neovim style settings #####

" set English mode
language C

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" no .swp file
set noswapfile

" .swp file directory
" set directory=~/.vim/swp

" filetype auto detect
filetype plugin indent on

" use syntax
syntax on

" use 256 colors
set t_Co=256

" transparent background settings
augroup AutoTrans
	autocmd!
	autocmd Colorscheme * highlight Normal ctermbg=none
	autocmd Colorscheme * highlight NonText ctermbg=none
	autocmd Colorscheme * highlight LineNr ctermbg=none
	autocmd Colorscheme * highlight Folded ctermbg=none
	autocmd Colorscheme * highlight MatchParen ctermbg=none
augroup END

" New Buffer settings
augroup AutoBufRead
	autocmd!
	" regard .launch as xml file
	autocmd BufRead,BufNewFile *.launch setfiletype xml
	" auto commentout off
	" autocmd BufRead,BufNewFile * set formatoptions-=ro
augroup END

" set row number
set number

" neovim terminal style
if has('nvim')
	augroup linenumber
		autocmd!
		" normal -> terminal mode when moving terminal window
		autocmd BufWinEnter,WinEnter term://* startinsert
	augroup END
endif

" exclude files when findinf
set wildignore+=*.git,*.zip,*.png,*.jpg,*/Trash 

" set titlebar
set title

" highlight and incremental search result
set incsearch
set hlsearch
" if search string contains only Lowercase, search Uppercase and Lowercase
set ignorecase
" if search string contains Uppercase, don't apply ignorecase
set smartcase

" auto indent settings
set smartindent

" piyopiyo bell off
set visualbell t_vb=
set noerrorbells

" highlight match ()
set showmatch
set matchtime=1

" link clipboard
set clipboard=unnamedplus

" fold settings
set foldmethod=marker
" set foldmethod=syntax
" set foldnestmax=3

" scrolloff
set scrolloff=3

" tab setting
set tabstop=2
set shiftwidth=2

