#!/bin/bash

#notify-send --icon=gtk-info Test "This is a test
# need get ignore array
function gitsearch {
	# find ~ -type d -name "*.git" ! -path "./.dotfiles/*" ! -path "./scripts/*" >> ~/.gitnotify-repos
	notpath=""
	arr=("$@")
	for i in "${arr[@]}";
	do
		#echo $i
		notpath="-not -path '${i}*'${notpath}"
	done
	#echo "$notpath"
	rm ~/.gitnotify-repos
	find ~ \
	-type d \
	'(' -name '*.git' ')' -and \
	-not '(' -path ''\
	-or -path $HOME'/.dotfiles/*'\
	-or -path $HOME'/.yabtm/*'\
	')' >> ~/.gitnotify-repos
}
gitsearch
