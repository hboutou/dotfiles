fish_add_path $HOME/scripts
fish_add_path $HOME/go/bin
fish_add_path /opt/homebrew/bin

set -g fish_greeting ""
set -g fish_color_valid_path ""

set PYTHONDONTWRITEBYTECODE 1
set DOTNET_CLI_TELEMETRY_OPTOUT 1
set AWS_JAVA_V1_DISABLE_DEPRECATION_ANNOUNCEMENT true

set -Ux LESS -R -S -F

if status is-interactive
    set CACHE_BD     ""
    set CACHE_BD_PRD ""
    set CACHE_TS     ""
    set CACHE_TS_PRD ""

    alias poetry1.1.15 "uv tool run poetry@1.1.15"

	# integrate aws_completer see: https://github.com/aws/aws-cli/issues/1079
    # test -x (which aws_completer); and complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'
end

