#!/bin/bash

#notify-send --icon=gtk-info Test "This is a test
# need get ignore array
function gitsearch {
	# find ~ -type d -name "*.git" ! -path "./.dotfiles/*" ! -path "./scripts/*" >> ~/.gitnotify-repos
	rm ~/.gitnotify-repos
	find ~ \
    -type d \
    '(' -name '*.git' ')' -and \
    -not '(' -path $HOME'/.dotfiles/*' -or -path $HOME'/.yabtm/*' ')' >> ~/.gitnotify-repos
	
	# find ~ -type d \( -path dir1 -o -path .yabtm -o -path .dotfiles \) -prune -false -o -name '*.git' >> ~/.gitnotify-repos
}
gitsearch
