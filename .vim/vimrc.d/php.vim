source ~/.vim/plugin/matchit.vim

" pear install doc.php.net/pman
au FileType php set keywordprg=/usr/bin/man\ -M\ /usr/local/share/doc/pear/pman/

" http://vim.wikia.com/wiki/Better_indent_support_for_php_with_html
" => ~/.vim/indent/php.vim
au FileType php source ~/.vim/indent/php.vim

" http://www.vim.org/scripts/script.php?script_id=2075
" => ~/.vim/indent/html.vim
au FileType php source ~/.vim/indent/html.vim
au FileType html source ~/.vim/indent/html.vim

" http://plog.longwin.com.tw/files/funclist.txt.gz
au FileType php set dictionary+=~/.vim/dict/php.txt

" map F6 to i18n
map <F6> lbi<?= _('<Esc>lwi') ?><Esc>

" http://www.vim.org/scripts/script.php?script_id=1355

au FileType php source ~/.vim/php-doc.vim 
au FileType php inoremap <C-P> <ESC>:call PhpDocSingle()<CR>A 
au FileType php nnoremap <C-P> :call PhpDocSingle()<CR> 
" edit config.vim modify php-doc config
source ~/.vim/config/php-doc.vim
