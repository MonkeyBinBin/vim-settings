" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
  let files = systemlist('git ls-files -m 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
  let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
      \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_custom_header = [
      \ '   _____                 __                 __________.__      __________.__       ',
      \ '  /     \   ____   ____ |  | __ ____ ___.__.\______   \__| ____\______   \__| ____ ',
      \ ' /  \ /  \ /  _ \ /    \|  |/ // __ <   |  | |    |  _/  |/    \|    |  _/  |/    \',
      \ '/    Y    (  <_> )   |  \    <\  ___/\___  | |    |   \  |   |  \    |   \  |   |  \',
      \ '\____|__  /\____/|___|  /__|_ \\___  > ____| |______  /__|___|  /______  /__|___|  /',
      \ '        \/            \/     \/    \/\/             \/        \/       \/        \/',
      \ '                                                            ',
      \ '                                      -osyhhys+. `.                       ',
      \ '                           `        /hhsooooooshhmhd`                     ',
      \ '                         -mddhs/` -dhoooooooooooshmd`                     ',
      \ '                         .mmdhhhdyNdysoooooooooooooydy-                   ',
      \ '                           -/+osNmdmNNmdhysooooooooooshh-                 ',
      \ '                               yhsssyyyydddhhhhysooooosym                 ',
      \ '                              +mdy--hNNNmmh:::+oyhhhdddm:                 ',
      \ '                             .Nhs/--so/::+o-------::/+ho++-               ',
      \ '                             oy:----:o//++-----------:/Ns/m-              ',
      \ '                             hs:--o/----:/::-----------mh+m-              ',
      \ '                             /d:-------://::----------+h-:`               ',
      \ '                              /h/-+o:----------------/d.                  ',
      \ '                               `+ymdo-------------:+ys`      ``           ',
      \ '                                  :Nhhys+//:::/oyds/`    `+ydmmmy:        ',
      \ '                     -.:ossssso+. .Msoosyyhhhhhmydh     .dyh/.`-ddo       ',
      \ '                     hhd----:yoom-+hd++++++oooohyoM:    oym.    /dm`      ',
      \ '                     -hhoosym-   .doms+++++++++yh+mm`   -dsh   +dyy       ',
      \ '                      :+ +hod+  -hoysd+++++++++sd+hM+    oyh+ .hy+`       ',
      \ '                         /Nhym+yyoh+ d+++++++++sh+sNm     hsm             ',
      \ '                        -d+omhdsys-  ss++++++++yh+oNd/    hsm             ',
      \ '                        `mssdhm/     .d++++++++hy+oNyh   +hd+             ',
      \ '                         .+ydoyy      ho+++++++hs+oNsNoshyd/              ',
      \ '                           `dhhd`     .yyo+++oomo+sNhssso+`               ',
      \ '                            ``         `dmossymN++ys                      ',
      \ '                                       oys  .hsN+om.                      ',
      \ '                                       yso  sosNhy:                       ',
      \ '                                       +sh. -hosy:                        ',
      \ '                                   /syyyshdyhyssyh-                       ',
      \ '                                  .sssso+/++++/-`                         ',
      \ ]

