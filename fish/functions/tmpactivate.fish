function tmpactivate
    source ~/tmppython/bin/activate.fish
    : 'TODO
    if /opt/tmppython and /opt/tmppython/bin/activate.fish exist
        source /opt/tmppython/bin/activate.fish
    else
        python3.12 -m venv /opt/tmppython
        /opt/tmppython/bin/pip install --upgrade pip
        source /opt/tmppython/bin/activate.fish
    '
end
