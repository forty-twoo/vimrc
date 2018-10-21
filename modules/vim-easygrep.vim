fun s:setup()
  " Variable
  let g:EasyGrepMode=0
  let g:EasyGrepCommand=0
  let g:EasyGrepRecursive=1
  let g:EasyGrepSearchCurrentBufferDir=1
  let g:EasyGrepIgnoreCase=1
  let g:EasyGrepHidden=0
  let g:EasyGrepBinary=0
  let g:EasyGrepFilesToInclude='*.c,*.h'
  let g:EasyGrepFilesToExclude='*.swp,*~,*.o,*.bin,*.iso,*.cfg,*.ld,*.txt,osmanthus'
  let g:EasyGrepAllOptionsInExplorer=1
  let g:EasyGrepWindow=0
  let g:EasyGrepReplaceWindowMode=0
  let g:EasyGrepOpenWindowOnMatch=1
  let g:EasyGrepEveryMatch=0
  let g:EasyGrepJumpToMatch=1
  let g:EasyGrepInvertWholeWord=0
  let g:EasyGrepPatternType='regex'
  let g:EasyGrepFileAssociationsInExplorer=0
  let g:EasyGrepExtraWarnings=0
  let g:EasyGrepOptionPrefix='<leader>vy'
  let g:EasyGrepReplaceAllPerFile=0
endf

call s:setup()
