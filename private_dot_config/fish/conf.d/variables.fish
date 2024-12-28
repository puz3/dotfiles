# Set default keybinds
set -Ux fish_key_bindings fish_default_key_bindings

# Set fish greeting
set -Ux fish_greeting ""

# set XDG Base Directory Specification - there could be a better way to do this
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux XDG_DESKTOP_DIR $HOME/Desktop
set -Ux XDG_DOWNLOAD_DIR $HOME/Downloads
set -Ux XDG_DOCUMENTS_DIR $HOME/Documents
set -Ux XDG_MUSIC_DIR $HOME/Music
set -Ux XDG_PICTURES_DIR $HOME/Pictures
set -Ux XDG_VIDEOS_DIR $HOME/Videos

# Set default editor
set -Ux EDITOR nvim

# Set languages
set -Ux LC_ALL "en_GB.UTF-8"
set -Ux LANG "en_GB.UTF-8"

# Set Homebrew variables
if test -d /home/linuxbrew/.linuxbrew # Linux
	set -Ux HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew"
	set -Ux HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
	set -Ux HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/Homebrew"
else if test -d /opt/homebrew # MacOS
	set -Ux HOMEBREW_PREFIX "/opt/homebrew"
	set -Ux HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
	set -Ux HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"
end

set -Ux HOMEBREW_NO_ENV_HINTS TRUE

! set -q MANPATH; and set MANPATH ''; set -Ux MANPATH "$HOMEBREW_PREFIX/share/man" $MANPATH;
! set -q INFOPATH; and set INFOPATH ''; set -Ux INFOPATH "$HOMEBREW_PREFIX/share/info" $INFOPATH;

# Add Homebrew bins to PATH
fish_add_path -U "$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin";
