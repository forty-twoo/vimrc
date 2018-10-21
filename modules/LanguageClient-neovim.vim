fun s:setup()
  " Variables

  let g:LanguageClient_serverCommands = {
        \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
        \ 'cpp': ['cquery', '--log-file=.cache/cquery.log'],
        \ 'c': ['cquery', '--log-file=.cache/cquery.log'],
        \ }

  let g:LanguageClient_loadSettings = 1
  let g:LanguageClient_settingsPath = '~/.vim/etc/settings.json'

  let g:LanguageClient_hasSnippetSupport=0
  let g:LanguageClient_changeThrottle = 0.3
  let g:LanguageClient_diagnosticsEnable=0

  " Mapping
  nnoremap <F5> :call LanguageClient_contextMenu()<CR>
  nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
  nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
  nnoremap <silent> <Leader>rr :call LanguageClient#textDocument_rename()<CR>
endf
call s:setup()
