#!/bin/bash

# Install Arcanist command line tool for dev

if ! hash php &> /dev/null; then
    echo -e " *****\n ***** INSTALLING PHP\n *****"
    sudo apt-get install php5-cli php5-curl
fi

if [ ! -d ~/.arc_install ]; then
    echo -e " *****\n ***** CLONING THE ARC TOOL\n *****"
    mkdir ~/.arc_install
    git clone https://github.com/phacility/libphutil.git ~/.arc_install/libphutil
    git clone https://github.com/phacility/arcanist.git ~/.arc_install/arcanist
else
    echo -e " *****\n ***** UPDATING ARC\n *****"
    pushd ~/.arc_install/libphutil/ > /dev/null
    git pull
    cd ~/.arc_install/arcanist/
    git pull
    popd > /dev/null
fi

if ! hash arc &> /dev/null; then
    echo -e "\n******************************************************\n"
    echo "   Add \"~/.arc_install/arcanist/bin\" to your path"
    echo -e "\n******************************************************"
fi
