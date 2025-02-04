function tmpuvenv --description "Create a throwaway python playground"
    set --local venvdir "/tmp/.tmpvenv"

    if test -f "${venvdir}/bin/activate.fish"
        source "${venvdir}/bin/activate.fish"
        return
    end

    rm -rf "${venvdir}"
    uv venv --seed --python 3.13 "${venvdir}"
    
    VIRTUAL_ENV="${venvdir}" uv pip install \
        boto3 \
        duckdb \
        fastavro \
        ipython \
        matplotlib \
        numpy \
        pandas \
        psycopg[binary] \
        pyarrow \
        pydantic \
        pydantic-settings \
        pymssql
        pyright \
        redis \
        requests \
        scipy \
        xwing \


  source "${venvdir}/bin/activate.fish"
end
