fun s:setup()
  " Variable
  let g:ycm_confirm_extra_conf                            = 0
  let g:ycm_complete_in_comments                          = 1
  let g:ycm_error_symbol                                  = '✖'
  let g:ycm_warning_symbol                                = '⚡'
  let g:ycm_add_preview_to_completeopt                    = 1
  let g:ycm_python_binary_path                            = '/usr/bin/python'
  let g:ycm_rust_src_path                                 = '/usr/src/rust/src'
  let g:ycm_collect_identifiers_from_comments_and_strings = 1
  let g:ycm_seed_identifiers_with_syntax                  = 1
  "let g:ycm_global_ycm_extra_conf                         = '~/.vim/etc/.ycm_extra_conf.py'
  let g:ycm_show_diagnostics_ui                           = 0
  let g:ycm_collect_identifiers_from_tags_files           = 1


  let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'qf' : 1,
        \ 'notes' : 1,
        \ 'unite' : 1,
        \ 'vimwiki' : 1,
        \ 'pandoc' : 1,
        \ 'infolog' : 1,
        \ 'mail' : 1
        \}
  " Mapping
  nmap <silent> [d :YcmCompleter GoToDeclaration<cr>
  inoremap <expr> <cr> pumvisible() ? "<esc>a" : "\<cr>"
endfun
call s:setup()
