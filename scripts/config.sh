#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.suse/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpapers

    cp -rf $HOME/Documents/.suse/apps/* $HOME/.config/
    cp -f $HOME/Documents/.suse/apps/.bashrc $HOME/
    cp -rf $HOME/Documents/.suse/wallpapers/* $HOME/.wallpapers/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documents/.suse/scripts/resolution $res

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.suse/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpapers

    cp -rf $HOME/Documentos/.suse/apps/* $HOME/.config/
    cp -f $HOME/Documentos/.suse/apps/.bashrc $HOME/
    cp -rf $HOME/Documentos/.suse/wallpapers/* $HOME/.wallpapers/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documentos/.suse/scripts/resolution $res

else 
    echo "No english or spanish detected..."

fi
