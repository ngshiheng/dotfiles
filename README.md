# Jerry's dotfiles

These dotfiles are managed using [chezmoi](https://www.chezmoi.io/).

Upon fresh installation, the [`run_once_install-packages.sh`](run_once_install-packages.sh) (idempotent and POSIX compliant) script would be executed once.

## What I use

| Tools             | Description                                                                                         |
| ----------------- | --------------------------------------------------------------------------------------------------- |
| Terminal emulator | [Windows Terminal](https://github.com/microsoft/terminal) (on WSL2) & [iTerm2](https://iterm2.com/) |
| Package manager   | [Homebrew](https://brew.sh/)                                                                        |
| Unix shell        | [Z shell](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)                                   |
| Zsh theme         | [Powerlevel10k](https://github.com/romkatv/powerlevel10k)                                           |
| Dotfiles manager  | [chezmoi](https://chezmoi.io/)                                                                      |

## Getting started

Check out the [Quick Start](https://www.chezmoi.io/quick-start/) page.

### Install chezmoi and the dotfiles on any new machine

With a single command:

```sh
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply ngshiheng
```

### Update

On any machine, you can pull and apply the latest changes from your repo with:

```sh
chezmoi update -v
```

### Prompts

For [managing machine-to-machine differences](https://www.chezmoi.io/user-guide/manage-machine-to-machine-differences/).

To add/remove/edit prompts:

```sh
vim ~/.local/share/chezmoi/.chezmoi.toml.tmpl
```

To test templates, use `chezmoi execute-template < dot_gitconfig.tmpl` ([ref](https://www.chezmoi.io/user-guide/templating/#testing-templates)).

### `run_once_install-packages.sh` script

The [`run_once_install-packages.sh`](run_once_install-packages.sh) script runs with the following assumptions (i.e. requirements):

-   `bash` is installed; this is so that it can install [Homebrew](https://brew.sh/).
-   `zsh` as the default Unix shell of choice.

Check out the [Understand How Scripts Work](https://www.chezmoi.io/user-guide/use-scripts-to-perform-actions/#understand-how-scripts-work) page.

## Reference

[How To Manage Dotfiles With Chezmoi](https://jerrynsh.com/how-to-manage-dotfiles-with-chezmoi/)
