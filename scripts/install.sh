#!/usr/bin/env bash

##
# Helper script for installing dotenv.sh into ~/bin and make it executable.
##

# shellcheck disable=2155,2164,2034,2005
scriptsdir="$(cd "$(dirname "${0}")"; echo "$(pwd)")"
cd "$scriptsdir"
cd .. || exit 1
cwd="$(pwd)"

[ -d ~/bin ] || mkdir -p ~/bin
cd ~/bin

ln -sf "${cwd}/dotenv.sh" dotenv
chmod u+x dotenv
