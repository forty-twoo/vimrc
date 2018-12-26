fun s:setup()
  " Mapping:
  nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

  " Variable:
  let g:which_key_map =  {}
  let g:which_key_map.w = {
        \ 'name' : '+windows' ,
        \ 'n' : ['<C-W>n', 'create-window']         ,
        \ 'w' : ['<C-W>w', 'other-window']          ,
        \ 'd' : ['<C-W>c', 'delete-window']         ,
        \ '=' : ['<C-W>=', 'balance-window']        ,
        \ 's' : ['<C-W>s', 'split-window-v']    ,
        \ 'v' : ['<C-W>v', 'split-window-h']    ,
        \ 'h' : ['<C-W>h', 'window-left']           ,
        \ 'j' : ['<C-W>j', 'window-below']          ,
        \ 'l' : ['<C-W>l', 'window-right']          ,
        \ 'k' : ['<C-W>k', 'window-up']             ,
        \ }

  let g:which_key_map.f = {
        \'name' : '+file',
        \ 's': ['update','save-file'],
        \ 'v': ['e $MYVIMRC','open-vimrc'],
        \ 'z': ['e ~/.zshrc','open-zshrc'],
        \ 'n': ['new','create-file'],
        \ 'q': ['wq' , 'save-and-exit'],
        \ 'c': ['wqa' , 'save-all-and-exit'],
        \ 'a': ['q!', 'abort'],
        \ 't': ['NERDTreeToggle', 'nerdtree']
        \}

  let g:which_key_map.l = {
        \ 'name' : '+lsp'                                            ,
        \ 'f' : ['LanguageClient#textDocument_formatting()'     , 'formatting']       ,
        \ 'h' : ['LanguageClient#textDocument_hover()'          , 'hover']            ,
        \ 'r' : ['LanguageClient#textDocument_references()'     , 'references']       ,
        \ 'R' : ['LanguageClient#textDocument_rename()'         , 'rename']           ,
        \ 's' : ['LanguageClient#textDocument_documentSymbol()' , 'document-symbol']  ,
        \ 'S' : ['LanguageClient#workspace_symbol()'            , 'workspace-symbol'] ,
        \ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['LanguageClient#textDocument_definition()'     , 'definition']       ,
        \ 't' : ['LanguageClient#textDocument_typeDefinition()' , 'type-definition']  ,
        \ 'i' : ['LanguageClient#textDocument_implementation()'  , 'implementation']  ,
        \ },
        \ }


  call which_key#register('<Space>', "g:which_key_map")
  nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
  vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
endf
call s:setup()
