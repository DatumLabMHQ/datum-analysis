#!/usr/bin/env bash
# Pull (or refresh) the datum-context definitions beside this workspace. No keys needed: the platform
# door signs you in with GitHub the first time Claude uses it.
set -e
cd "$(dirname "$0")"
if [ -d datum-context/.git ]; then (cd datum-context && git pull -q origin main && echo "datum-context updated"); else git clone -q https://github.com/DatumLabMHQ/datum-context && echo "datum-context cloned"; fi
echo "ready: open Claude Code in this folder and ask it to run the datum health tool"
