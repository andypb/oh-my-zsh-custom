alias glogall='git log --oneline --decorate --graph --all'
alias gloga="git log -30 --all --graph --pretty='format:%C(yellow)%h %C(cyan)%d %Cgreen%ad %C(bold blue)%an: %Creset%Cred%<(70,trunc)%s%Creset' --date=short"
alias glogab="git log -30 --graph --pretty='format:%C(yellow)%h %C(cyan)%d %Cgreen%ad %C(bold blue)%an: %Creset%Cred%<(70,trunc)%s%Creset' --date=short"
alias glogao="git log -30 --pretty='format:%C(yellow)%h %C(bold blue)%d %C(green)%ad %C(cyan)%an %Creset%s' --date=short"
alias glap='git pull --all --prune'
alias ls='ls --color'
alias lla='ls -lha'
alias emcnw='emacs -nw'
alias cdp='cd -P'

## pager
export PAGER="less"
export LESS="-FRSMX"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
