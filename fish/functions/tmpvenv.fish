function tmpvenv --description "Create a throwaway python playground"
	set --local venvdir "/tmp/.tmpvenv"

	if test -f "$venvdir/bin/activate.fish"
		source "$venvdir/bin/activate.fish"
		return
	end

	rm -rf "$venvdir"
	python3.14 -m venv "$venvdir"

	"$venvdir/bin/pip" install --upgrade pip
	"$venvdir/bin/pip" install --verbose --no-cache-dir --no-binary=pymssql \
		boto3 \
		duckdb \
		fastavro \
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
	;

	source "$venvdir/bin/activate.fish"
end

