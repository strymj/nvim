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
	autocmd Colorscheme * highlight CursorLine ctermbg=none
	autocmd Colorscheme * highlight! link CursorLineNr Tag
	autocmd Colorscheme * highlight! link TabLine LineNr
	autocmd Colorscheme * highlight! link TabLineSel Underlined
	autocmd Colorscheme * highlight TabLineFill ctermbg=none
augroup END

" highlight trailing spaces for markdown files
augroup HighlightTrailingSpaces
	autocmd!
	autocmd BufRead,BufNewFile,ColorScheme *.md highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
	autocmd BufRead,BufNewFile *.md match TrailingSpaces /\s\+$/
augroup END


" neovim terminal style
" if has('nvim')
" 	augroup term_start_insert
" 		autocmd!
" 		" normal -> terminal mode when entering terminal window
" 		autocmd BufWinEnter,WinEnter term://* startinsert
" 	augroup END
" endif


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

" indent settings   avoid namespace indentation
set cindent
set cinoptions+=N-s

" highlight match ()
set showmatch
set matchtime=1

" fold settings
set foldmethod=marker
" set foldmethod=syntax
" set foldnestmax=3

" scrolloff setting
set scrolloff=3

" tab setting
set tabstop=2
set shiftwidth=2

" my tabline setting
set tabline=%!MyTabLine()

