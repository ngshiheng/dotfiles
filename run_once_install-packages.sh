#!/bin/sh

BLUE='\033[33;34m'

# Checks if a command exists in shell
exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install Homebrew
# https://brew.sh/
if exists brew; then
    echo "${BLUE} Updating Homebrew."
    brew update
else
    echo "${BLUE} Installing Homebrew."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install zsh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms
brew install zsh

# Install Oh My Zsh
# https://ohmyz.sh/#install
if ! [ -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install zsh-autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 2>/dev/null

# Install zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 2>/dev/null

# Install p10k
# https://github.com/romkatv/powerlevel10k#homebrew
if ! exists p10k; then brew install romkatv/powerlevel10k/powerlevel10k; fi

# Install fzf
# https://github.com/junegunn/fzf#using-homebrew
if ! exists fzf; then brew install fzf && "$(brew --prefix)"/opt/fzf/install --no-bash --key-bindings --completion --update-rc; fi

# Install fd
# https://github.com/sharkdp/fd#on-macos
if ! exists fd; then brew install fd; fi

# install bat
# https://github.com/sharkdp/bat#on-macos-or-linux-via-homebrew
if ! exists bat; then brew install bat; fi

# Install rich
# https://github.com/Textualize/rich-cli#macos
if ! exists rich; then brew install rich; fi

echo "${BLUE} Please restart your shell."
