#!/bin/sh
pd2_ca2main --help >/dev/null 2>&1 || exit 1
[ -n "$PRODART_DATABASE_PATH" ] || exit 1
