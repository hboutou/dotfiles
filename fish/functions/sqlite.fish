function sqlite
    # $(brew --prefix)/opt/sqlite3/bin/sqlite3 $argv
    # $(brew --prefix) makes shell startup time unbearable
    /opt/homebrew/opt/sqlite3/bin/sqlite3 $argv
end
