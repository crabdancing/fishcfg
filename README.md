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
making it easy to do rudimentary customizations without too much worry about merging future updates.
* Optimized to be system-wide, so that you don't lose your pretty gay features when you `sudo -i`.
* Some useful abbreviations.
* An unobtrusive display of how long each previous command took, on the right side of the prompt.
* A `notify-send` notification for if a command that takes more than 10 seconds is finished. Note that this makes use of `xdotool` and `$WINDOWID` to detect if the window has focus or not. This feature has problems with terminal multiplexers, and I need to figure out a way around that. This may be eventually refactored using the serial method suggested by egmont [here](https://unix.stackexchange.com/a/480138/310093), or I might simply build some tmux hooks for importing `$WINDOWID`. 
* Reasonably light-weight. Can run on a small Raspberry Pi system comfortably.
### Prerequisites
* Fish shell (obviously).
* Perl.
* Perl Filesys::df (package name is `perl-filesys-df` on Arch, and `libfilesys-df-perl` on Debian OSes).
On systems like Cygwin it will _probably_ work [if you install via CPAN](https://stackoverflow.com/questions/10483574/how-do-i-install-perl-libraries-in-cygwin#10483795), but I have not yet tested that. (Someone please test this, as Cygwin compatibility is one of my goals with this project!)
* An environment that understands standard Unix commands.

### Installation
Just copy the .fish files from this repo to `/etc/fish`.
[An install script](https://raw.githubusercontent.com/alxpettit/fish/master/install.sh)
that pulls the files from the repo straight to your computer is included in this repo, if you're lazy like me.

(Note that this install script assumes you have `wget`!)

You can simply `wget "https://raw.githubusercontent.com/alxpettit/fish/master/install.sh" -O - | sudo sh -`,
if you're one of those people who likes to pipe directly to a root terminal off the internet.

For the paranoid (myself included) there are `.gpg` signitures for each FISH file,
which can be automatically checked before installation with `secure-install`.

![fish prompt image](media/fish-prompt.png)
