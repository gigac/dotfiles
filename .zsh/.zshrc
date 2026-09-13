# Starship prompt
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# Autosuggestions
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Git aliases
alias gs='git status'
alias gl='git log --oneline --graph --decorate'
alias gc='git checkout'
alias sail='./vendor/bin/sail'
alias fomo='function mkcdf() { branch=${1:-main}; git fetch origin "$branch"; git merge origin/"$branch"; }; mkcdf'

# eza aliases
alias l='eza --group-directories-first --icons=auto'
alias ll='eza -lah --group-directories-first --icons=auto'
alias la='eza -a --group-directories-first --icons=auto'
alias lt='eza --tree --level=2 --group-directories-first --icons=auto'


export PATH="$HOME/.local/bin:$PATH"
