#!/bin/sh

BLUE='\033[33;34m'

# Checks if a command exists in shell
exists() {
    command -v "$1" >/dev/null 2>&1
}

echo "${BLUE} $(date -u):\t Running run_once_install-packages.sh once..."

# Install Homebrew
# https://brew.sh/
if exists brew; then
    echo "${BLUE} $(date -u):\t Updating Homebrew..."
    brew update
else
    echo "${BLUE} $(date -u):\t Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install zsh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms
brew install zsh --quiet

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
brew install romkatv/powerlevel10k/powerlevel10k --quiet

# Install fzf
# https://github.com/junegunn/fzf#using-homebrew
if ! exists fzf; then brew install fzf && "$(brew --prefix)"/opt/fzf/install --no-bash --key-bindings --completion --update-rc; fi

# Install fd
# https://github.com/sharkdp/fd#on-macos
brew install fd --quiet

# Install bat
# https://github.com/sharkdp/bat#on-macos-or-linux-via-homebrew
brew install bat --quiet

# Install ripgrep
# https://github.com/BurntSushi/ripgrep#installation
brew install ripgrep --quiet

# Install rich
# https://github.com/Textualize/rich-cli#macos
brew install rich --quiet

# Install ydiff
# https://github.com/ymattw/ydiff#install-with-homebrew
brew install ydiff --quiet

# Install Fira Code
# https://github.com/tonsky/FiraCode/wiki/Installing
# brew tap homebrew/cask-fonts
# brew install --cask font-fira-code

echo "${BLUE} $(date -u):\t Done. Please restart your shell."
