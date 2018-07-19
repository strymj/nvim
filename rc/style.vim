" ##### neovim style settings #####

" transparent background settings
augroup AutoColor
	autocmd!
	autocmd Colorscheme * highlight Normal ctermbg=none
	autocmd Colorscheme * highlight NonText ctermbg=none
	autocmd Colorscheme * highlight LineNr ctermbg=none
	autocmd Colorscheme * highlight Folded ctermbg=none
	autocmd Colorscheme * highlight MatchParen ctermbg=none
	autocmd Colorscheme * highlight EndOfBuffer ctermbg=none
	autocmd Colorscheme * highlight CursorLine ctermbg=none
	autocmd Colorscheme * highlight! link CursorLineNr Special
	autocmd Colorscheme * highlight TabLine cterm=underline ctermbg=none ctermfg=239 " iceberg's LineNr
	autocmd Colorscheme * highlight TabLineSel cterm=underline ctermbg=none ctermfg=216 " iceberg's Title
	autocmd Colorscheme * highlight TabLineFill cterm=underline ctermbg=none ctermfg=239 " iceberg's LineNr
augroup END

" highlight trailing spaces for markdown files
augroup HighlightTrailingSpaces
	autocmd!
	autocmd BufRead,BufNewFile,ColorScheme *.md highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
	autocmd BufRead,BufNewFile *.md match TrailingSpaces /\s\+$/
augroup END


" set titlebar
set title

" use syntax
syntax on

" set row number
set number
set cursorline

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
