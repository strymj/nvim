function! CMakeBuild()
  echo "CMakeBuild"
  ! cd ../build
  ! cmake ..
  ! make
endfunction

" Command enable
command! CMakeBuild :call CMakeBuild()
