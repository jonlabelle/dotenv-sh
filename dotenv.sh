#!/usr/bin/env bash

# Load the .env file or <arg> .env.arg
file=$([ -z "$1" ] && echo ".env" || echo ".env.$1")

if [ -f "$file" ]; then
    # -o allexport enables all following variable definitions to be exported
    set -o allexport

    # shellcheck disable=1090
    source "$file"

    # +o allexport disables this feature
    set +o allexport

    unset file
else
    echo "$file file not found." 1>&2
    exit 1
fi
