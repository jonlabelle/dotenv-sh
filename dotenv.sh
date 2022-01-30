#!/usr/bin/env bash

exit_code=0

# Load the .env file or <arg> .env.arg
envfile=$([ -z "$1" ] && echo ".env" || echo ".env.$1")

if [ -f "$envfile" ]; then
    # -o allexport enables all following variable definitions to be exported
    set -o allexport

    # shellcheck disable=1090
    source "$envfile"

    # +o allexport disables this feature
    set +o allexport
else
    echo "[dotenv] error : '${envfile}' file not found" 1>&2
    exit_code=1
fi

unset envfile

return $exit_code
