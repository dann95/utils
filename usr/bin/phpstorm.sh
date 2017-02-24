#!/usr/bin/env bash
if [ $# -eq 0 ]
  then
    /opt/phpstorm/bin/phpstorm.sh
else
    /opt/phpstorm/bin/phpstorm.sh "$1"
fi
