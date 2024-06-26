set -g fish_greeting

set PATH $HOME/.cargo/bin $PATH

set PYTHONDONTWRITEBYTECODE true

alias tree='eza --tree'
alias   l='eza --group-directories-first'                                       
alias  ll='eza --group-directories-first --long'                                
alias lll='eza --group-directories-first --long --all'

alias sqlite="$(brew --prefix)/opt/sqlite3/bin/sqlite3"
