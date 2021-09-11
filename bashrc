# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#export PATH="$PATH:$HOME/.nix-profile/bin"
#export PATH="$PATH:$HOME/.nix-channel/bin"

export PATH=/Users/Zach/.stack/snapshots/x86_64-osx/d72639326e1eea9905b44e99ae233ecc313c5766000e3ab6bf64e9eed9a84a62/8.6.3/bin:/Users/Zach/.stack/compiler-tools/x86_64-osx/ghc-8.6.3/bin:/Users/Zach/.stack/programs/x86_64-osx/ghc-8.6.3/bin:/Users/Zach/.rbenv/shims:/Users/Zach/.rvm/gems/ruby-2.2.3/bin:/Users/Zach/.rvm/gems/ruby-2.2.3@global/bin:/Users/Zach/.rvm/rubies/ruby-2.2.3/bin:/anaconda3/bin:/anaconda3/condabin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/Zach/.rvm/bin:$PATH

[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

bind TAB:menu-complete
bind 'set completion-ignore-case on'
#set completion-ignore-case On

# commented out because I needed to source bashrc in bash_profile. Tmux run bash_profile, but I need to source bashrc in tmux. This was creating an infinite loop I'm presuming
#if [ -f ~/.bash_profile ]; then
#    . ~/.bash_profile
#fi

source /usr/share/bash-completion/completions/git  
source ~/.git-prompt.sh 

#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/
#export JAVA_HOME=/usr/local/bin/android-studio/jre
export JAVA_HOME=
export ANDROID_HOME="/home/aryzach/Android/Sdk"

export PATH=$JAVA_HOME/bin:$PATH

# to use get_idf for editing ESP_32 programs
#alias get_idf='. $HOME/esp/esp-idf/export.sh'
#alias amesp='amake -u 8266 valveMain/valveMain.ino /dev/ttyUSB0' 
#alias amesps='amake -s /dev/ttyUSB0 115200' 
#alias amespu='amake -u uno valveMain/valveMain.ino /dev/ttyUSB0'



# for compiling and uploading arduino scripts via command line / makefile
#export ARDUINO_DIR=//usr/local/bin/arduino
#export ARDMK_DIR=
#export AVR_TOOLS_DIR=/usr/include

alias office="/home/aryzach/libreoffice/opt/libreoffice7.0/program/soffice.bin"

export PS1="$ "

# colors!
red="\[\033[38;5;203m\]"
green="\[\033[38;05;38m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\u$green\$(__git_ps1)$green \W
$ $reset"

#if [ -e /home/aryzach/.nix-profile/etc/profile.d/nix.sh ]; then . /home/aryzach/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

