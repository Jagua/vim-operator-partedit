" vim: set et fdm=marker ft=vim sts=2 sw=2 ts=2 :


scriptencoding utf-8


let s:save_cpo = &cpo
set cpo&vim


function! operator#partedit#edit(motion_wise) "{{{
  call partedit#start(line("'["), line("']"))
endfunction "}}}


function! operator#partedit#edit_contextually(motion_wise) "{{{
  call partedit#start(
        \   line("'["),
        \   line("']"),
        \   {'filetype' : context_filetype#get_filetype(&l:filetype)}
        \ )
endfunction "}}}


let &cpo = s:save_cpo
unlet s:save_cpo
