#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
    # if host is arch based, run pacman update commmand
    sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # if host is debian run apt version of command
    sudo apt update
    sudo apt dist-update
fi
