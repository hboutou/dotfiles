fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/curl/bin
fish_add_path /opt/homebrew/opt/sqlite/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/scripts


set -x MANPAGER 'less --use-color -Dd+r -Du+c -DSwm -DEr -DPw'
set -x LESS '--LONG-PROMPT --RAW-CONTROL-CHARS --chop-long-lines'
set -x PIP_REQUIRE_VIRTUALENV 1
set -x PYTHONUNBUFFERED 1
set -x PYTHONDONTWRITEBYTECODE 1
set -x DOTNET_CLI_TELEMETRY_OPTOUT 1
set -x AWS_JAVA_V1_DISABLE_DEPRECATION_ANNOUNCEMENT true


if status is-interactive
	set fish_greeting ''
	set fish_color_valid_path ''

	set CACHE_BD     ""
	set CACHE_BD_PRD ""
	set CACHE_TS     ""
	set CACHE_TS_PRD ""

	abbr --add mvn11 JAVA_HOME=(/usr/libexec/java_home -v 11) mvn
	abbr --add mvn17 JAVA_HOME=(/usr/libexec/java_home -v 17) mvn
	abbr --add mvn21 JAVA_HOME=(/usr/libexec/java_home -v 21) mvn
	abbr --add mvn25 JAVA_HOME=(/usr/libexec/java_home -v 25) mvn
	abbr --add brewup "brew update --quiet && brew outdated && confirm && brew upgrade --quiet"
	abbr --add filehog "lsof -n | cut -f1 -d' ' | sort | uniq -c | sort -rnk1 | head"
end

