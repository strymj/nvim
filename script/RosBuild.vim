function! RosBuild()
  echo "RosBuild"
  ! cd %:p:h:h;make
endfunction

" Command enable
command! RosBuild :call RosBuild()

