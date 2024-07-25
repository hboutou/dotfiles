function tmpactivate
    source ~/tmppython/bin/activate.fish
    : 'TODO
    if /opt/tmppython and /opt/tmppython/bin/activate.fish exist
        source /opt/tmppython/bin/activate.fish
    else
        rm -rf /opt/tmppython
        python3.12 -m venv /opt/tmppython
        /opt/tmppython/bin/pip install --upgrade pip
        /opt/tmppython/bin/pip install ..
        source /opt/tmppython/bin/activate.fish
    '
end
