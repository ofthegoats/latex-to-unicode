#!/usr/bin/env bash

set -e
cd "$(dirname $(echo "$0"))"
latex=$(rofi -dmenu)
unicode=$(echo "$latex" | ./convert.py)
echo -n "$unicode" | xclip
