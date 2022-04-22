#!/bin/bash

set -e

DOTFILES="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo "Installing dot files from $DOTFILES"; echo
cd $DOTFILES

linkDotFile () {
	TARGET=${1#$DOTFILES/}
	echo installing: $(basename $@) to ~/"$TARGET"
	if [[ -f ~/"$TARGET" ]]; then
		echo ~/"$TARGET exists; backing up"
		mv ~/$TARGET{,.bak}
	fi
	TARGETDIR=$(dirname $TARGET)
	mkdir -p ~/$TARGETDIR
	ln -s $1 ~/$TARGET
}
export DOTFILES
export -f linkDotFile

# find . -maxdepth 1 -type f -name '.*' | xargs -I '{}' -- bash -c 'linkDotFile {}'
find $DOTFILES -name '.git' -prune -false -o -type f -name '.*' -a \! -name '*.swp' | xargs -I '{}' -- bash -c 'linkDotFile {};
echo'

