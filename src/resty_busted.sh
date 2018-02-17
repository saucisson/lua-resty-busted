#! /usr/bin/env sh

count=1
for arg in $*
do
  export ARG_${count}=${arg}
  count=$(expr ${count} + 1)
done
resty -e 'local rb = require "resty.busted"; rb ()'
