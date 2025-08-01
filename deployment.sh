#!/bin/bash

declare -a packages=("git", "tmux", "vim")

brew_install() {
    local package="$1"

    if ! brew install "$package" 2>/dev/null; then
        echo "Error: Failed to install $package"
        return 1
    else
        echo "$package installed successfully!"
        return 0
    fi
}

echo "installing brew"
$/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "installing rosetta"
softwareupdate --install-rosetta

for package in "$packages[@]}"; do
    if ! brew_install "$package"; then
        echo($package + " " + "installations failed. Exiting")
        exit 1
    fi
done

echo "all packages installed!"

echo "downloading divvy"
curl -o ~/Downloads/divvy.zip "https://mizage.com/downloads/Divvy.zip"

echo "installing divvy"
unzip ~/Downloads/divvy.zip && mv ~/Downloads/divvy.app

echo "config being applied to divvy"
cp ./com.mizage.Divvy.plist ~/Library/Preferences/
