# A nice FISH configuration

### Features 
* Very reluctant FISH file-name truncation
(you know, that thing where `/media/alexandria/code` becomes `/m/a/code`)
* Newline between status information and user input
* So colorful that people will assume that you're queer
* Lots and lots of comments to make it easier to understand & customize the code further
* Indicators for current time, exit code of previous command, and disk usage, all with meaningful color cues
* Prompt looks red and dangerous when logged in as root
* Easy to override a lot of the code simply by creating `/etc/fish/override.fish` and `/etc/fish/interactive-override.fish`,
making it easy to do rudimentary customizations without editing config files. 

### Prerequisites
* Fish shell (obviously)
* Perl
* Perl Filesys::df (package name is `perl-filesys-df` on Arch, and `libfilesys-df-perl` on Debian OSes)
* An environment that understands standard Unix commands

### Installation
Just copy the .fish files to `/etc/fish`.

![fish prompt image](media/fish-prompt.png)
