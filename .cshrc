# ~/.cshrc
# from https://bitbucket.org/yuja/dotfiles/src/180a96566d12/dot.cshrc

if (! $?prompt || ! $?tcsh ) exit

set color

if ( -d ~/.cshrc.d ) then
    foreach name (`ls-F ~/.cshrc.d/*`)
        source "$name"
    end
endif
