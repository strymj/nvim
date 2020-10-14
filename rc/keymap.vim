" ##### neovim keymap settings #####

" reload init.vim
nnoremap <Leader>rc :source ~/.config/nvim/init.vim<CR>

" for US keyboard
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" normal mode Enter
nnoremap <CR> i<CR><Right><ESC>

" tab change
nnoremap <C-l> gt
nnoremap <C-h> gT

" tab move
nnoremap <Leader>l :+tabmove<CR>
nnoremap <Leader>h :-tabmove<CR>

" cursor settings
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" move to begin(end) of the line
nnoremap <S-l> $
nnoremap <S-h> 0
vnoremap <S-l> $
vnoremap <S-h> 0

" indent correction
nnoremap == mYgg=G'Y

" show filepath (replace default)
nnoremap <C-g> :echo expand("%:p")<CR>

" select all
nnoremap <Leader>a mZggVG

" searched highlight off
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" write next row
nnoremap <C-j> o<ESC>
inoremap <C-j> <ESC>o

" c++ function shortcut
" inoremap {{ {<CR>}<Up><ESC>o
inoremap {{ {<CR><ESC>o}<ESC><Up>I
" inoremap `` {/*{{{*/<CR>}/*}}}*/<Up><ESC>o

" neovim terminal mapping
if exists(':tnoremap')
	tnoremap <ESC> <C-\><C-n>
	tnoremap <C-q> <C-\><C-n>:q<CR>
	tnoremap <C-j> <Down>
	tnoremap <C-k> <Up>
	tnoremap <C-w> <C-\><C-n><C-w>
	tnoremap <C-h> <BS>
endif
