" ##### dein install settings #####

" install dir 
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_file = expand('~/.config/nvim/dein') . '/plugins.toml'
let s:toml_dir = expand('~/.config/nvim/dein/plugins')

" dein installation check
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath+=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" begin settings
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	" call dein#load_toml(s:toml_file, { 'lazy' : 0 })
	" call dein#load_toml(s:toml_file, {})
	call dein#load_toml( s:toml_dir . '/tcomment_vim.toml', {} )
	call dein#load_toml( s:toml_dir . '/vim-surround.toml', {} )
	call dein#load_toml( s:toml_dir . '/yankround.vim.toml', {} )
	call dein#load_toml( s:toml_dir . '/neoterm.toml', {} )
	call dein#load_toml( s:toml_dir . '/lightline.vim.toml', {} )
	call dein#load_toml( s:toml_dir . '/ctrlp.vim.toml', {} )
	call dein#load_toml( s:toml_dir . '/iceberg.vim.toml', {} )
	call dein#load_toml( s:toml_dir . '/smart_tabline.vim.toml', {} )
	call dein#load_toml( s:toml_dir . '/vim-altercmd.toml', {} )

	call dein#end()
	call dein#save_state()
endif

" plugin installation check
if dein#check_install()
	call dein#install()
endif
