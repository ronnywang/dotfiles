
" http://stackoverflow.com/questions/4500748/how-to-source-all-vim-files-in-directory
execute pathogen#infect() 
for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor
