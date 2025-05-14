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

# Set EDITOR
if type -q nvim
  set -Ux EDITOR nvim
else
  set -Ux EDITOR vim
end

# Set misc variables
set -Ux LC_ALL "en_GB.UTF-8"
set -Ux LANG "en_GB.UTF-8"
set -Ux PAGER less

# Set Homebrew variables
if test -d /opt/homebrew
	set -Ux HOMEBREW_PREFIX "/opt/homebrew"
	set -Ux HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
	set -Ux HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"

  set -Ux HOMEBREW_NO_ENV_HINTS TRUE

  ! set -q MANPATH; and set MANPATH ''; set -Ux MANPATH "$HOMEBREW_PREFIX/share/man" $MANPATH;
  ! set -q INFOPATH; and set INFOPATH ''; set -Ux INFOPATH "$HOMEBREW_PREFIX/share/info" $INFOPATH;

  # Add Homebrew bins to PATH
  fish_add_path -U "$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin";
end

# Swiftly
if type -q swiftly
  set -Ux SWIFTLY_HOME_DIR "/Users/povilas/.swiftly"
  set -Ux SWIFTLY_BIN_DIR "/Users/povilas/.swiftly/bin"

  fish_add_path -U "$SWIFTLY_BIN_DIR"
end

# Use nvim as a manpager
if type -q nvim
  set -Ux MANPAGER "nvim +Man!"
end
