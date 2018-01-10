#!/usr/bin/env bash
php -S 0.0.0.0:8999 -t /apps/adminer/ & python -mwebbrowser "http://localhost:8999"
