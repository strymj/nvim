" ##### dein install settings #####

" for vim setting
set runtimepath+=~/.cache/dein

" install dir 
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

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

	" .toml file
	let g:rc_dir    = expand('~/.config/nvim/dein')
	let s:toml      = g:rc_dir . '/dein.toml'
	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

	" read toml and cache
	call dein#load_toml(s:toml,      {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	" end settings
	call dein#end()
	call dein#save_state()
endif

" plugin installation check
if dein#check_install()
	call dein#install()
endif
