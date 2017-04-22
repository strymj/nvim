function! RunPython()
  echo "RunPython"
  !python % 
endfunction

" Command enable
command! RunPython :call RunPython()

