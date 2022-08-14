alias glogall='git log --oneline --decorate --graph --all'
alias gloga="git log -30 --all --graph --pretty='format:%C(yellow)%h %C(cyan)%d %Cgreen%ad %C(bold blue)%an: %Creset%Cred%<(70,trunc)%s%Creset' --date=short"
alias glogab="git log -30 --graph --pretty='format:%C(yellow)%h %C(cyan)%d %Cgreen%ad %C(bold blue)%an: %Creset%Cred%<(70,trunc)%s%Creset' --date=short"
alias glogao="git log -30 --pretty='format:%C(yellow)%h %C(bold blue)%d %C(green)%ad %C(cyan)%an %Creset%s' --date=short"

## pager
export PAGER="less"
export LESS="-FRSMX"
