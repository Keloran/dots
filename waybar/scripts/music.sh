#!/bin/bash
if pgrep -x "cider" > /dev/null
then
  echo true
else
  echo false
fi

