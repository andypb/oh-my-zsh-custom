alias glogall='git log --oneline --decorate --graph --all'
alias gloga="git log -50 --all --graph --pretty='format:%C(yellow)%h %C(cyan)%d %Cgreen%ad %C(bold blue)%an: %Creset%Cred%<(70,trunc)%s%Creset' --date=short"
alias glogab="git log -50 --graph --pretty='format:%C(yellow)%h %C(cyan)%d %Cgreen%ad %C(bold blue)%an: %Creset%Cred%<(70,trunc)%s%Creset' --date=short"
alias glogao="git log -50 --pretty='format:%C(yellow)%h %C(bold blue)%d %C(green)%ad %C(cyan)%an %Creset%s' --date=short"
alias glap='git pull --all --prune'
alias gla='git pull --all'
alias ls='ls --color'
alias lla='ls -lha'
alias emacsnw='emacs -nw'
alias cdp='cd -P'
# kubectl
alias kge='kubectl get events'
alias kges="kubectl get events --sort-by='.metadata.creationTimestamp'"
alias kdelw='kubectl delete --wait=false'
# go multiple versions
alias go1.17=$HOME/sdk/go1.17/bin/go
# terraform
alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
# helm
alias h='helm'
# list open ports
alias lsports='sudo lsof -iTCP -sTCP:LISTEN -n -P | awk '\''NR>1 {print $9, $1, $2}'\'' | sed '\''s/.*://'\'' | while read port process pid; do echo "Port $port: $(ps -p $pid -o command= | sed '\''s/^-//'\'') (PID: $pid)"; done | sort -n'

## pager
export PAGER="less"
export LESS="-FRSMX"

# Added for ansible install by pip
export PATH=$HOME/.local/bin:$PATH

# MANPATH from old .zshrc. Obsolete/outdated now?
#export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Added for autocompletion for docker cli
autoload -Uz compinit; compinit
