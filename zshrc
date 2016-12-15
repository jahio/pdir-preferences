#!/usr/bin/env zsh
#
# Custom .zshrc file. Meant to be saved under $HOME/.preferences/zshrc,
# then SYMLINKED as $HOME/.zshrc
#
#     ln -s $HOME/.preferences/zshrc $HOME/.zshrc
#
# Will automatically source the following from $HOME/.preferences:
#
# + env
# + secrets
# + paths
# + misc
#

#
# Establish environment variable $PDIR so we know where the the preferences
# directory is going forward.
#

export PDIR="$HOME/.preferences"

#
# Sanity Check: Ensure each of the following files exists and is owned by $USER
#

chown -R $USER $PDIR
touch $PDIR/env $PDIR/paths $PDIR/secrets $PDIR/misc $PDIR/aliases

source $PDIR/env
source $PDIR/paths
source $PDIR/secrets
source $PDIR/aliases
source $PDIR/misc

