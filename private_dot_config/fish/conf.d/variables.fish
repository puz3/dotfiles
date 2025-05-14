# Set default keybinds
set -x fish_key_bindings fish_default_key_bindings

# Set fish greeting
set -x fish_greeting ""

# set XDG Base Directory Specification - there could be a better way to do this
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_DESKTOP_DIR $HOME/Desktop
set -x XDG_DOWNLOAD_DIR $HOME/Downloads
set -x XDG_DOCUMENTS_DIR $HOME/Documents
set -x XDG_MUSIC_DIR $HOME/Music
set -x XDG_PICTURES_DIR $HOME/Pictures
set -x XDG_VIDEOS_DIR $HOME/Videos

# Set EDITOR
if type -q nvim
  set -x EDITOR nvim
else
  set -x EDITOR vim
end

# Set misc variables
set -x LC_ALL "en_GB.UTF-8"
set -x LANG "en_GB.UTF-8"
set -x PAGER less

# Set Homebrew variables
if test -d /opt/homebrew
	set -x HOMEBREW_PREFIX "/opt/homebrew"
	set -x HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
	set -x HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"

  set -x HOMEBREW_NO_ENV_HINTS TRUE

  ! set -q MANPATH; and set MANPATH ''; set -x MANPATH "$HOMEBREW_PREFIX/share/man" $MANPATH;
  ! set -q INFOPATH; and set INFOPATH ''; set -x INFOPATH "$HOMEBREW_PREFIX/share/info" $INFOPATH;

  # Add Homebrew bins to PATH
  fish_add_path -U "$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin";
end

# Swiftly
if type -q swiftly
  set -x SWIFTLY_HOME_DIR "/Users/povilas/.swiftly"
  set -x SWIFTLY_BIN_DIR "/Users/povilas/.swiftly/bin"

  fish_add_path -U "$SWIFTLY_BIN_DIR"
end

# Use nvim as a manpager
if type -q nvim
  set -x MANPAGER "nvim +Man!"
end
