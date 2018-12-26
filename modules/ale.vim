fun s:setup()
  " Variable
  let g:ale_linters = {
        \   'rust': ['cargo'],
        \   'cpp' : ['clang'],
        \   'c' : ['clang'],
        \   'python': ['pyflakes'],
        \   'asm' : ['']
        \}
  let g:ale_c_clang_options='-std=c11 -Wall'
  let g:ale_emit_conflict_warnings = 0
  let g:ale_sign_error = '.#'
  let g:ale_sign_warning = '.@'
  let g:airline#extensions#ale#enabled = 1
  let g:ale_lint_delay = 50
  nmap <silent> <C-k> <Plug>(ale_previous_wrap)
  nmap <silent> <C-j> <Plug>(ale_next_wrap)
  hi link ALEWarningSign Diffadd
  hi link ALEErrorSign DiffDelete
  hi ALEWarning gui=underline cterm=underline
  hi ALEError gui=underline cterm=underline
  let g:ale_set_loclist  = 0
  "let g:ale_set_quickfix = 1
  "let g:ale_open_list = 1
endf
call s:setup()
