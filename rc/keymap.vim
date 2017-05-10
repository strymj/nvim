" ##### neovim keymap settings #####

" reload init.vim
nnoremap @rc :source ~/.config/nvim/init.vim<CR>

" write and quit
nnoremap <silent> <C-w> :w<CR>
inoremap <silent> <C-w> <C-o>:w<CR>
nnoremap <silent> <C-q> :q<CR>

" normalmode Enter
nnoremap <CR> i<CR><Right><ESC>

" tab move
nnoremap <C-l> gt
nnoremap <C-h> gT

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
nnoremap == gg=G''

" searched highlight off
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

" write next row
nnoremap <C-j> o<ESC>
inoremap <C-j> <ESC>o

" c++ function shortcut
inoremap {{ {<CR>}<Up><ESC>o

" run catkinmake rosbuild python
nnoremap @p :w<CR>:RunPython<CR>
nnoremap @b :w<CR>:RosBuild<CR>
nnoremap @m :w<CR>:CMakeBuild<CR>

" neovim terminal mapping
if has('nvim')
	nnoremap @t :tabe<CR>:terminal<CR>
	tnoremap <ESC> <C-\><C-n>
	tnoremap <C-q> <C-\><C-n>:q<CR>
	tnoremap <C-l> <C-\><C-n>gt
	tnoremap <C-h> <C-\><C-n>gT
	nnoremap @c :w<CR>:-tabe<CR>:terminal<CR>roscd<CR>catkin_make<CR>
endif

