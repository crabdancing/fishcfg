#!/usr/bin/env fish

set tmpdir /tmp/fish-tmpdir
set giturl 'https://raw.githubusercontent.com/alxpettit/fish/master/'
set filelist interactive.fish config.fish
mkdir -p $tmpdir
for f in $filelist
    wget "$giturl/$f" -O "$tmpdir/$f"
    wget "$giturl/$f.gpg" -O "$tmpdir/$f.gpg"
end

for f in $filelist
    if not gpg --verify "$tmpdir/$f.gpg"
        echo "Error! Could not verify sigs. Exiting..."
        exit 1
    end
    cp -v "$tmpdir/$f" "/etc/fish/$f"
end 
