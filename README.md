# kev-chien's dotfiles

> kev-chien's configuration files managed by [chezmoi](https://github.com/twpayne/chezmoi). Uses [Zsh](https://en.wikipedia.org/wiki/Z_shell), [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/) for plugins and themes, and more (to come).

## Dependencies

Before installing, you should have the following dependencies installed:
- [chezmoi](https://github.com/twpayne/chezmoi/)
- [zsh](https://www.zsh.org/)
- [tmux](https://github.com/tmux/tmux)
- [neovim](https://github.com/neovim/neovim)

## Installation/Setup

### One Command

Run `sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply kev-chien` to get everything downloaded and installed or follow the individual steps below.

### Individual Steps

1. Install `chezmoi` by following [chezmoi's install guide](https://github.com/twpayne/chezmoi/blob/master/docs/INSTALL.md). You can learn more about `chezmoi` by reading their [quick start guide](https://github.com/twpayne/chezmoi/blob/master/docs/QUICKSTART.md) or [how-to guide](https://github.com/twpayne/chezmoi/blob/master/docs/HOWTO.md).

2. Initialize `chezmoi` using this repository: `chezmoi init https://github.com/kev-chien/dotfiles.git`.

3. Preview changes that `chezmoi` would make to your `$HOME`: `chezmoi diff`.

4. Apply the changes: `chezmoi apply -v`. This will automatically install the dotfiles and dependencies, and show you what changed.

5. Launch zsh: `zsh`.

### Fonts

The font I use is [Victor Mono](https://github.com/rubjo/victor-mono).

## What's Included
[] zsh
    [x] oh-my-zsh
    [x] zsh-autosuggestions
    [x] zsh-syntax-highlighting
    [x] easypost-specific configs
[] nvim
    [] TODO: automatically installed
    [x] configs
[] tmux
    [x] configs
    [x] tpm: tmux plugin manager
