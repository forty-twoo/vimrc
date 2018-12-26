fun s:setup()
  " Autocmd
  au FileType rust nmap [d <Plug>(rust-def)
  "au FileType rust nmap [s <Plug>(rust-def-split)
  "au FileType rust nmap [x <Plug>(rust-def-vertical)
endf
call s:setup()
