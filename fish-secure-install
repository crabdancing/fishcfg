#!/usr/bin/env fish

# Secure installer/updater for my FISH config, pulling from my github repos and verifying each file with GPG before install.
# Copyleft (C)  Alexandria Pettit, GPLv3

# Prerequisites for running this script:
# * My GPG key (8ACF907DB79863C9CDD9D785622C3D3C4FB5479C as of this writing)
# * fish (obviously)
# * gpg
# * wget
# * sudo


# The keychain MUST be the same as the user the script is running as,
# so if you want to run this script as root from the getgo, you will need to have my GPG key in your root user's keychain.
# Otherwise, you must have sudo so that the script can escilate permissions.


# Temporary directory for storing our shiz
set tmpdir "/tmp/fish-tmpdir-"(random)

# Path to raw files from git repo
set giturl 'https://raw.githubusercontent.com/alxpettit/fish/master/'

# A list of fish config files to download for installation
set filelist interactive.fish config.fish login.fish

# Temporary directory we dump our downloads to
mkdir -p $tmpdir

# iterate through all our files to download
for f in $filelist
    # Download config file from list
    wget -q "$giturl/$f" -O "$tmpdir/$f"
    # Download sig file
    wget -q "$giturl/$f.gpg" -O "$tmpdir/$f.gpg"
    if not gpg --verify "$tmpdir/$f.gpg"
        echo "Error! Could not verify sigs. Exiting..."
        exit 1
    end
end

for f in $filelist
    sudo mv -v "$tmpdir/$f" "/etc/fish/$f"
    rm -v "$tmpdir/$f.gpg"
end 
rm -d "$tmpdir"
