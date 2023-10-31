#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.suse/
    git pull
    cd
    rm -r $HOME/Documents/.suse/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documents/.suse/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documents/.suse/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documents/.suse/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documents/.suse/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documents/.suse/apps/
    #
    # Hyprland
    cp -rf $HOME/.config/hypr/ $HOME/Documents/.suse/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documents/.suse/apps/
    #
    # Swaylock
    cp -rf $HOME/.config/swaylock $HOME/Documents/.suse/apps/
    #
    # Cava
    cp -rf $HOME/.config/cava $HOME/Documents/.suse/apps/

    cd $HOME/Documents/.suse/
    git add -A
    git commit -m "$1"
    git push

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.suse/
    git pull
    cd
    rm -r $HOME/Documentos/.suse/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documentos/.suse/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documentos/.suse/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documentos/.suse/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documentos/.suse/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documentos/.suse/apps/
    #
    # Hyprland
    cp -rf $HOME/.config/hypr/ $HOME/Documentos/.suse/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documentos/.suse/apps/
    #
    # Swaylock
    cp -rf $HOME/.config/swaylock $HOME/Documentos/.suse/apps/
    #
    # Cava
    cp -rf $HOME/.config/cava $HOME/Documentos/.suse/apps/

    cd $HOME/Documentos/.suse/
    git add -A
    git commit -m "$1"
    git push

else 
    echo "No english or spanish detected..."

fi
