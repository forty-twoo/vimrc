fun s:setup()
  " Mapping

  inoremap <silent><expr> ( complete_parameter#pre_complete("()")
  let g:complete_parameter_use_ultisnips_mapping = 1
  let g:complete_parameter_echo_signature = 1
  let g:racer_experimental_completer = 1
endf
call s:setup()
