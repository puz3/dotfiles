export EDITOR="nvim"
export LC_ALL="en_GB.UTF-8"
export LANG="en_GB.UTF-8"
export HOMEBREW_NO_ENV_HINTS=TRUE

# Alias some of the brew commands
alias bu="brew upgrade"
alias bc="brew autoremove && brew cleanup"

# Alias to use eza if it installed on the system.
if type -q eza
    alias ls="eza"
    alias la="eza -l --all --group-directories-first --git"
    alias ll="eza -l --group-directories-first --git"
    alias lt="eza -T --git-ignore --level=2 --group-directories-first"
    alias llt="eza -lT --git-ignore --level=2 --group-directories-first"
    alias lT="eza -T --git-ignore --level=4 --group-directories-first"
else
    alias l="ls -lah"
    alias ll="ls -alF"
    alias la="ls -A"
end

# Alias VI/VIM/VIMDIFF to use neovim.
alias vi='nvim'
alias vim='nvim'
alias vimdiff='nvim -d'

# Alias bat if it is installed.
if type -q bat
    alias cat="bat"
end

# GIT shortcuts
alias gs='git status'
alias gp='git pull'

alias sshp="ssh -i ~/.ssh/id_ed25519_personal"

# Set Catppuccin theme
fish_config theme choose "Catppuccin Mocha"
