#!/usr/bin/env bash
mysql -p -e "SET GLOBAL max_connections = 9999;" ; service mysql restart
