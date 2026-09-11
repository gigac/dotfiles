# dotfiles

This is configuration for my laptop, including zsh, starship, etc.

## Requirements

Install these tools:

```
brew install starship zoxide zsh-autosuggestions fzf eza
brew install --cask font-jetbrains-mono-nerd-font
```

## Setup

Copy the config files to their expected locations:

```
cp .zsh/.zshrc ~/.zshrc
cp .config/starship.toml ~/.config/starship.toml
cp -r .config/ghostty ~/.config/ghostty
```
