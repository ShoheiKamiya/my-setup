# Show git branch
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh


# Alias
alias la="ls -al -G"

# Alias docker
alias d="docker"
alias dcom="docker-compose"

# Alias daily log
alias memo="nvim ~/logs/`date '+%d'`.md"

# Git タブ補完
autoload -Uz compinit && compinit

# ディレクトリの表示を青色にする
export CLICOLOR=1

# 上書きリダイレクトを禁止
setopt no_clobber

# プロンプトをカスタマイズ

# gitの情報を取得
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

function branch() {
  echo %F{$1}\$vcs_info_msg_0_%f
}

function caret() {
  echo "%F{$1}\uE0B0%f"
}

function username() {
  echo "%F{$1}%n%f"
}

function directory() {
  echo "%F{$1}%~%f"
}

PROMPT="%K{black}`username white`%k%K{cyan}`caret black` `directory black`%k%K{green}`caret cyan` `branch black`%k`caret 'green'` "

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=10000

# share .zshhistory
setopt inc_append_history
setopt share_history

# ctrl + R でpecoを呼び出す
function peco-history-selection() {
    BUFFER=`history -n 1 | tac | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

# [peco] ブランチを切り替えるときにインクリメンタルサーチ
function co() {
  git branch | peco | xargs git checkout
}

# [peco] incremental search when git add
function add() {
  git diff --name-only | peco | xargs git add
}

function p() {
  find . | peco | xargs nvim
}

function s() {
  cat ~/logs/snippets.txt | peco
}

function l() {
  text="+%H:%M $1 [$2pt]"
  date $text >> "$HOME/logs/`date "+%d"`.md"
}

# ==============
#  PATH
# ==============

# rbenv
[[ -d ~/.rbenv  ]] && \
export PATH=${HOME}/.rbenv/bin:${PATH} && \
eval "$(rbenv init -)"

# aws cli
export AWS_DEFAULT_REGION=ap-northeast-1
export AWS_PROFILE=gsuite

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
