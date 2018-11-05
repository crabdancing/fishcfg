# A nice FISH configuration

### Features 
* Very reluctant FISH file-name truncation
(you know, that thing where `/media/alexandria/code` becomes `/m/a/code`).
* Newline between status information and user input.
* So colorful that people will assume that you're queer.
* Lots and lots of comments to make it easier to understand & customize the code further.
* Indicators for current time, exit code of previous command, and disk usage, all with meaningful color cues.
* Prompt looks red and dangerous when logged in as root.
* Easy to override a lot of the code simply by creating `/etc/fish/override.fish` and `/etc/fish/interactive-override.fish`,
making it easy to do rudimentary customizations without editing config files.
* Optimized to be system-wide, so that you don't lose your pretty gay features when you `sudo -i`.
* Some useful abbreviations.

### Prerequisites
* Fish shell (obviously).
* Perl.
* Perl Filesys::df (package name is `perl-filesys-df` on Arch, and `libfilesys-df-perl` on Debian OSes).
* An environment that understands standard Unix commands.

### Installation
Just copy the .fish files from this repo to `/etc/fish`.
[An install script](https://raw.githubusercontent.com/alxpettit/fish/master/install.sh)
that pulls the files from the repo straight to your computer is included in this repo, if you're lazy like me.

(Note that this install script assumes you have `wget`!)

You can simply `wget "https://raw.githubusercontent.com/alxpettit/fish/master/install.sh" -O - | sudo sh -`,
if you're one of those people who likes to pipe directly to a root terminal off the internet.

![fish prompt image](media/fish-prompt.png)
