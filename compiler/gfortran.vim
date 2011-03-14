" Compiler: GNU Fortran Compiler
" Maintainer: H Xu <xuhdev@gmail.com>
" Version: 0.1.2
" Last Change: 14 March 2011
" Homepage: http://www.vim.org/scripts/script.php?script_id=3496
"           https://bitbucket.org/xuhdev/compiler-gfortran.vim
" License: You can redistribute this plugin and/or modify it under the terms 
"          of the GNU General Public License as published by the Free Software 
"          Foundation; either version 2, or any later version. 

if exists('current_compiler')
    finish
endif
let current_compiler = 'gfortran'

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet errorformat=
            \%A%f:%l.%c:,
            \%-Z%trror:\ %m,
            \%-Z%tarning:\ %m,
            \%-C%.%#
