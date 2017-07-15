" ##### neovim style settings #####

" transparent background settings
augroup AutoTrans
	autocmd!
	autocmd Colorscheme * highlight Normal ctermbg=none
	autocmd Colorscheme * highlight NonText ctermbg=none
	autocmd Colorscheme * highlight LineNr ctermbg=none
	autocmd Colorscheme * highlight Folded ctermbg=none
	autocmd Colorscheme * highlight MatchParen ctermbg=none
	autocmd Colorscheme * highlight EndOfBuffer ctermbg=none
augroup END


" neovim terminal style
if has('nvim')
	augroup term_start_insert
		autocmd!
		" normal -> terminal mode when entering terminal window
		autocmd BufWinEnter,WinEnter term://* startinsert
	augroup END
endif


" use 256 colors
set t_Co=256

" use syntax
syntax on

" set row number
set number

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

" highlight match ()
set showmatch
set matchtime=1

" fold settings
set foldmethod=marker
" set foldmethod=syntax
" set foldnestmax=3

" scrolloff
set scrolloff=3

" tab setting
set tabstop=2
set shiftwidth=2

