function! RosCatkinMake()
  echo "RosCatkinMake"
  ! cd ~/catkin_ws
  ! catkin_make
endfunction

" Command enable
command! RosCatkinMake :call RosCatkinMake()

