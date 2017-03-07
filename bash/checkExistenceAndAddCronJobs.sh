#!/bin/bash

np_dir=$(dirname `readlink -f "$0"`)

for cronjob in "0 * * * * $np_dir/routines/hourly.sh" \
		"0 19 * * * $np_dir/routines/daily.sh" \
		"0 0 1 * * $np_dir/routines/monthly.sh"; do

	if ! $(crontab -l | grep -q "^$cronjob\$"); then
		{ cat; echo "$cronjob"; } | crontab -
	fi
done
