# Alias some of the brew commands
abbr --add bu "brew upgrade"
abbr --add bc "brew autoremove && brew cleanup"

# Alias to use eza if it installed on the system.
if type -q eza
  abbr --add l 'eza --long --all --header --git --icons --no-permissions --no-time --no-user --no-filesize --group-directories-first'
  abbr --add ll 'eza -lagh --git --icons --group-directories-first'
  abbr --add la 'eza -lagh --git --icons --group-directories-first --sort modified'
  abbr --add cll 'clear; and eza --long --all --header --git --icons --no-permissions --no-time --no-user --no-filesize --group-directories-first'

## Tree view
  abbr --add tree 'eza -Ta --icons --ignore-glob="node_modules|.git|.vscode|.DS_Store"'
  abbr --add ltd 'eza -TaD --icons --ignore-glob="node_modules|.git|.vscode|.DS_Store"'
else
  abbr --add l "ls -lah"
  abbr --add ll "ls -alF"
  abbr --add la "ls -A"
end

# Alias bat if it is installed.
if type -q bat
  abbr --add cat "bat"
end

abbr --add sshp "ssh -i ~/.ssh/id_ed25519_personal"
