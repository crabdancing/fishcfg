# Entry-point FISH config file
# Copyleft (C) Alexandria Pettit, GNU GPLv3 

### Here's our env garbage

set -x PATH /cbin /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /usr/lib/plan9/bin
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
