# dotfiles

This is configuration for my laptop, including zsh, starship, etc.

## Requirements

Install these tools:

```
brew install starship zoxide zsh-autosuggestions fzf eza neovim ripgrep nvm
brew install --cask font-jetbrains-mono-nerd-font
```

`ripgrep` is required for Telescope's live grep. `elixir-ls` is not managed by
Mason and must be installed separately (e.g. `brew install elixir-ls`) if you
edit Elixir files.

## Setup

Copy the config files to their expected locations:

```
cp .zsh/.zshrc ~/.zshrc
cp .config/starship.toml ~/.config/starship.toml
cp -r .config/ghostty ~/.config/ghostty
cp -r .config/nvim ~/.config/nvim
```

The first time you launch `nvim`, [lazy.nvim](https://github.com/folke/lazy.nvim)
bootstraps itself and installs all plugins, and
[mason.nvim](https://github.com/williamboman/mason.nvim) installs the
configured language servers. Let both finish before editing files.

Set up Node via `nvm`:

```
nvm install --lts
nvm use --lts
nvm alias default 'lts/*'
```

## Neovim

Leader key is `<Space>`.

| Key           | Action                    |
| ------------- | ------------------------- |
| `<leader>e`   | Toggle file tree (nvim-tree) |
| `<leader>cd`  | Open netrw at current file (`:Ex`) |
| `<leader>ff`  | Telescope find files      |
| `<leader>fg`  | Telescope live grep       |
| `<leader>fb`  | Telescope buffers         |
| `<leader>fh`  | Telescope help tags       |
| `gd` / `gD`   | Go to definition / declaration |
| `gi`          | Go to implementation      |
| `gr`          | Go to references          |
| `K`           | Hover docs                |
| `<F2>`        | Rename symbol             |
| `<F3>`        | Format buffer             |
| `<F4>`        | Code action                |
| `<Tab>`       | Accept Supermaven suggestion / cmp completion |
