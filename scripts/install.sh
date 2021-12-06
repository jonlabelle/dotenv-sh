#!/usr/bin/env bash

#
# Helper script for installing dotenv.sh into the current
# user's $HOME/bin directory and make it executable.
#

# shellcheck disable=2155,2164,2034,2005
readonly scriptsdir="$(cd "$(dirname "${0}")"; echo "$(pwd)")"

cd ..
readonly cwd="$(pwd)"
readonly source_file="${cwd}/dotenv.sh"
[ -d ~/bin ] || mkdir -p ~/bin
cd ~/bin
ln -sf "${cwd}/dotenv.sh" dotenv
chmod u+x dotenv
