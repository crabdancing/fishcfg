# Entry-point FISH config file
# Copyleft (C) Alexandria Pettit, GNU GPLv3 

set -x PATH /cbin /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /usr/lib/plan9/bin
set -x GRADLE_HOME /usr/share/java/gradle    
set -x MOZ_PLUGIN_PATH /usr/lib/mozilla/plugins
set -x VISUAL vim

if status --is-interactive
    source /etc/fish/interactive.fish
end
