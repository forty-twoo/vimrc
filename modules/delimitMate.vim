fun s:setup()
  " Mapping
  imap <c-h> <Plug>delimitMateS-BS
  imap <c-s> <Plug>delimitMateS-Tab
  imap <c-q> <Plug>delimitMateJumpMany
  " Variable
  let g:delimitMate_matchpairs = "(:),[:],{:},<:>"
endf
call s:setup()
