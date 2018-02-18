#! /usr/bin/env sh

count=1
for arg in "$@"
do
  export LUA_RESTY_BUSTED_ARG_${count}="${arg}"
  count=$((count = count + 1))
done
resty -e 'local rb = require "resty.busted"; rb ()'
