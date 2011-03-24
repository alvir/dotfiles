# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.

# Add an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH

# Add an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH

export EDITOR=mate

# Color prompt with showing current git branch
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]\[\033[01;31m\]$(__git_ps1 " {%s}")\[\033[00m\]\$ '

# Aliases
alias ll='ls -lah'
alias e='mate'

# Custom git aliases
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gc='git commit'
alias gca='ga . && gc -m'
alias gst='git status'
alias gtk='git diff $* | kompare -'
alias gitk='gitk --all'
alias gitxa='gitx --all '

# Rails aliases
alias rg='rake routes | grep -i'

# Enable completion for custom git aliases
complete -o default -o nospace -F _git_add ga
complete -o default -o nospace -F _git_commit gca
complete -o default -o nospace -F _git_branch gb
complete -o default -o nospace -F _git_checkout gco

# Enable programmable completion features
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Completion for terminitor - https://github.com/bobthecow/terminitor-completion
# ln -s Projects/terminitor-completion/terminitor-completion.bash .terminitor-completion
source ~/.terminitor-completion
