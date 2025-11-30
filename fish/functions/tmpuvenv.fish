function tmpuvenv --description "Create a throwaway python playground"
	set --local venvdir "/tmp/.tmpvenv"

	if test -f "$venvdir/bin/activate.fish"
		source "$venvdir/bin/activate.fish"
		return
	end

	rm -rf "$venvdir"
	uv venv --seed --python 3.14 "$venvdir"

	CFLAGS="-I$(brew --prefix openssl)/include" \
	CPPFLAGS="-I$(brew --prefix openssl)/include" \
	LDFLAGS="-I$(brew --prefix openssl)/lib" \
	VIRTUAL_ENV="$venvdir" \
	uv pip install --no-binary=pymssql \
		boto3 \
		duckdb \
		fastavro \
		matplotlib \
		numpy \
		pandas \
		psycopg[binary] \
		pyarrow \
		pydantic \
		pydantic-settings \
		pymssql \
		pyright \
		redis \
		requests \
		scipy \
		xwing \
	;

	source "$venvdir/bin/activate.fish"
end
