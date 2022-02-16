# Jerry's dotfiles

These dotfiles are managed using [chezmoi](https://www.chezmoi.io/).

## What I use

| Tools             | Description                                                       |
| ----------------- | ----------------------------------------------------------------- |
| Terminal emulator | Windows Terminal (WSL2) & [iTerm2](https://iterm2.com/)           |
| Package manager   | [Homebrew](https://brew.sh/)                                      |
| Unix shell        | [Z shell](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) |
| Zsh theme         | [Powerlevel10k](https://github.com/romkatv/powerlevel10k)         |
| Dotfiles manager  | [chezmoi](https://chezmoi.io/)                                    |

## Getting started

Install chezmoi and the dotfiles on any new machine with a single command:

```sh
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply ngshiheng
```

On any machine, you can pull and apply the latest changes from your repo with:

```sh
chezmoi update -v
```

To add/remove/edit prompts:

```sh
vim ~/.local/share/chezmoi/.chezmoi.toml.tmpl
```

## How to use chezmoi

Read the [Quick Start](https://www.chezmoi.io/quick-start/) page.
