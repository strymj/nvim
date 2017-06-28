" ##### neovim keymap settings #####

" reload init.vim
nnoremap @rc :source ~/.config/nvim/init.vim<CR>

" write and quit
" nnoremap <silent> <C-w> :w<CR>
" inoremap <silent> <C-w> <ESC>:w<CR>
" nnoremap <silent> <C-q> :q<CR>

" normalmode Enter
nnoremap <CR> i<CR><Right><ESC>

" tab change
nnoremap <C-l> :w<CR>gt
nnoremap <C-h> :w<CR>gT

" tab move
nnoremap @l :+tabmove<CR>
nnoremap @h :-tabmove<CR>

" cursor settings
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" mone to next word
nnoremap <S-l> w
nnoremap <S-h> b
vnoremap <S-l> w
vnoremap <S-h> b

" indent correction
nnoremap == mYgg=G'Y

" select all
nnoremap @a mZggVG

" searched highlight off
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

" write next row
nnoremap <C-j> o<ESC>
inoremap <C-j> <ESC>o

" c++ function shortcut
inoremap {{ {<CR>}<Up><ESC>o

" neovim terminal mapping
if has('nvim')
	" nnoremap @t :tabe<CR>:terminal<CR>
	tnoremap <ESC> <C-\><C-n>
	tnoremap <C-q> <C-\><C-n>:q<CR>
	tnoremap <C-l> <C-\><C-n>gt
	tnoremap <C-h> <C-\><C-n>gT
	tnoremap <C-w> <C-\><C-n><C-w>
endif

