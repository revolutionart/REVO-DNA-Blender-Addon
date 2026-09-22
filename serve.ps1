$ErrorActionPreference = 'Stop'
py -3.11 -m mkdocs serve --livereload --dev-addr 127.0.0.1:8000 --config-file "$PSScriptRoot/mkdocs.yml"
exit $LASTEXITCODE
