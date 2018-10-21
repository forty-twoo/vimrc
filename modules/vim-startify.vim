fun s:setup()
  " Variable
  let g:startify_session_dir  = '~/.vim/session'
  let g:startify_files_number = 9
  let g:startify_list_order   = ['bookmarks', 'sessions', 'dir']
  let g:startify_bookmarks    = [
        \{'v': '~/.vim/vimrc'},
        \{'g': '~/.vim/gvimrc'},
        \{'z': '~/.zshrc'},
        \{'m': '~/.vim/modules'},
        \{'p': '~/Projects'},
        \]
  let g:startify_custom_header =
        \ map(split(system('fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) \
        \-$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n'), '\n'), '"   ". v:val')

  "hi link StartifyBracket Punctuation
  "hi link StartifyFile String
  "hi link StartifyFooter Normal
  "hi link StartifyHeader Comment
  "hi link StartifyNumber Function
  "hi link StartifyPath Statement

endfun
call s:setup()
