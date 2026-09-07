#!/usr/bin/env bash
# Pull (or refresh) the datum-context definitions beside this workspace.
set -e
cd "$(dirname "$0")"
if [ -d datum-context/.git ]; then (cd datum-context && git pull -q origin main && echo "datum-context updated"); else git clone -q https://github.com/DatumLabMHQ/datum-context && echo "datum-context cloned"; fi
[ -n "${DATUM_API_KEY:-}" ] && echo "DATUM_API_KEY is set" || echo "DATUM_API_KEY is not set: add 'export DATUM_API_KEY=...' to your shell profile (ask Olusegun for a key)"
