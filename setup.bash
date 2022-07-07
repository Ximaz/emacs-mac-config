#!/bin/bash
set -e
set -x

# Creates the emacs folder if not found.
mkdir -p "~/.emacs"
if [[ ! -d "~/.emacs" ]]; then
    echo "Unable to create the ~/.emacs folder. Please, check your permissions or create it by yourself."
    exit 1
fi

# Move the init.el file into the .emacs folder.
if [[ -f "~/.emacs/init.el" ]]; then
    echo "An init.el file already lives in here. Please, make a backup by renaming it as you want to and start this script again."
    exit 2
fi
cp "init.el" "~/.emacs/init.el"
if [[ ! -f "~/.emacs/init.el" ]]; then
    echo "Unable to copy the init.el file into ~/.emacs/ . Please, check your permissions or move it by yourself."
    exit 3
fi

# Move the lisp folder into the .emacs folder.
if [[ -d "~/.emacs/lisp" ]]; then
    echo "A lisp folder already lives in here. Please, make a backup by renaming it as you want to and start this script again."
    exit 4
fi
cp -r "lisp" "~/.emacs/lisp"
if [[ ! -d "~/.emacs/lisp" ]]; then
    echo "Unable to copy the lisp folder into ~/.emacs/ . Please, check your permissions or move it by yourself."
    exit 5
fi

echo "Done. You can launc or restart Emacs."
