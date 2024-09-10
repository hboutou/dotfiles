function tmpvenv --description "Create a throwaway python playground"
    set --local venvdir "/tmp/.tmpvenv"

    if test -f "$venvdir/bin/activate.fish"
        source "$venvdir/bin/activate.fish"
    else
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
            numpy \
            pandas \
            psycopg-binary \
            pyarrow \
            pydantic \
            pydantic-settings \
            # pymssql # needs a ceremony to compile
            pyright \
            redis \
            requests \
            scipy \
            xwing \

    end
end
