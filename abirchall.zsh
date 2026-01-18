# Note: this will run automatically as part of the shell init configuration, no matter which profile is set

alias glogall='git log --oneline --decorate --graph --all'
alias gloga="git log -30 --all --graph --pretty='format:%C(yellow)%h %C(cyan)%d %Cgreen%ad %C(bold blue)%an: %Creset%Cred%<(70,trunc)%s%Creset' --date=short"
alias glogab="git log -30 --graph --pretty='format:%C(yellow)%h %C(cyan)%d %Cgreen%ad %C(bold blue)%an: %Creset%Cred%<(70,trunc)%s%Creset' --date=short"
alias glogao="git log -30 --pretty='format:%C(yellow)%h %C(bold blue)%d %C(green)%ad %C(cyan)%an %Creset%s' --date=short"
alias glap='git pull --all --prune'
alias gla='git pull --all'
alias gstuno='git status -uno'
alias ls='ls --color'
alias lla='ll -a'
alias lltr='ll -tr'
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
alias curltime="curl -o /dev/null -s -w 'Total time: %{time_total}s\n'"
alias yqxml='yq -p xml -o xml'
# Make sudo work with aliases
alias sudo='sudo '
alias dc='docker compose'
alias manbsd='man -M /usr/share/man'
alias mangnu='man -M /opt/homebrew/share/man'
alias lsb='/bin/ls --color'
alias chmodb='/bin/chmod'
alias chownb='/bin/chown'

## pager
export PAGER="less"
export LESS="-FRSMX"

# Added for ansible install by pip
export PATH=$HOME/.local/bin:$PATH

# For coreutils. Not sure if needed
export MANPATH="/opt/homebrew/opt/coreutils/libexec/gnuman":"/opt/homebrew/share/man":$MANPATH

export CERT_LOCATION=~/workspace/bbc_cert.pem

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#case $TERM in
#  xterm*)
#   precmd () { print -Pn "\e]0;%~\a" }
#   ;;
#esac

#precmd () { print -Pn "\e]0;%~\a" }
chpwd () { print -Pn "\e]0;%~\a" }

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Added for autocompletion for docker cli
autoload -Uz compinit; compinit

# Buildpack autocompletion
. $(pack completion --shell zsh)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

