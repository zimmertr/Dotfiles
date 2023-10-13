# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install packages
brew install \
    spotify \
    sublime-text \
    vim \
    htop \
    nmap \
    iterm2 \
    git \
    ansible \
    argocd \
    calc \
    docker-completion \
    helm \
    jq \
    kubectx \
    kube-ps1 \
    krew \
    kubernetes-cli \
    speedtest-cli \
    terraform \
    tree \
    watch \
    wget \
    zsh \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    siderolabs/talos/talosctl

# Install cask packages
brew install --cask \
    autodesk-fusion360 \
    deluge \
    discord \
    firefox \
    flux \
    google-earth-pro \
    iterm2 \
    krita \
    rar \
    rectangle \
    slack \
    steam \
    typora \
    ultimaker-cura \
    vlc

# Install kubectl-neat
kubectl krew install neat

# Add two spaces to dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
