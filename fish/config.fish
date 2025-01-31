set -g fish_greeting

set PATH $HOME/.cargo/bin $PATH


set PYTHONDONTWRITEBYTECODE 1


set DOTNET_CLI_TELEMETRY_OPTOUT 1

set -Ux LESS -R -S -F

# integrate aws_completer see: https://github.com/aws/aws-cli/issues/1079
test -x (which aws_completer); and complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

