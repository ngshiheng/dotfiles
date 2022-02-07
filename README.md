# Jerry's dotfiles

These dotfiles are managed using [chezmoi](https://www.chezmoi.io/).

## What I use

| Tools             | Description                                                         |
| ----------------- | ------------------------------------------------------------------- |
| Terminal emulator | [Alacritty](https://alacritty.org/)                                 |
| Package manager   | [Homebrew](https://brew.sh/) for macOS + WSL2 (Ubuntu 20.04 LTS)    |
| Unix shell        | [Z shell](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)   |
| Zsh theme         | [Powerlevel10k](https://github.com/romkatv/powerlevel10k) Zsh theme |
| Dotfiles manager  | [chezmoi](https://chezmoi.io/)                                      |

## Get started

With chezmoi, you can install chezmoi and your dotfiles on a new, empty machine with a single command:

```sh
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply ngshiheng
```

## How to use chezmoi

Read the [Quick Start](https://www.chezmoi.io/quick-start/) page.
