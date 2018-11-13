# Entry-point FISH config file
# Copyleft (C) Alexandria Pettit, GNU GPLv3 


if status --is-login
    source /etc/fish/login.fish
end

### Here's our env garbage

# Custom Bin -- where I put personal scripts. Must be first in $PATH.
if test -e /cbin
    set -x PATH /cbin $PATH
end

# Detect valid paths and add them
for newpath in /usr/local/sbin /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /usr/lib/plan9/bin
    if test -e "$newpath"
        set -x PATH $PATH "$newpath"
    end
end

# Some standard environment variables
set -x GRADLE_HOME /usr/share/java/gradle    
set -x MOZ_PLUGIN_PATH /usr/lib/mozilla/plugins
# VIM is where it's at, for me
# Other people can override this setting in /etc/fish/override.fish
set -x EDITOR "/usr/bin/nvim"
set -x VISUAL "$EDITOR"

# Needed for neovim to find my init.
#set -x VIM /etc/nvim

# Want vimpager to be our pager, if exist
if test -e "/usr/bin/most"
    set -x PAGER "/usr/bin/most"
    set -x MANPAGER "$PAGER"

end

set -x SYSTEMD_PAGER "/usr/bin/less"
# Overrides previous non-interactive code
# Primarily here so that my friends can use this without editing core config files
if test -e /etc/fish/override.fish
    source /etc/fish/override.fish
end

### Interactive code -- this is the main show
if status --is-interactive
    source /etc/fish/interactive.fish
end
