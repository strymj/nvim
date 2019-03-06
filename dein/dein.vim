" ##### dein install settings #####

" install dir 
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_file = expand('~/.config/nvim/dein') . '/plugins.toml'

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
	call dein#load_toml(s:toml_file, {})
	call dein#end()
	call dein#save_state()
endif

" plugin installation check
if dein#check_install()
	call dein#install()
endif
