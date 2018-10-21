fun s:setup()
  "  Mapping

  imap <C-j> <Plug>(neosnippet_expand_or_jump)
  smap <C-j> <Plug>(neosnippet_expand_or_jump)
  xmap <C-j> <Plug>(neosnippet_expand_target)


  " Variables
  let g:neosnippet#snippets_directory = ['~/.vim/plugged/vim-snippets/snippets']
  let g:neosnippet#disable_runtime_snippets = {
        \   '_' : 1,
        \ }

  let g:neosnippet#enable_completed_snippet = 1
  let g:neosnippet#enable_optional_arguments =0
  autocmd CompleteDone * call neosnippet#complete_done()

  " For conceal markers.
  if has('conceal')
    set conceallevel=2 concealcursor=niv
  endif

endf
call s:setup()
