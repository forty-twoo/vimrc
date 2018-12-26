fun s:setup()
  " Variables

  let g:LanguageClient_serverCommands = {
        \ 'rust': ['rustup', 'run', 'stable', 'rls'],
        \ 'cpp': ['cquery', '--log-file=/tmp/cquery/cquery.log'],
        \ 'c': ['cquery', '--log-file=/tmp/cquery/cquery.log'],
        \ 'python': ['pyls'],
        \ 'javascript': ['javascript-typescript-stdio']
        \ }

  let g:LanguageClient_loadSettings = 1
  let g:LanguageClient_settingsPath = '~/.vim/etc/settings.json'

  let g:LanguageClient_hasSnippetSupport=1
  let g:LanguageClient_changeThrottle = 0.1
  let g:LanguageClient_diagnosticsEnable=0

endf
call s:setup()
