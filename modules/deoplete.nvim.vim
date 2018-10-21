fun s:setup()
  " Variables
  let g:deoplete#enable_at_startup = 1

  call deoplete#custom#option({
        \ 'auto_complete_delay': 0,
        \ 'async_timeout': 0,
        \ 'auto_refresh_delay': 1,
        \ 'smart_case': v:true,
        \ 'min_pattern_length': 1,
        \ 'max_list': 20
        \ })
  call deoplete#custom#source('_',
        \ 'matchers', ['matcher_full_fuzzy'])


  " Mapping
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ deoplete#mappings#manual_complete()
  function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction"}}}

  inoremap <silent><expr> <S-TAB>
        \ pumvisible() ? "\<C-p>" :
        \ "\<S-TAB>"

  function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction"}}}

  inoremap <expr> <CR> (pumvisible() ? "\<c-y>" : "\<CR>")

  set completeopt-=preview
endf
call s:setup()
