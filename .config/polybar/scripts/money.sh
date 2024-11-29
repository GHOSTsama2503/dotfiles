#!/usr/bin/env bash
tmp_file="/tmp/eltoque.com.html"

last_update_file="$tmp_file.lastupdate"
last_update=0

interval=3600

if test -f "$last_update_file"; then
	last_update=$(cat "$last_update_file")
fi

current_date=$(date +%s)
date_diff=$(("$current_date" - "$last_update"))

if [[ "$date_diff" -gt "$interval" ]]; then
	curl -sS https://eltoque.com > "$tmp_file"
	last_update=$(date +%s)

	echo -n "$last_update" > "$last_update_file"
fi

next_data=$(htmlq "#__NEXT_DATA__" --text --filename "$tmp_file")

echo "$next_data" | jq ".props.pageProps.money.data.api.statistics.$1.avg"
