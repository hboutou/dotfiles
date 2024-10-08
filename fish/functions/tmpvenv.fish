function tmpvenv --description "Create a throwaway python playground"
    set --local venvdir "/tmp/.tmpvenv"

    if test -f "$venvdir/bin/activate.fish"
        source "$venvdir/bin/activate.fish"
        return
    end

    rm -rf "$venvdir"
    python3.13 -m venv "$venvdir"
    source "$venvdir/bin/activate.fish"
    pip install --upgrade pip
    pip -v install \
        boto3 \
        duckdb \
        fastavro \
        ipython \
        matplotlib \
        mypy \
        numpy \
        pandas \
        psycopg[binary] \
        pyarrow \
        pydantic \
        pydantic-settings \
        # pymssql # needs a ceremony to compile
        pyright \
        redis \
        requests \
        ruff \
        scipy \
        xwing \

end
