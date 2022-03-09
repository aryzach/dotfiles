
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:~/.local/bin:~/miniconda3/bin/:/snap/bin/

bind TAB:menu-complete
bind 'set completion-ignore-case on'

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

export EDITOR=vim



# colors!
red="\[\033[38;5;203m\]"
green="\[\033[38;05;38m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\u$green \W
$ $reset"

source ~/.bash-git-prompt/gitprompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/aryzach/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/aryzach/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/aryzach/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/aryzach/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Docker aliases
alias dim="docker images -a"
alias dcls="docker container ls"
alias dclsa="docker container ls -a"
alias dsp="docker system prune --all"
alias db="docker build"
alias drmi="docker rmi"
alias drwm="docker run -v ${PWD}:/app $1"
alias dfri="docker rmi -f '$(docker images -aq)'"
alias dac="docker ps -a -q"

dkac() {
		docker rm -vf echo $(docker ps -a -q)
}
export -f dkac

# usage: drv [IMAGE], prints docker stout to host
alias drv="docker run -v ${PWD}:/app"

alias dka="(dkac || true) && dsp && dfri"


