# default:cyan / root:red
if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
else
    PS1="\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
fi

# Show git branch
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

# Add color to prompt
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

# Alias
alias la="ls -al -G"
alias g="git"

# Alias docker
alias d="docker"
alias dcom="docker-compose"

# gitコマンドをtab補完できるようにする
source ~/.git-completion.bash


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
