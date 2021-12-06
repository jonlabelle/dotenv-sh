#!/usr/bin/env bash

scriptname=$(basename "${0}")

# Load the .env file or <arg> .env.arg
envfile=$([ -z "$1" ] && echo ".env" || echo ".env.$1")

if [ -f "$envfile" ]; then
    # -o allexport enables all following variable definitions to be exported
    set -o allexport

    # shellcheck disable=1090
    source "$envfile"

    # +o allexport disables this feature
    set +o allexport

    unset envfile
else
    echo "$scriptname: $envfile: File not found" 1>&2
    unset envfile
    exit 1
fi
