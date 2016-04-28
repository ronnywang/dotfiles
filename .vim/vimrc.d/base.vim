set hls
set mouse=""
set nocompatible
set nobomb
set t_Co=256
set termencoding=utf8
set encoding=utf8
set fileencodings=utf8,big5,gb2312,gb
set number
set foldmethod=marker

let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
set noexpandtab
else
set expandtab
set tabstop=4
set shiftwidth=4
endif

set ambiwidth=double
set complete+=k

syntax on

colorscheme desert
