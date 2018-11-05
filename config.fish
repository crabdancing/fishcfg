# Entry-point FISH config file
# Copyleft (C) Alexandria Pettit, GNU GPLv3 

### Here's our env garbage

# Core paths that probably exist on every (sane) system.
# Note: Android is a nutcase system and we will pretend it does not exist.
set -x PATH /usr/local/bin /usr/bin

# Custom Bin -- where I put personal scripts. Must be first in $PATH.
if test -e /cbin
    set -x PATH /cbin $PATH
end
)
# Don't include /bin is it's symlinked to /usr/bin (as is the case with Arch Linux).
linkpath=(readlink /bin)
if test $status -eq 0
    if test "$linkpath" = "usr/bin"
        set -x PATH $PATH /bin
    end
end

# Detect valid paths and add them
for newpath in /usr/local/sbin /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /usr/lib/plan9/bin
    if test -e "$newpath"
        set -x PATH $PATH "$newpath"
    end
end

set -x GRADLE_HOME /usr/share/java/gradle    
set -x MOZ_PLUGIN_PATH /usr/lib/mozilla/plugins
set -x VISUAL vim

# Overrides previous non-interactive code
# Primarily here so that my friends can use this without editing core config files
if test -e /etc/fish/override.fish
    source /etc/fish/override.fish
end

### Interactive code -- this is the main show
if status --is-interactive
    source /etc/fish/interactive.fish
end
