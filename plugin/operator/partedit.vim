" vim: set et fdm=marker ft=vim sts=2 sw=2 ts=2 :


scriptencoding utf-8


if exists('g:loaded_operator_partedit')
  finish
endif


call operator#user#define('partedit-edit', 'operator#partedit#edit')
call operator#user#define('partedit-edit-contextually', 'operator#partedit#edit_contextually')


let g:loaded_operator_partedit = 1
