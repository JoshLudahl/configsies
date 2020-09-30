#!/bin//env bash
# MacOS setup

echo "Starting to install the applications"

xcode-select --install

# Homebrew leaves
LEAVES=(
    automake
    aws-iam-authenticator
    binutils
    bundletool
    capstone
    coreutils
    coq
    elixir
    exiftool
    gcc
    graphviz
    helm
    isl
    jq
    john-jumbo
    ktlint
    kubectx
    lean
    libtool
    md5sha1sum
    mit-scheme
    node
    openvpn
    postgresql
    rlwrap
    telnet
    tmux
    vim
    wget
    zlib
)

echo "Installing Leaves..."
brew install ${LEAVES[@]}

brew link --force readline

# Homebrew casks
CASKS=(
    adoptopenjdk
    eloston-chromium
    firefox
    flux
    intellij-idea-ce
    obs
    qbittorrent
    rectangle
    scroll-reverser
    sensiblesidebuttons
    slack
    spotify
    vagrant
    virtualbox
    visual-studio-code
    vlc
    wireshark
    xquartz
    zotero
)

echo "Installing cask apps..."
brew cask install ${CASKS[@]}


echo "Macbook setup completed!"