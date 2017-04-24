" ##### neovim keymap settings #####

" reload init.vim
nnoremap <Space>rc :source ~/.config/nvim/init.vim<CR>

" write and quit
nnoremap <silent> <C-w> :w<CR>
nnoremap <silent> <C-q> :q<CR>

" normalmode Enter
nnoremap <CR> i<CR><Right><ESC>

" terminal
nnoremap @t :tabe<CR>:terminal<CR>
tnoremap <C-[> <C-\><C-n>
tnoremap <C-q> <C-\><C-n>:q<CR>

" tab move
nnoremap <C-l> gt
nnoremap <C-h> gT
tnoremap <C-l> gt
tnoremap <C-h> gT

" cursor settings
nnoremap j gj
nnoremap k gk
" inoremap <C-h> <ESC>ha
" inoremap <C-j> <ESC>gja
" inoremap <C-k> <ESC>gka
" inoremap <C-l> <ESC>la

" mone to next word
nnoremap <S-l> <S-Right>
nnoremap <S-h> <S-Left>

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
nnoremap @c :w<CR>:-tabe<CR>:terminal<CR>roscd<CR>catkin_make<CR>
nnoremap @b :w<CR>:RosBuild<CR>
nnoremap @m :w<CR>:CMakeBuild<CR>

