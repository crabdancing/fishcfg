#!/usr/bin/env fish

# Copyleft (C) Alexandra Pettit GNU GPL v3
# This is a utility script intended to automate the process of adding source scripts for each user to the main
# /etc/fish/config.fish

# This is necessary because FISH is dumb and will not load the system-wide config-file for reasons of bleh

if test $argv[1] = "--help"
    echo "Usage:"
    echo "configure.fish [user 0] [user 1] [user 2]..."
    echo "Where specifying a user forces installation of config file to those user directories."
    exit 0
end


# Iterate over all typical user paths, e.g. /root /home/sally /home/bob...
for homepath in /root /home/*
    set local_config_fish_path "$homepath/.config/fish/config.fish"
    
    # Get username from basename of path
    set user_name (basename "$homepath")
    # Force install
    set force_install 0

    # if user name included on command line,
    # It tells us to force installation of config file for that user
    for arg in $argv
        if test "$arg" = "$user_name"
            rm "$local_config_fish_path" -v
        end
    end

    echo "Configuring for $local_config_fish_path..."
    # Only execute for each $homepath if specified path does not exist
    if test ! -e $local_config_fish_path 

        # Make sure target path exists
        mkdir -p "$homepath/.config/fish"
        # Dump the key line to the target file
        echo "source /etc/fish/config.fish" > "$local_config_fish_path"
        
        # Normalize all permissions
        chown "$user_name:$user_name" "$homepath/.config"
        chown "$user_name:$user_name" "$homepath/.config/fish"
        chown "$user_name:$user_name" "$local_config_fish_path"
        echo "Configuration complete."
    else
        echo "Skipping because config file already exists."
    end
end
