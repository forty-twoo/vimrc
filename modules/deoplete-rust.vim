fun s:setup()
  " Variable
  let g:deoplete#sources#rust#racer_binary='racer'
  let g:deoplete#sources#rust#rust_source_path='/usr/src/rust/src'
  let g:deoplete#sources#rust#disable_keymap=1

  " Mapping
  nmap <buffer> [d <plug>DeopleteRustGoToDefinitionDefault
  nmap <buffer> [i  <plug>DeopleteRustShowDocumentation
endf
call s:setup()
