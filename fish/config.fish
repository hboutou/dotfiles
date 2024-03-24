set -g fish_greeting

set PATH $HOME/.cargo/bin $PATH

set PYTHONDONTWRITEBYTECODE true
set PIP_REQUIRE_VIRTUALENV true


alias   l='eza --group-directories-first'                                       
alias  ll='eza --group-directories-first --long'                                
alias lll='eza --group-directories-first --long --all'
alias tree='eza --tree'
