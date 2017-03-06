#!/usr/bin/env bash

for i in `ps -eo pid,command | grep "NAME-HERE-OF-THE-EXECUTABLE" | grep -v grep | awk '{print $1}'`; do kill $i; done
