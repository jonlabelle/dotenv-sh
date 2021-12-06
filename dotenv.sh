#!/usr/bin/env bash

# Load the .env file or <arg> .env.arg
ENVFILE=$([ -z "$1" ] && echo ".env" || echo ".env.$1")

if [ -f "$ENVFILE" ]; then
    # -o allexport enables all following variable definitions to be exported
    set -o allexport

    # shellcheck disable=1090
    source "$ENVFILE"

    # +o allexport disables this feature
    set +o allexport

    unset ENVFILE
else
    echo "$ENVFILE file not found." 1>&2
    exit 1
fi
