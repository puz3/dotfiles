source ~/.config/fish/conf.d/variables.fish
source ~/.config/fish/conf.d/abbr.fish

# Set Catppuccin theme
fish_config theme choose "Catppuccin Mocha"

# Init Starship
starship init fish | source

# Init Zoxide
zoxide init fish | source
