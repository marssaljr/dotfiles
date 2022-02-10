export OSH=/home/marssal/.oh-my-bash
export BROWSER=/usr/bin/qutebrowser
source $HOME/.aliases

# OSH_THEME="cupcake"
OSH_THEME="zork"
completions=(
  git
  composer
  ssh
)
aliases=(
  general
)
plugins=(
  git
  bashmarks
)

# Oh my bash
source $OSH/oh-my-bash.sh
# Pywal
(cat /home/marssal/.cache/wal/sequences &)
# Npm
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
# Nvm
source /usr/share/nvm/init-nvm.sh
export RANGER_LOAD_DEFAULT_RC=false
# Wakatime
source $HOME/.bash-wakatime/bash-wakatime.sh
# Java
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# Nodejs
export PATH=/home/marssal/.node/current/bin:/home/marssal/.sdkman/candidates/maven/current/bin:/home/marssal/.sdkman/candidates/java/current/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/marssal/.npm-packages/bin
export PATH="$HOME/.node_modules_global/bin:$PATH"
# export NODE_OPTIONS=--openssl-legacy-provider

# KITTY
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# End




# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
